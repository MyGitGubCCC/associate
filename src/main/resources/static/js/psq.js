/*分页组件操作*/
$(function(){

    $('#dg').datagrid({
        iconCls : 'icon-man',
        rownumbers: true,
        singleSelect: false,
        pagination: true, //显示分页插件
        url: '/associate/psq/psqPageList',
        method: 'get',
        toolbar: toolbar,
        fitColumns : false,
        pageSize:10,
        pageList:[10,20,30,40],
        loadMsg:'正在加载问卷表信息...',
        emptyMsg:'没有检索到问卷表',
        resizable: true,
        striped: true, //斑马线效果
        columns: [[
            {field:'ck',checkbox: true,width: 20},
            {field:'psqId',hidden: true,title:'ID',width: 100},
            {field:'psqName',title:'问卷名', halign:'center',width:200,align:'left'},
            {field:'psqtypeName',title:'问卷类型', halign:'center',align:'center',width:180},
            {field:'languageName',title:'问卷语言', halign:'center',align:'center',width:180},
            {field:'releaseTime',title:'创建时间', halign:'center',width:190,align:'center',
                formatter:function getdate(val,row,index){
                    // var time = new Date(val);
                    // var date=time.getFullYear()+'-'+(time.getMonth()+1)+'-'+time.getDate() +' '+ time.getHours();
                    // return date;
                    //时区不对，这里对字符串进行操作下,截取前面年月日时分秒时间，2019-08-17 20:14:59，共19位
                    var time = val;
                    time = time.replace("T", " ");
                    time =time.substring(0, 19);
                    return time;
                }},
            {field:'psqState',title:'问卷状态', halign:'center',width:190,align:'center'}
        ]]
    });
    var pager = $('#dg').datagrid().datagrid('getPager');    // get the pager of datagrid
    pager.pagination({
        beforePageText: '第',
        afterPageText: '页，共{pages}页',
        displayMsg: '共{total}条数据, 本页从{from}到{to}条'
    })

    /*点击查询*/
    $('#search-btn').bind('click', function(){
        //var sno = $("input[name='sno']").val();
        var psqNameSearch = $('#psqNameSearch').val();
        var psqtypeSearch = $('#psqtypeSearch').val();
        var languageSearch = $('#languageSearch').val();
        var psqStateSearch = $('#psqStateSearch').val();
        $('#dg').datagrid("load", {"psqName":psqNameSearch, "psqtypeId":psqtypeSearch,
            "languageId": languageSearch, "psqState":psqStateSearch});
    });

});

/*弹窗关闭按钮*/
function closeDialog() {
    $('#dlg').dialog('close');
}

/*弹窗添加按钮*/
function addWord() {
    $.messager.confirm('提示消息', '确定提交?', function(r){
        if (r){
            $.messager.progress();	// display the progress bar
            $('#fm').form('submit', {
                //加了个?inorout=1,因为用的是同一个方法addAccessForGoodsOut，但是添加的是带入的
                url: "/associate/psq/addPsq",
                onSubmit: function(){
                    var isValid = $(this).form('validate');
                    if (!isValid){
                        $.messager.progress('close');	// hide progress bar while the form is invalid
                    }
                    return isValid;	// return false will stop the form submission
                },
                success:function (data) {
                    var data = eval('(' + data + ')'); // change the JSON string to javascript object
                    if (data.success){
                        $.messager.show({
                            title:'操作结果',
                            msg:data.msg,
                            showType:'show'
                        });
                        $.messager.progress('close');
                        $('#dlg').dialog('close');
                        $('#fm').form('clear');
                        $('#dg').datagrid('load');
                    }
                }
            });
        }
    });
}

/*加入简单工具栏*/
var toolbar = [{
    text:'添加',
    iconCls:'icon-add',
    handler:function(){
        $('#dlg').dialog('open').dialog('setTitle','添加问卷');
    }
},'-',{
    text:'删除',
    iconCls:'icon-remove',
    handler:function(){
        //返回选中多行
        var selRow = $('#dg').datagrid('getSelections');
        //判断是否选中行
        if (selRow.length==0) {
            $.messager.alert("提示", "请选择要删除的行！", "warning");
            return;
        }else{
            var temID="";
            //批量获取选中行的评估模板ID
            for (i = 0; i < selRow.length;i++) {
                if (temID =="") {
                    temID = selRow[i].psqId;
                } else {
                    temID = selRow[i].psqId + "," + temID;
                }
            }
            $.messager.confirm('提示', '是否删除选中数据?', function (r) {
                if (!r) {
                    return;
                }
                //提交
                $.ajax({
                    type: "POST",
                    async: false,
                    url: "/associate/psq/deletePsq",
                    data: {"psqId":temID},
                    success: function (data) {
                        //var data = eval('(' + data + ')'); //这里不用转为JavaScript对象，本来就是，ajax提交的
                        if (data.success){
                            $.messager.show({
                                title:'操作结果',
                                msg:data.msg,
                                showType:'show'
                            });
                            $.messager.progress('close');
                            $('#dg').datagrid('clearSelections');
                            $('#dg').datagrid('load');
                        }
                    }
                });
            });

        }
    }
},'-',{
    text:'查看',
    iconCls:'icon-search',
    handler:function(){
        //返回选中多行
        var selRow = $('#dg').datagrid('getSelections');
        //判断是否选中行
        if (selRow.length==0) {
            $.messager.alert("提示", "请选择要查看的行！", "warning");
            return;
        }else if (selRow.length > 1) {
            $.messager.alert("提示", "只能选择一样！", "warning");
            return;
        }else {
            //获取要查看的psqId
            var ID=selRow[0].psqId;
            //提交
            $.ajax({
                type: "POST",
                async: false,
                url: "/associate/psq/findOnePsq",
                data: {"psqId":ID},
                success: function (data) {
                    //var data = eval('(' + data + ')'); //这里不用转为JavaScript对象，本来就是，ajax提交的
                    if (data){
                        $('#dlg2').dialog('open').dialog('setTitle','问卷题目详情');
                        //alert(data.psqContentList);
                        //$('#contentList').datalist('setTitle',);
                        $('#contentList').datalist({
                            title: '每题需答' + data.psqNumber + '个反应词',
                            lines: true,
                            data: data.psqContentList,
                            valueField: 'contentId',
                            textField: 'contentName',
                            textFormatter: function (value, row, index) {
                                return (index + 1)+ " " + value;
                            }
                        });
                        $('#dg').datagrid('clearSelections');
                    }
                }
            });
        }
    }
},'-',{
    text:'修改状态',
    iconCls:'icon-edit',
    handler:function(){
        //返回选中多行
        var selRow = $('#dg').datagrid('getSelections');
        //判断是否选中行
        if (selRow.length==0) {
            $.messager.alert("提示", "请选择要修改的行！", "warning");
            return;
        }else if (selRow.length > 1) {
            $.messager.alert("提示", "只能选择一样！", "warning");
            return;
        }
        else {
            //获取要查看的psqId
            var ID=selRow[0].psqId;
            var stateWarning = '是否确认发布问卷?';
            var state = 1;
            //alert(selRow[0].psqState);
            if (selRow[0].psqState == '已发布'){
                stateWarning = '是否确认取消发布?';
                state= 0;
            }
            //提交
            $.messager.confirm('提示', stateWarning, function (r) {
                if (!r) {
                    return;
                }
                //提交
                $.ajax({
                    type: "POST",
                    async: false,
                    url: "/associate/psq/updatePsqState",
                    data: {"psqId":ID,
                            "psqState":state},
                    success: function (data) {
                        //var data = eval('(' + data + ')'); //这里不用转为JavaScript对象，本来就是，ajax提交的
                        if (data.success){
                            $.messager.show({
                                title:'操作结果',
                                msg:data.msg,
                                showType:'show'
                            });
                            $.messager.progress('close');
                            $('#dg').datagrid('clearSelections');
                            $('#dg').datagrid('load');
                        }
                    }
                });
            });
        }
    }
},'-',{
    text:'复制问卷链接',
    iconCls:'icon-print',
    handler:function(){
        $.messager.alert("提示", "待做！只能复制已发布的问卷链接", "warning");
    }
}];


