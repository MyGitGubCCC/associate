<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>联想词表</title>
    <#--引入公共的js与css-->
    <script type="text/javascript" src="js/common/commonJs.js"></script>
    <script type="text/javascript" src="js/common/commonCss.js"></script>
    <#--引入自定义的js-->
    <script type="text/javascript" src="js/associate.js"></script>

</head>
<body>
    <div class="easyui-layout" data-options="fit:true">
        <div data-options="region:'west'" style="width:400px;padding:10px">
            <div style="margin:20px 0;"></div>
            <#--搜索栏-->
            <div id="tb" style="padding:2px 5px;">
                联想词: <input id="word-textbox" class="easyui-textbox" style="width:150px"><br/>
                词&nbsp;&ensp;性: <input id="pos-combobox" class="easyui-combobox" name="pos-combobox" style="width:150px;" data-options="
                    url:'/associate/pos/posList',
                    method:'get',
                    valueField: 'posName',
                    textField: 'posName',
                    limitToList:true
                    ">
                <a id="search-btn" href="#" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
            </div>
            <div style="margin:15px 0;"></div>
            <#--datagrid数据栏-->
            <table id="dg" title="单击联想词获取联想场" style="width:320px;height:453px"></table>

        </div>
        <div data-options="region:'center'" style="padding:10px">
            <div style="margin:10px 0;"></div>
            <#--搜索栏-->
            <div id="tb2" style="padding:2px 5px;">
                反应词: <input id="searchReactionWord" class="easyui-textbox" style="width:150px">
                词&nbsp;&ensp;性: <input id="searchReactionPos" class="easyui-combobox" name="searchReactionPos" style="width:150px;" data-options="
                    url:'/associate/pos/posList',
                    method:'get',
                    valueField: 'posName',
                    textField: 'posName',
                    limitToList:true
                    ">
                学&nbsp;&ensp;校: <input id="searchSchoolName" class="easyui-textbox" style="width:150px"><br/>
                学&nbsp;&ensp;科: <input id="searchProfession" class="easyui-combotree" name="searchProfession" style="width:150px;" data-options="
                    url:'/associate/profession/treeProfession',
                    method:'get'
                    ">
                职&nbsp;&ensp;业: <input id="searchJob" class="easyui-combobox" name="searchJob" style="width:150px;" data-options="
                    url:'/associate/job/findAll',
                    method:'get',
                    valueField: 'jobId',
                    textField: 'jobName',
                    limitToList:true
                    ">
                年&nbsp;&ensp;级: <input id="searchGrade" class="easyui-combobox" name="searchGrade" style="width:150px;" data-options="
                    url:'/associate/grade/findAll',
                    method:'get',
                    valueField: 'gradeId',
                    textField: 'gradeName',
                    limitToList:true
                    "><br/>
                年龄从:  <input id="searchAge1" class="easyui-numberbox" style="width:60px">
                到<input id="searchAge2" class="easyui-numberbox" style="width:60px">岁
                性&nbsp;&ensp;别: <select id="searchSex" class="easyui-combobox" name="searchSex" style="width:150px;">
                            <option value="-1">全部</option>
                            <option value="0">女</option>
                            <option value="1">男</option>
                        </select>
                民&nbsp;&ensp;族: <input id="searchNation" class="easyui-combobox" name="searchNation" style="width:150px;" data-options="
                    url:'/associate/nation/findAll',
                    method:'get',
                    valueField: 'nationId',
                    textField: 'nationName',
                    limitToList:true
                    "><br/>
                生源地: <input id="searchOriginArea" class="easyui-combotree" name="searchOriginArea" style="width:150px;" data-options="
                    url:'/associate/area/findTreeArea',
                    method:'get',
                    valueField: 'id',
                    textField: 'text',
                    ">
                现居地: <input id="searchPresentArea" class="easyui-combotree" name="searchPresentArea" style="width:150px;" data-options="
                    url:'/associate/area/findTreeArea',
                    method:'get',
                    valueField: 'id',
                    textField: 'text',
                    ">
                地&nbsp;&ensp;区: <input id="searchLocation" class="easyui-combobox" name="searchLocation" style="width:150px;" data-options="
                    url:'/associate/location/findAll',
                    method:'get',
                    valueField: 'locationId',
                    textField: 'locationName',
                    limitToList:true
                    ">
                <a id="search-btn2" href="#" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
            </div>
            <H2 id="lb" style="color: #00bbee">暂无联想词</H2>
            <#--联想场datagrid-->
            <table id="dg2" title="联想场，点击蓝色背景反应词可继续获取联想词" style="width:532px;height:453px"></table>
        </div>
    </div>
</body>
</html>