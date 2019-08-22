<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>联想词表</title>
    <#--引入公共的js与css-->
    <script type="text/javascript" src="js/common/commonJs.js"></script>
    <script type="text/javascript" src="js/common/commonCss.js"></script>
    <#--引入自定义的js-->
    <script type="text/javascript" src="js/associateWord.js"></script>

</head>
<body>
<div style="margin:20px 0;"></div>
<#--搜索栏-->
<div id="tb" style="padding:2px 5px;">
    联想词: <input id="word-textbox" class="easyui-textbox" style="width:150px">
    词性: <input id="pos-combobox" class="easyui-combobox" name="pos-combobox" style="width:150px;" data-options="
                    url:'/associate/pos/posList',
                    method:'get',
                    valueField: 'posId',
                    textField: 'posName',
                    limitToList:true
                    ">
    <a id="search-btn" href="#" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
</div>
<#--datagrid数据栏-->
<table id="dg" title="联想词表" style="width:700px;height:453px"></table>

<div id="dlg" class="easyui-dialog" style="width: 340px; height: auto; padding: 10px 20px"
     data-options="closed:true,buttons:'#dlg-buttons'">
    <form id="fm" method="post">
        <table id="fm-table" style="width:auto;height:200px">
            <tr>
                <td >联想词：</td>
                <td>
                    <input id="word" class="easyui-textbox"  name="word" required="required" value=""/>
                </td>
            </tr>
            <tr>
                <td >词性：</td>
                <td>
                    <input id="posId" class="easyui-combobox" name="posId" required="required" data-options="
                    url:'/associate/pos/posList',
                    method:'get',
                    valueField: 'posId',
                    textField: 'posName',
                    limitToList:true
                    ">
                </td>
            </tr>
        </table>
    </form>
</div>
<div id="dlg-buttons">
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="addWord()">添加</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" onclick="closeDialog()">关闭</a>
</div>
</body>
</html>