<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>搜索结果</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="/static/assets/i/favicon.png">
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="/static/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="apple-touch-icon-precomposed" href="/static/assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileImage" content="/static/assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">
    <link rel="stylesheet" href="/static/assets/css/amazeui.min.css">
    <link rel="stylesheet" href="/static/assets/css/app.css">
</head>

<body id="blog-article-sidebar">
<!-- header start -->
<header class="am-g am-g-fixed blog-fixed blog-text-center blog-header">
    <div class="am-u-sm-8 am-u-sm-centered">
        <img width="200" src="/static/assets/i/logo.jpg"/>
        <h2 class="am-hide-sm-only">枝丫</h2>
    </div>
</header>
<hr>
<!-- nav start -->
<nav class="am-g am-g-fixed blog-fixed blog-nav">
    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only blog-button"
            data-am-collapse="{target: '#blog-collapse'}"><span class="am-sr-only">导航切换</span> <span
            class="am-icon-bars"></span></button>

</nav>
<hr>

<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed blog-content">
    <div class="am-u-sm-12">
        <h1 class="blog-text-center">-- 枝丫论坛 --</h1>
         <#list admintopicIndices as topic>
        <div class="timeline-year">
            <ul>
                <hr>
                <li>
                    <span class="am-u-sm-4 am-u-md-2 timeline-span">${topic.createAt}</span>
                    <span class="am-u-sm-8 am-u-md-6"><a href="">${topic.content}</a></span>
                    <br>
                    <h4><a href="/admin/forum/delete/${topic.tid}">删除</a></h4>
                </li>
            </ul>
            <br>
        </div>
         </#list>
        <hr>
        <#list adminpageList as page>
        <ul class="am-pagination">
            <li class="am-pagination-prev"><a href="/admin/index/forum?perPage=${page}">${page}</a></li>
        </ul>
        </#list>
        <h4><a href="/admin-index.html">返回首页</a></h4>

    </div>
</div>
<!-- content end -->

<footer class="blog-footer">
    <div class="am-g am-g-fixed blog-fixed am-u-sm-centered blog-footer-padding">
        <div class="am-u-sm-12 am-u-md-4- am-u-lg-4">
            <h3>关于
                <枝丫>
            </h3>
            <p class="am-text-sm">
                <枝丫>包含着很多你喜欢的内容，我们希望每一个来到
                    <枝丫>的朋友都会有所收获。
            </p>
        </div>
        <div class="am-u-sm-12 am-u-md-4- am-u-lg-4">
            </p>
            <p>我们追求卓越，然时间、经验、能力有限。
                <枝丫>有很多不足的地方，希望大家包容、不吝赐教，给我们提意见、建议。感谢你们！
            </p>
        </div>
        <div class="am-u-sm-12 am-u-md-4- am-u-lg-4">

        </div>
    </div>
    <div class="blog-text-center">
        <枝丫>
    </div>
    <div class="blog-text-center">京ICP备19009766号</div>
</footer>


<!--[if (gte IE 9)|!(IE)]><!-->
<script src="/staticassets/js/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="/static/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="/static/assets/js/amazeui.min.js"></script>
<!-- <script src="assets/js/app.js"></script> -->
</body>
</html>