<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--导入simditor的样式-->
    <link rel="stylesheet" href="/static/simditor/styles/simditor.css" type="text/css">
    <!-- 导入 simditor 的 JavaScript 库 -->
    <script type="text/javascript" src="/static/simditor/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="/static/simditor/scripts/module.min.js"></script>
    <script type="text/javascript" src="/static/simditor/scripts/hotkeys.min.js"></script>
    <script type="text/javascript" src="/static/simditor/scripts/uploader.min.js"></script>
    <script type="text/javascript" src="/static/simditor/scripts/simditor.min.js"></script>

    <!-- 导入我们自己的通用样式库 -->
    <link rel="stylesheet" href="/static/styles/generic.css">
    <!-- 导入 Font Awesome 样式库-->
    <link rel="stylesheet" href="/static/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="/static/styles/header.css">
    <link rel="stylesheet" href="/static/styles/publish.css">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>枝丫</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <!--<link rel="icon" type="image/png" href="assets/i/favicon.png">-->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="/static/assets/i/favicon.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="枝丫"/>
    <link rel="apple-touch-icon-precomposed" href="/static/assets/i/favicon.png">
    <meta name="msapplication-TileImage" content="/static/assets/i/favicon.png">
    <meta name="msapplication-TileColor" content="#0e90d2">
    <link rel="stylesheet" href="/static/assets/css/amazeui.min.css">
    <link rel="stylesheet" href="/static/assets/css/app.css">

</head>

<body>

<header class="am-g am-g-fixed blog-fixed blog-text-center blog-header">
    <div class="am-u-sm-8 am-u-sm-centered">
        <img width="200" src="/static/assets/i/logo.jpg"/>
        <h2 class="am-hide-sm-only">枝丫</h2>
    </div>
</header>

<div class="publish-container">
    <h2>发表文章</h2>
    <div class="publish">

        <div class="am-g am-g-fixed blog-fixed blog-content">
            <form id="imageUploadForm" action="/fileUpload" method="post" enctype="multipart/form-data">
                <h2>图片库</h2>
                <br/>
                <hr>
                <input type="file" name="file" id="upload_pic"/>
                <button type="submit" onclick="upload()">上传</button>
            </form>
            <figure data-am-widget="figure" class="am am-figure am-figure-default "   data-am-figure="{  pureview: 'true' }">
            <div id="container">
          <#list imageList as image>
             <img  src="${image.picUrl}"><h5>地址：${image.picUrl}</h5>
             <a href="/upload/delete?picUrl=${image.picUrl}">删除</a>
          </#list>
            </div>
            </figure>
        </div>

        <form action="/blog/article/publish.html" method="post">
            <div class="title-container">
                <input type="text" name="articleName" placeholder="请输入文章的题目">
            </div>
            <div class="title-container">
                <input type="text" name="title" placeholder="请输入文章的标题"><br/>
            </div>
            <div class="title-container">
                <input type="text" name="coverPic" placeholder="选择封面图片"><br/>
            </div>
            <div>
                请选择文章类型？
                <label><input name="type" type="radio" value="1"/>摄影 </label>
                <label><input name="type" type="radio" value="2"/>互联网 </label>
                <label><input name="type" type="radio" value="3"/>影音 </label>
                <label><input name="type" type="radio" value="4"/>感悟 </label>
            </div>
            <div class="content-container">
                <textarea name="content" id="content"></textarea>
                <script type="text/javascript">
                    var editor = new Simditor({
                        textarea: $('#content'),
                        placeholder: '请输入你的文章正文...',
                        toolbar: true
                    });
                </script>
            </div>
            <div class="x-row">
                <i class="x-cell-9"></i>
                <i class="x-cell-2">
                    <input type="submit" value="发表">
                </i>
                <i class="x-cell-1"></i>
            </div>
        </form>
    </div>


</div>
<script type="text/javascript">
    $(document).ready(function(){
        $("#upload_pic").on("change", upload );
    })
    function upload(){

        var self = this;
        $.ajax({
            url: "/fileUpload",
            type: "post",
            dataType: "json",
            cache: false,
            data: new FormData($("#imageUploadForm")[0]),
            processData: false,// 不处理数据
            contentType: false, // 不设置内容类型
            success: function(data){
               alert("上传成功")
                /*
                图片显示路径出错，没解决：反斜杠转义
                $(self).parent().css({
                     "background-image": "url("+data.path+")"
                 })*/;
            }
        })
    }
</script>
</body>

</html>