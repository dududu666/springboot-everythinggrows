package cn.everythinggrows.boot.egboot.blog.controller;


import cn.everythinggrows.boot.egboot.blog.Utils.EgResult;
import cn.everythinggrows.boot.egboot.blog.aop.NeedSession;
import cn.everythinggrows.boot.egboot.blog.dao.IndexDao;
import cn.everythinggrows.boot.egboot.blog.dao.TypeArticleDao;
import cn.everythinggrows.boot.egboot.blog.dao.UidArticleDao;
import cn.everythinggrows.boot.egboot.blog.event.ArticleList;
import cn.everythinggrows.boot.egboot.blog.model.EgTypeArticle;
import cn.everythinggrows.boot.egboot.blog.model.egArticle;
import cn.everythinggrows.boot.egboot.blog.model.egUidArticle;
import cn.everythinggrows.boot.egboot.blog.service.IndexService;
import cn.everythinggrows.boot.egboot.blog.service.RedisClientTemplate;
import com.alibaba.fastjson.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
public class ArticleController {
    private static Logger log = LoggerFactory.getLogger(ArticleController.class);

    @Autowired
    private IndexDao indexDao;
    @Autowired
    private UidArticleDao uidArticleDao;
    @Autowired
    private TypeArticleDao typeArticleDao;
    @Autowired
    private RedisClientTemplate redisClientTemplate;
    @Autowired
    private ArticleList articleList;

    @Value("${blog_coverPic}")
    String blog_coverPic;


    @RequestMapping(value = "/blog/article/insert",method = RequestMethod.POST)
    @NeedSession
    public EgResult InsertArticle(@RequestParam(value = "articleName",defaultValue = "") String articleName,
                                  @RequestParam(value = "content",defaultValue = "") String content,
                                  @RequestParam(value = "type",defaultValue = "1") int type,
                                  @RequestParam(value = "title",defaultValue = "") String title,
                                  @RequestHeader(value = "x-eg-session") String session){
        long uid = getUid(session);
        String coverPic = getRandomCoverPic();
        egArticle egArticle = new egArticle();
        long aid = redisClientTemplate.aidGeneration();
        Calendar calendar=Calendar.getInstance();
        int month=calendar.get(Calendar.MONTH)+1;
        int year = calendar.get(Calendar.YEAR);
        int day = calendar.get(Calendar.DAY_OF_MONTH);
        String today = String.valueOf(year) + String.valueOf(month) + String.valueOf(day);
        int createAt = Integer.parseInt(today);
        egArticle.setId(aid);
        egArticle.setArticleName(articleName);
        egArticle.setUid(uid);
        egArticle.setContent(content);
        egArticle.setCoverPic(coverPic);
        egArticle.setType(type);
        egArticle.setTitle(title);
        egArticle.setCreateAt(createAt);
        int i = indexDao.insertArticle(egArticle);

        egUidArticle egUidArticle = new egUidArticle();
        egUidArticle.setAid(aid);
        egUidArticle.setArticleName(articleName);
        egUidArticle.setCoverPic(coverPic);
        egUidArticle.setUid(uid);
        egUidArticle.setType(type);
        egUidArticle.setTitle(title);
        egUidArticle.setCreateAt(createAt);
        uidArticleDao.insertUidArticle(egUidArticle);

        EgTypeArticle egTypeArticle = new EgTypeArticle();
        egTypeArticle.setType(type);
        egTypeArticle.setArticleName(articleName);
        egTypeArticle.setCoverPic(coverPic);
        egTypeArticle.setAid(aid);
        egTypeArticle.setUid(uid);
        egTypeArticle.setTitle(title);
        typeArticleDao.insertUidArticle(egTypeArticle);

        //将文章id插入redis
        articleList.insertArtilceListRedis(String.valueOf(aid));
        redisClientTemplate.delRedisByte(IndexService.INDEX_ARTICLE_CACHE.getBytes());
        redisClientTemplate.delRedisByte(IndexService.TYPE_ARTICLE_CACHE.getBytes());
        return EgResult.ok();
    }

    @RequestMapping(value = "/blog/article/get/{aid}")
    public EgResult getArticle(@PathVariable(value = "aid") long aid){
        egArticle article = indexDao.getArtcleOne(aid);
        String coverdns = blog_coverPic + article.getCoverPic();
        article.setCoverPic(coverdns);
        Map<String,Object> data = new HashMap<>();
        data.put("article",article);
        return EgResult.ok(data);
    }


    @RequestMapping(value = "/blog/article/delete/{aid}")
    @NeedSession
    public EgResult deleteArticle(@PathVariable(value = "aid") long aid){
       int i = indexDao.deleteArticle(aid);
       if(i>0){
           articleList.deleteArticle(aid);
           redisClientTemplate.delRedisByte(IndexService.INDEX_ARTICLE_CACHE.getBytes());
           redisClientTemplate.delRedisByte(IndexService.TYPE_ARTICLE_CACHE.getBytes());
           return EgResult.ok();
       }else{
           return EgResult.systemError();
       }

    }

    public String getRandomCoverPic(){
        List<String> list = JSONObject.parseArray(blog_coverPic, String.class);
        int random = new Random().nextInt(list.size()-1);
        String coverPic = list.get(random);
        return coverPic;
    }

    public long getUid(String session){
        if(session == null || session.length() == 0){
            return 0;
        }
        String[] line = session.split(";");
        long uid = Long.parseLong(line[0]);
        return uid;
    }
}
