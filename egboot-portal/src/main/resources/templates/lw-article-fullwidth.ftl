<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>枝丫</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <!--<link rel="icon" type="image/png" href="assets/i/favicon.png">-->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="枝丫"/>
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">
    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
</head>

<body id="blog-article-sidebar">
<!-- header start -->
<header class="am-g am-g-fixed blog-fixed blog-text-center blog-header">
    <div class="am-u-sm-8 am-u-sm-centered">
        <h2 class="am-hide-sm-only">枝丫</h2>
    </div>
</header>
<!-- header end -->
<hr>

<!-- nav start -->
<!-- nav end -->
<hr>
<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed blog-content">
    <div class="am-u-sm-12">
        <article class="am-article blog-article-p">
            <div class="am-article-hd">
                <h1 class="am-article-title blog-text-center">${articleDetail.articleName}</h1>
                <p class="am-article-meta blog-text-center">
                    <span><a href="#">${articleDetail.username}</a></span>-
                    <span><a href="#">${articleDetail.createAt}</a></span>
                </p>
            </div>
            <div class="am-article-bd">
                <img src="${articleDetail.coverPic}" alt="" class="blog-entry-img blog-article-margin">
                <p class="class="am-article-lead"">
                ${articleDetail.content}
                </p>
            </div>
        </article>

##        <div class="am-g blog-article-widget blog-article-margin">
##            <div class="am-u-lg-4 am-u-md-5 am-u-sm-7 am-u-sm-centered blog-text-center">
##                <span class="am-icon-tags"> &nbsp;</span><a href="#">标签</a> , <a href="#">TAG</a> , <a href="#">啦啦</a>
##                <hr>
##                <a href=""><span class="am-icon-qq am-icon-fw am-primary blog-icon"></span></a>
##                <a href=""><span class="am-icon-wechat am-icon-fw blog-icon"></span></a>
##                <a href=""><span class="am-icon-weibo am-icon-fw blog-icon"></span></a>
##            </div>
##        </div>

        <hr>
        <div class="am-g blog-author blog-article-margin">
            <div class="am-u-sm-3 am-u-md-3 am-u-lg-2">
                <img src="${userDetetail.portrait}" alt="" class="blog-author-img am-circle">
            </div>
            <div class="am-u-sm-9 am-u-md-9 am-u-lg-10">
                <h3><span>作者 &nbsp;: &nbsp;</span><span class="blog-color">${userDetetail.username}</span></h3>
##                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
        </div>
        <hr>
##        <ul class="am-pagination blog-article-margin">
##            <li class="am-pagination-prev"><a href="#" class="">&laquo; 一切的回顾</a></li>
##            <li class="am-pagination-next"><a href="">不远的未来 &raquo;</a></li>
##        </ul>

        <hr>

        <form class="am-form am-g">
            <h3 class="blog-comment">评论</h3>
            <fieldset>
                <div class="am-form-group am-u-sm-4 blog-clear-left">
                    <input type="text" class="" placeholder="名字">
                </div>
                <div class="am-form-group am-u-sm-4">
                    <input type="email" class="" placeholder="邮箱">
                </div>

                <div class="am-form-group am-u-sm-4 blog-clear-right">
                    <input type="password" class="" placeholder="网站">
                </div>

                <div class="am-form-group">
                    <textarea class="" rows="5" placeholder="一字千金"></textarea>
                </div>

                <p><button type="submit" class="am-btn am-btn-default">发表评论</button></p>
            </fieldset>
        </form>

        <hr>
      #foreach($item in $commentDetail)
        <div class="am-g blog-author blog-article-margin">
            <div class="am-u-sm-3 am-u-md-3 am-u-lg-2">
                <img src="${item.portrait}" alt="" class="blog-author-img am-circle">
            </div>
            <div class="am-u-sm-9 am-u-md-9 am-u-lg-10">
                <h3><span class="blog-color">${item.username}</span></h3>
                <p>${item.content}</p>
            </div>
        </div>
        #end

    </div>
</div>
<!-- content end -->
<footer class="blog-footer">
    <div class="am-g am-g-fixed blog-fixed am-u-sm-centered blog-footer-padding">
        <div class="am-u-sm-12 am-u-md-4- am-u-lg-4">
            <h3>关于<枝丫></h3>
            <p class="am-text-sm"><枝丫>包含着很多你喜欢的内容，我们希望每一个来到<枝丫>的朋友都会有所收获。</p>
        </div>
        <div class="am-u-sm-12 am-u-md-4- am-u-lg-4">
            </p>
            <p>我们追求卓越，然时间、经验、能力有限。<枝丫>有很多不足的地方，希望大家包容、不吝赐教，给我们提意见、建议。感谢你们！</p>
        </div>
        <div class="am-u-sm-12 am-u-md-4- am-u-lg-4">
        </div>
    </div>
    <div class="blog-text-center"><枝丫></div>
    <div class="blog-text-center">京ICP备19009766号</div>
</footer>


<!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="assets/js/amazeui.min.js"></script>
<!-- <script src="assets/js/app.js"></script> -->
</body>
</html>