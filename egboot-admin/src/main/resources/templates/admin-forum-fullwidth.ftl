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
    <link rel="icon" sizes="192x192" href="http://192.168.0.158:9900/static/assets/i/favicon.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="枝丫"/>
    <link rel="apple-touch-icon-precomposed" href="http://192.168.0.158:9900/static/assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileImage" content="http://192.168.0.158:9900/static/assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">
    <link rel="stylesheet" href="http://192.168.0.158:9900/static/assets/css/amazeui.min.css">
    <link rel="stylesheet" href="http://192.168.0.158:9900/static/assets/css/app.css">
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

<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed blog-content">
    <div class="am-u-sm-12">
        <article class="am-article blog-article-p">
            <div class="am-article-hd">
                <h1 class="am-article-title blog-text-center">${adminarticleDetail.articleName}</h1>
                <br>
                <h2><a href="/admin/article/delete/${adminarticleDetail.id}">删除</h2>
                <p class="am-article-meta blog-text-center">
                    <span><a href="#">${adminuser.username}</a></span>-
                    <span><a href="#">${adminarticleDetail.createAt}</a></span>
                </p>
            </div>
            <div class="am-article-bd">
                <img src="${adminarticleDetail.coverPic}" alt="" class="blog-entry-img blog-article-margin">
                <p class="class="am-article-lead"">
                ${adminarticleDetail.content}
                </p>
            </div>
        </article>


        <hr>
        <div class="am-g blog-author blog-article-margin">
            <div class="am-u-sm-3 am-u-md-3 am-u-lg-2">
                <img src="${adminuser.portrait}" alt="" class="blog-author-img am-circle">
            </div>
            <div class="am-u-sm-9 am-u-md-9 am-u-lg-10">
                <h3><span>作者 &nbsp;: &nbsp;</span><span class="blog-color">${adminuser.username}</span></h3>
            </div>
        </div>
        <hr>

      <#list admincommentDetail as item>
        <div class="am-g blog-author blog-article-margin">
            <div class="am-u-sm-3 am-u-md-3 am-u-lg-2">
                <img src="${item.portrait}" alt="" class="blog-author-img am-circle">
            </div>
            <div class="am-u-sm-9 am-u-md-9 am-u-lg-10">
                <h3><span class="blog-color">${item.username}</span></h3>
                <p>${item.content}</p>
                <a href="/admin/article/commit/delete?cid=${item.cid}&aid=${item.aid}">删除</a>
            </div>
        </div>
      </#list>

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
<script src="http://192.168.0.158:9900/static/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="http://192.168.0.158:9900/static/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="http://192.168.0.158:9900/static/assets/js/amazeui.min.js"></script>
<!-- <script src="assets/js/app.js"></script> -->
</body>
</html>