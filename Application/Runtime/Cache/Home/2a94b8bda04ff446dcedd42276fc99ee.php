<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport"
          content="width=device-width, initial-scale=1">
    <title>Hello Amaze UI</title>

    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="icon" type="image/png" href="/Public/assets/i/favicon.png">

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="/Public/assets/i/app-icon72x72@2x.png">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="apple-touch-icon-precomposed" href="/Public/assets/i/app-icon72x72@2x.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="/Public/assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">

    <link rel="stylesheet" href="/Public/assets/css/amazeui.min.css">
    <link rel="stylesheet" href="/Public/assets/css/app.css">
    <style>
        .am-panel-bd {
            height: 300px;
            overflow: auto;
        }
    </style>
</head>
<body>
<div class="am-g">
    <div class="am-u-sm-12">
        <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
            <tr>
                <th class="table-id">ID</th>
                <th class="table-name">姓名</th>
                <th class="table-sex">性别</th>
                <th class="table-location">职位</th>
                <th class="table-age">年龄</th>
                <th class="table-time">入职时间</th>
            </tr>
            </thead>
            <tbody class="peoples">
                <?php if(is_array($persons)): $i = 0; $__LIST__ = $persons;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$person): $mod = ($i % 2 );++$i;?><tr>
                        <td><?php echo ($person["id"]); ?></td>
                        <td><?php echo ($person["name"]); ?></td>
                        <td><?php echo ($person["sex"]); ?></td>
                        <td><?php echo ($person["location"]); ?></td>
                        <td><?php echo ($person["age"]); ?></td>
                        <td><?php echo ($person["date"]); ?></td>
                    </tr><?php endforeach; endif; else: echo "" ;endif; ?>
            </tbody>
        </table>


        <button id="show" class="am-btn am-btn-primary">显示更多</button>

        <hr/>

    </div>

</div>

<script src="/Public/assets/js/jquery.min.js"></script>
<script src="/Public/assets/js/amazeui.min.js"></script>
<script>
    $(function () {
        var page = 1;
        $(document).on("click", "#show", function () {
            page++;
            console.log(page);
            $.post("<?php echo U('more');?>", {
                page: page
            }, function (data) {
                console.log(data.info);
                if (data.info == "") {
                    $("button").attr("disabled", true).text('没有更多了');
                }
                var peoples = data.info;
                //console.log(peoples);
                $.each(peoples, function (k, v) {
                    var html = '<tr class="people">' +
                            '<td>' + v.id + '</td>' +
                            '<td>' + v.name + '</td>' +
                            '<td>' + v.sex + '</td>' +
                            '<td>' + v.location + '</td>' +
                            '<td>' + v.age + '</td>' +
                            '<td>' + v.date + '</td>' +
                            '</tr>';
                    $("tbody").append(html);
                })
            }, "json")
        })
    })

</script>
</body>
</html>