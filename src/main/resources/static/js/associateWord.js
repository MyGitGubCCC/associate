/*分页组件操作*/
$(function(){

    $('#dg').datagrid({
        iconCls : 'icon-man',
        rownumbers: true,
        singleSelect: false,
        pagination: true, //显示分页插件
        url: '/associate/associateWord/pageList',
        method: 'get',
        toolbar: toolbar,
        fitColumns : false,
        pageSize:10,
        pageList:[10,20,30,40],
        loadMsg:'正在加载联想词表信息...',
        emptyMsg:'没有检索到联想词',
        resizable: true,
        striped: true, //斑马线效果
        columns: [[
            {field:'ck',checkbox: true,width: 20},
            {field:'associateWordId',hidden: true,title:'ID',width: 100},
            {field:'associateWord',title:'联想词', halign:'center',width:320,align:'center'},
            {field:'associatePos',title:'词性', halign:'center',width: 320,align:'center'}
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
        var word = $('#word-textbox').val();
        var posId = $('#pos-combobox').val();
        $('#dg').datagrid("load", {"associateWord":word, "associatePosId":posId});
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
                url: "/associate/associateWord/addWord",
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
        $('#dlg').dialog('open').dialog('setTitle','添加联想词');
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
                    temID = selRow[i].associateWordId;
                } else {
                    temID = selRow[i].associateWordId + "," + temID;
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
                    url: "/associate/associateWord/deleteWord",
                    data: {"wordId":temID},
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
}];


