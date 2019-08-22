<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>哈师大联想数据库</title>
    <#--引入公共的js与css-->
    <script type="text/javascript" src="js/common/commonJs.js"></script>
    <script type="text/javascript" src="js/common/commonCss.js"></script>
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.7.0/demo/sidemenu/sidemenu_style.css">
    <script type="text/javascript" src="js/index.js"></script>
</head>
<body>
<#--<div style="margin:20px 0;"></div>-->
<div class="easyui-layout" style="width: 100%;height: 800px;">
    <#--上面-->
    <div data-options="region:'north'" style="height:80px; background-color: #4b72a4">
        <h2 color="blue">哈尔滨师范大学联想数据库</h2>
    </div>
    <#--左面-->
    <div data-options="region:'west',split:true" title="菜单" style="width:207px;background-color: #2c3b41">
        <div id="sm" class="easyui-sidemenu" data-options="data: data"></div>
    </div>
    <#--中间-->
    <div data-options="region:'center',title:'操作页面',iconCls:'icon-ok'">
        <div id="tabs" class="easyui-tabs" data-options="fit:true,border:false,plain:true">
            <div title="主页" data-options="href:'jquery-easyui-1.7.0/demo/layout/_content.html'"
                 style="padding:10px"></div>

        </div>
    </div>
</div>
</body>
</html>