/*分页组件操作*/
$(function(){

    $('#dg').datagrid({
        iconCls : 'icon-tip',
        idField:'associateWord',
        rownumbers: true,
        singleSelect: true,
        pagination: true, //显示分页插件
        url: '/associate/associate/findAllAssociateWord',
        method: 'get',
        fitColumns : false,
        pageSize:10,
        pageList:[10,20,30,40],
        loadMsg:'正在加载联想词表信息...',
        emptyMsg:'没有检索到联想词',
        resizable: true,
        striped: true, //斑马线效果
        columns: [[
            //{field:'ck',checkbox: true,width: 20},
            {field:'associateWord',title:'联想词', halign:'center',width:150,align:'center'},
            {field:'associatePos',title:'词性', halign:'center',width: 138,align:'center'}
        ]],
        //单击联想词行事件
        onClickRow: function (index, row) {
            //alert(row.associateWord);
            $('#dg2').datagrid("load", {"associateWord":row.associateWord});
            $('#lb').text(row.associateWord);

        }
    });

    //获取datagrid中的分页插件
    var pager = $('#dg').datagrid().datagrid('getPager');    // get the pager of datagrid
    pager.pagination({
        beforePageText: '第',
        afterPageText: '页',
        displayMsg: '共{total}条数据, 本页从{from}到{to}条'
    });

    /*联想词点击查询*/
    $('#search-btn').bind('click', function(){
        //var sno = $("input[name='sno']").val();
        var word = $('#word-textbox').val();
        var associatePos = $('#pos-combobox').val();
        $('#dg').datagrid("load", {"associateWord":word, "associatePos":associatePos});
    });


    $('#dg2').datagrid({
        iconCls : 'icon-tip',
        idField:'reactionWord',
        rownumbers: true,
        singleSelect: true,
        pagination: true, //显示分页插件
        url: '/associate/associate/outPutAssociateField',
        method: 'get',
        fitColumns : false,
        pageSize:10,
        pageList:[10,20,30,40],
        loadMsg:'正在加载联想场信息...',
        emptyMsg:'没有检索到反应词',
        resizable: true,
        striped: true, //斑马线效果
        columns: [[
            //{field:'ck',checkbox: true,width: 20},
            {field:'reactionWord',title:'反应词', halign:'center',width:300,align:'center'},
            {field:'reactionPos',title:'反应词词性', halign:'center',width: 100,align:'center'},
            {field:'reactionWordNumber',title:'反应词数量', halign:'center',width:100,align:'center'},
        ]],
        //单击联想词行事件
        onClickRow: function (index, row) {
            //alert(row.reactionWord);
            $('#dg2').datagrid("load", {"associateWord":row.reactionWord});
            $('#lb').text(row.reactionWord);
        },
        //行样式
        rowStyler: function(index,row){
            if (row.reactionIsAssociate == 1){
                return 'background-color:#6293BB;color:#fff;font-weight:bold;';
            }
        }

    });
    //获取datagrid中的分页插件
    var pager1 = $('#dg2').datagrid().datagrid('getPager');    // get the pager of datagrid
    pager1.pagination({
        beforePageText: '第',
        afterPageText: '页',
        displayMsg: '共{total}条数据, 本页从{from}到{to}条'
    });


    /*联想场点击查询*/
    $('#search-btn2').bind('click', function(){
        //var sno = $("input[name='sno']").val();
        var searchReactionWord = $('#searchReactionWord').val();
        var searchReactionPos = $('#searchReactionPos').val();
        var searchSchoolName = $('#searchSchoolName').val();
        var searchProfession = $('#searchProfession').val();
        var searchJob = $('#searchJob').val();
        var searchGrade = $('#searchGrade').val();
        var searchAge1 = $('#searchAge1').val();
        var searchAge2 = $('#searchAge2').val();
        var searchSex = $('#searchSex').val();
        var searchNation = $('#searchNation').val();
        var searchOriginArea = $('#searchOriginArea').val();
        var searchPresentArea = $('#searchPresentArea').val();
        var searchLocation = $('#searchLocation').val();

        $('#dg').datagrid("load", {
            "reactionWord": searchReactionWord,
            "reactionPos": searchReactionPos,
            "schoolName": searchSchoolName,
            "profession": searchProfession,
            "job": searchJob,
            "grade": searchGrade,
            "age1": searchAge1,
            "age2": searchAge2,
            "sex": searchSex,
            "nation": searchNation,
            "originArea": searchOriginArea,
            "presentArea": searchPresentArea,
            "location": searchLocation
        });
    });
});


