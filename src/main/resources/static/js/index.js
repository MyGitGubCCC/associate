var data = [{
    text: '联想数据库',
    iconCls: 'icon-more',
    state: 'open',
    children: [{
        text: '联想词库',
        page: 'associateWord'
    }, {
        text: '联想场',
        page: 'associate'
    }, {
        text: '核心词表'
    }, {
        text: '发布问卷',
        page: 'psq'
    }, {
        text: '账户管理'
    }]
}];

$(function () {
    //把这个加到data-option中就不错了，大概就是页面还没有渲染出来，就调用了该方法，导致找不到option
    $("#sm").sidemenu({
        onSelect: function (item) {
            if (item.page == 'associateWord') {
                //alert(item.page);
                addTab('联想词库', 'associateWord');
            }else if (item.page == 'psq') {
                //alert(item.page);
                addTab('发布问卷', 'psq');
            }else if (item.page == 'associate') {
                //alert(item.page);
                addTab('联想场', 'associate');
            }
        }
    })
});

function addTab(title, url) {
    if ($('#tabs').tabs('exists', title)) {
        $('#tabs').tabs('select', title);
    } else {
        var content = '<iframe src="' + url + '" frameborder="0" style="border:0;width:100%;height:100%;"></iframe>';
        $('#tabs').tabs('add', {
            title: title,
            content: content,
            closable: true
        });
    }
}