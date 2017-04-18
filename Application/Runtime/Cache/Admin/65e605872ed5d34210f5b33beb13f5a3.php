<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html class="no-js fixed-layout">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="/Public/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="/Public/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="/Public/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="/Public/assets/css/admin.css">
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
    以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        <strong>Amaze UI</strong> <small>后台管理模板</small>
    </div>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
            <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
            <li class="am-dropdown" data-am-dropdown>
                <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
                    <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
                </a>
                <ul class="am-dropdown-content">
                    <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
                    <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
                    <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
                </ul>
            </li>
            <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
        </ul>
    </div>
</header>

<div class="am-cf admin-main">
    <!-- sidebar start -->
    <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
        <div class="am-offcanvas-bar admin-offcanvas-bar">
            <ul class="am-list admin-sidebar-list">
                <li><a href="/admin"><span class="am-icon-home"></span> 首页</a></li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-file"></span> 部门人事管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
                        <li><a href="<?php echo U('Depart/index');?>" class="am-cf"><span class="am-icon-check"></span> 部门管理<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
                        <li><a href="<?php echo U('User/index');?>"><span class="am-icon-puzzle-piece"></span> 人事管理</a></li>
                        <li><a href="<?php echo U('File/index');?>"><span class="am-icon-th"></span> 文件上传<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
                        <li><a href=""><span class="am-icon-calendar"></span> 系统日志</a></li>
                        <li><a href=""><span class="am-icon-bug"></span> 404</a></li>
                    </ul>
                </li>
                <li><a href=""><span class="am-icon-table"></span> 表格</a></li>
                <li><a href=""><span class="am-icon-pencil-square-o"></span> 表单</a></li>
                <li><a href="#"><span class="am-icon-sign-out"></span> 注销</a></li>
            </ul>

            <div class="am-panel am-panel-default admin-sidebar-panel">
                <div class="am-panel-bd">
                    <p><span class="am-icon-bookmark"></span> 公告</p>
                    <p>时光静好，与君语；细水流年，与君同。—— Amaze UI</p>
                </div>
            </div>

            <div class="am-panel am-panel-default admin-sidebar-panel">
                <div class="am-panel-bd">
                    <p><span class="am-icon-tag"></span> wiki</p>
                    <p>Welcome to the Amaze UI wiki!</p>
                </div>
            </div>
        </div>
    </div>
    <!-- sidebar end -->

    <!-- content start -->
    <div class="admin-content">

        
    <div class="admin-content-body">
        <div class="am-cf am-padding am-padding-bottom-0">
            <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">员工信息详情</strong> /
                <small>Person Detail News</small>
            </div>
        </div>

        <hr>

        <div class="am-g">
            <div class="am-u-sm-12 am-u-md-6">
                <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                        <a href="<?php echo U('User/add');?>" class="am-btn am-btn-default"><span
                                class="am-icon-plus"></span> 新增
                        </a>
                        <a href="<?php echo U('User/export');?>" class="am-btn am-btn-default"><span
                                class="am-icon-plus"></span> 导出excel
                        </a>

                        <a href="<?php echo U('User/see');?>" class="am-btn am-btn-default"><span
                                class="am-icon-plus"></span> 预览
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="am-g">
            <div class="am-u-sm-12 am-u-md-12">
                <form class="am-form-inline" role="form"  method="get">
                    <div class="am-form-group">
                        <input type="text" name="username" class="am-form-field am-input-sm"  value="">
                    </div>
                    <button type="submit" class="am-btn am-btn-default am-btn-sm">查询</button>
                </form>

            </div>
        </div>



        <div class="am-g">
            <div class="am-u-sm-12">
                <form class="am-form">
                    <table class="am-table am-table-striped am-table-hover table-main">
                        <thead>
                        <tr>
                            <th class="table-id">编号</th>
                            <th class="table-name">姓名</th>
                            <th class="table-depart">所属部门</th>
                            <th class="table-sex">性别</th>
                            <th class="table-age">年龄</th>
                            <th class="table-time">入职时间</th>
                            <th class="table-locatiion">职务</th>
                            <th class="table-do">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php if(is_array($users)): $i = 0; $__LIST__ = $users;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$user): $mod = ($i % 2 );++$i;?><tr data-id="<?php echo ($user["id"]); ?>" id="<?php echo ($user["id"]); ?>" class="parent">
                                <td class="table-id"><?php echo ($user["id"]); ?></td>
                                <td class="table-name"><?php echo ($user["username"]); ?></td>
                                <td class="table-depart"><?php echo ($user["departs"]); ?></td>
                                <td class="table-sex"><?php echo ($user["sex"]); ?></td>
                                <td class="table-age"><?php echo ($user["age"]); ?></td>
                                <td class="table-time"><?php echo ($user["time"]); ?></td>
                                <td class="table-location"><?php echo ($user["location"]); ?></td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <a href="<?php echo U('User/edit',array('id'=>$user['id']));?>"
                                               class="am-btn am-btn-default am-btn-xs am-text-secondary"><span
                                                    class="am-icon-pencil-square-o"></span> 编辑
                                            </a>
                                            <a href="<?php echo U('User/delete',array('id'=>$user['id']));?>" data-method="delete"
                                               data-token="{{csrf_token()}}" data-confirm="确定要删除吗?"
                                               class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
                                                <span class="am-icon-trash-o"></span> 删除
                                            </a>
                                        </div>
                                    </div>
                                </td>
                            </tr><?php endforeach; endif; else: echo "" ;endif; ?>


                        </tbody>
                    </table>
                    <div class="am-cf">
                        <ul class="am-pagination am-pagination-centered">
                            <li ><?php echo ($page); ?></li>
                        </ul>
                        <div class="am-fr">
                        </div>
                    </div>
                    <hr/>

                </form>
            </div>

        </div>
    </div>



        <footer class="admin-content-footer">
            <hr>
            <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
        </footer>
    </div>
    <!-- content end -->

</div>

<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="/Public/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="/Public/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="/Public/assets/js/amazeui.min.js"></script>
<script src="/Public/assets/js/app.js"></script>
<script src="/Public/assets/js/jquery.validate.min.js"></script>
<script src="/Public/assets/js/jquery.validate.js"></script>
<script src="/Public/assets/js/messages_zh.min.js"></script>
</body>
</html>