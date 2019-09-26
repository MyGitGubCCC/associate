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
            //清空一下搜索框
            clearsearch2();
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
        url: '/associate/associate/outPutPageAssociateField',
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
            if (row.reactionIsAssociate != 1){
                $.messager.alert("提示", "请选择蓝色行继续生产联想场！", "warning");
            }else {
                //alert(row.reactionWord);
                $('#dg2').datagrid("load", {"associateWord":row.reactionWord});
                $('#lb').text(row.reactionWord);
                //清空一下搜索框
                clearsearch2();
            }
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
        var searchReactionWord = $('#searchReactionWord').val();
        var searchReactionPos = $('#searchReactionPos').val();
        var searchSchoolName = $('#searchSchoolName').val();
        var searchPsq = $('#searchPsq').val();
        var searchProfession = $('#searchProfession').combotree('getValue');
        var searchJob = $('#searchJob').val();
        var searchGrade = $('#searchGrade').val();
        var searchAge1 = $('#searchAge1').val();
        var searchAge2 = $('#searchAge2').val();
        var searchSex = $('#searchSex').val();
        var searchNation = $('#searchNation').val();
        var searchOriginArea = $('#searchOriginArea').combotree('getValue');
        var searchPresentArea = $('#searchPresentArea').combotree('getValue');
        var searchOriginLocation = $('#searchOriginLocation').val();
        var searchPresentLocation = $('#searchPresentLocation').val();
        //获取H2标签中的内容
        var searchAssociateWord = $('#lb').html();

        $('#dg2').datagrid("load", {
            "associateWord" : searchAssociateWord,
            "reactionWord": searchReactionWord,
            "reactionPos": searchReactionPos,
            "schoolName": searchSchoolName,
            "psqId": searchPsq,
            "professionId": searchProfession,
            "jobId": searchJob,
            "gradeId": searchGrade,
            "age1": searchAge1,
            "age2": searchAge2,
            "sex": searchSex,
            "nationId": searchNation,
            "originAreaId": searchOriginArea,
            "presentAreaId": searchPresentArea,
            "originLocationId": searchOriginLocation,
            "presentLocationId": searchPresentLocation
        });
    });

    //清空按钮
    $('#clear-btn').bind('click', function () {
        clearsearch2();
    });

    /**
     * 总联想场按钮点击事件
     */
    $('#associate-btn').bind('click', function () {
        //首先获取搜索搜索框内容
        var searchReactionWord = $('#searchReactionWord').val();
        var searchReactionPos = $('#searchReactionPos').val();
        var searchSchoolName = $('#searchSchoolName').val();
        var searchPsq = $('#searchPsq').val();
        var searchProfession = $('#searchProfession').combotree('getValue');
        var searchJob = $('#searchJob').val();
        var searchGrade = $('#searchGrade').val();
        var searchAge1 = $('#searchAge1').val();
        var searchAge2 = $('#searchAge2').val();
        var searchSex = $('#searchSex').val();
        var searchNation = $('#searchNation').val();
        var searchOriginArea = $('#searchOriginArea').combotree('getValue');
        var searchPresentArea = $('#searchPresentArea').combotree('getValue');
        var searchOriginLocation = $('#searchOriginLocation').val();
        var searchPresentLocation = $('#searchPresentLocation').val();
        //获取H2标签中的内容
        var searchAssociateWord = $('#lb').html();

        //提交
        $.ajax({
            type: "get",
            async: false,
            url: "/associate/associate/outPutAssociateField",
            data: {
                "associateWord" : searchAssociateWord,
                "reactionWord": searchReactionWord,
                "reactionPos": searchReactionPos,
                "schoolName": searchSchoolName,
                "psqId": searchPsq,
                "professionId": searchProfession,
                "jobId": searchJob,
                "gradeId": searchGrade,
                "age1": searchAge1,
                "age2": searchAge2,
                "sex": searchSex,
                "nationId": searchNation,
                "originAreaId": searchOriginArea,
                "presentAreaId": searchPresentArea,
                "originLocationId": searchOriginLocation,
                "presentLocationId": searchPresentLocation
            },
            success: function (data) {
                var resultStatistical = data.reactionNumber + "+" + data.differentReactionNumber
                    + "+" + data.emptyReactionNumber + "+" + data.oneReactionNumber;
                data1 = data.associateFieldVoList;
                //var data = eval('(' + data + ')'); //这里不用转为JavaScript对象，本来就是，ajax提交的
                var firstFiveField = "前五个: ";
                var laterField = "后面的: ";
                var n = 0;
                for (var i = 0; i < data1.length;i++) {
                    if (n <= 5){
                        firstFiveField += data1[i].reactionWord;
                        firstFiveField += '(';
                        firstFiveField += data1[i].reactionPos;
                        firstFiveField += ')';
                        if (i < data1.length - 1){
                            if (data1[i].reactionWordNumber == data1[i+1].reactionWordNumber){
                                firstFiveField += ',';
                            } else {
                                firstFiveField += data1[i].reactionWordNumber + ';';
                                n ++;
                            }
                        }else {
                            firstFiveField += data1[i].reactionWordNumber + ';';
                        }
                    } else {
                        laterField += data1[i].reactionWord;
                        laterField += '(';
                        laterField += data1[i].reactionPos;
                        laterField += ')';
                        if (i < data1.length - 1){
                            if (data1[i].reactionWordNumber == data1[i+1].reactionWordNumber){
                                laterField += ',';
                            } else {
                                laterField += data1[i].reactionWordNumber + ';';
                                n ++;
                            }
                        }else {
                            laterField += data1[i].reactionWordNumber + ';';
                        }
                    }
                }
                $('#firstFiveField').text(firstFiveField);
                $('#laterField').text(laterField);
                $('#resultStatistical').text('('+resultStatistical+')');
                $('#dlg').dialog('open');

            }
        });
    });
});

//清空搜索框
function clearsearch2() {
    $('#searchReactionWord').textbox('setValue','');
    $('#searchReactionPos').textbox('setValue','');
    $('#searchSchoolName').textbox('setValue','');
    $('#searchPsq').textbox('setValue','');
    $('#searchJob').textbox('setValue','');
    $('#searchGrade').textbox('setValue','');
    $('#searchAge1').textbox('setValue','');
    $('#searchAge2').textbox('setValue','');
    $('#searchSex').textbox('setValue','全部');
    $('#searchNation').textbox('setValue','');
    $('#searchOriginLocation').textbox('setValue','');
    $('#searchPresentLocation').textbox('setValue','');
    $('#searchProfession').combotree('setValue','');
    $('#searchOriginArea').combotree('setValue','');
    $('#searchPresentArea').combotree('setValue','');
    //获取H2标签中的内容
    //$('#lb').text('暂无联想词');
}

