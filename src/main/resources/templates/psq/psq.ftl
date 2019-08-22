<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>调查问卷</title>
    <#--引入公共的js与css-->
    <script type="text/javascript" src="js/common/commonJs.js"></script>
    <script type="text/javascript" src="js/common/commonCss.js"></script>
    <#--引入自定义的js-->
    <script type="text/javascript" src="js/psq.js"></script>

</head>
<body>
<div style="margin:20px 0;"></div>
<#--搜索栏-->
<div id="tb" style="padding:2px 5px;">
    问卷名称: <input id="psqNameSearch" class="easyui-textbox" style="width:150px">
    问卷类型: <input id="psqtypeSearch" class="easyui-combobox" name="psqtypeSearch" style="width:150px;" data-options="
                    url:'/associate/psqtype/psqtypeList',
                    method:'get',
                    valueField: 'psqtypeId',
                    textField: 'psqtypeName',
                    limitToList:true
                    ">
    问卷语言: <input id="languageSearch" class="easyui-combobox" name="languageSearch" style="width:150px;" data-options="
                    url:'/associate/language/languageList',
                    method:'get',
                    valueField: 'languageId',
                    textField: 'languageName',
                    limitToList:true
                    ">
    问卷状态: <select id="psqStateSearch" class="easyui-combobox" name="psqStateSearch" style="width:150px;">
                 <option value="-1">全部</option>
                 <option value="0">未发布</option>
                <option value="1">已发布</option>
            </select>

    <a id="search-btn" href="#" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
</div>
<#--datagrid数据栏-->
<table id="dg" title="问卷表" style="width:1000px;height:452px"></table>

<#--添加问卷dlg-->
<div id="dlg" class="easyui-dialog" style="width: 340px; height: auto; padding: 10px 20px"
     data-options="closed:true,buttons:'#dlg-buttons'">
    <form id="fm" method="post">
        <table id="fm-table" style="width:auto;height:200px">
            <tr>
                <td >问卷名称：</td>
                <td>
                    <input id="psqName" class="easyui-textbox"  name="psqName" style="width:auto;" data-options="
                    required: true,
                    prompt:'请输入问卷名'
                    "/>
                </td>
            </tr>
            <tr>
                <td >问卷题目：</td>
                <td>
                    <input id="psqContent" class="easyui-tagbox" name="psqContent" style="width:auto;" data-options="
                    url:'/associate/associateWord/allList',
                    method:'get',
                    valueField:'associateWord',
                    textField:'associateWord',
                    required: false,
                    prompt:'请选择题目',
                    hasDownArrow: true,
                    prompt: '选择联想词',
                    limitToList:true,
                    ">
                </td>
            </tr>
            <tr>
                <td >反应词数量：</td>
                <td>
                    <select class="easyui-combobox" name="reactionNumber" style="width:173px;">
                        <option value="1" selected>1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td >问卷类型：</td>
                <td>
                    <input id="psqtypeId" class="easyui-combobox" name="psqtypeId" style="width:auto;" data-options="
                    url:'/associate/psqtype/psqtypeList',
                    method:'get',
                    valueField: 'psqtypeId',
                    textField: 'psqtypeName',
                    limitToList:true,
                    required: true,
                    prompt:'请选择类型'
                    ">
                </td>
            </tr>
            <tr>
                <td >问卷语言：</td>
                <td>
                    <input id="languageId" class="easyui-combobox" name="languageId" style="width:auto;" data-options="
                    url:'/associate/language/languageList',
                    method:'get',
                    valueField: 'languageId',
                    textField: 'languageName',
                    limitToList:true,
                    required: true,
                    prompt:'请选择语言'
                    ">
                </td>
            </tr>
            <tr>
                <td>状态开关:</td>
                <td><input id="psqState" name="psqState" class="easyui-switchbutton"
                             data-options="onText:'发布',offText:'不发布',checked:true,value:1"></td>
            </tr>
        </table>
    </form>
</div>
<div id="dlg-buttons">
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="addWord()">添加</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" onclick="closeDialog()">关闭</a>
</div>
<#--问卷题目详情dlg-->
<div id="dlg2" class="easyui-dialog" title="Basic Dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px;height:400px;">
    <div style="margin:20px 0"></div>
    <div id="contentList" class="easyui-datalist" title="所有题目" style="width:100%;height:auto"></div>
    <div style="margin:20px 0"></div>
</div>

</body>
</html>