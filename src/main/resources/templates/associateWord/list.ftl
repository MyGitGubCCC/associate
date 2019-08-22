<html>
    <head>
        <meta charset="UTF-8">
        <title>联想词库列表</title>
        <link href="https://cdn.bootcss.com/twitter-bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-bordered table-hover table-condensed">
                    <thead>
                    <tr>
                        <th>编号</th>
                        <th>联想词</th>
                        <th>词性</th>
                    </tr>
                    </thead>
                    <tbody>
                    <#list associateWordPage.getContent() as associateWord>
                            <#if associateWord_index % 2 == 0>
                                <tr class="info">
                            <#else>
                                <tr>
                            </#if>
                            <td>
                                ${associateWordPage.getPageable().getPageSize() * associateWordPage.getPageable().getPageNumber()
                                + associateWord_index + 1}
<#--                                ${associateWord.associateWordId}-->
                            </td>
                            <td>
                                ${associateWord.associateWord}
                            </td>
                            <td>
                                <#--<#if associateWord.associatePos ??>
                                    ${associateWord.associatePos}
                                <#else>
                                    ${associateWord.associatePos!""}
                                </#if>-->
                                ${associateWord.associatePos!""}
                            </td>
                        </tr>
                    </#list>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <ul class="pagination pull-right">
                    <#if currentPage lte 1>
                        <li class="disabled"><a href="#">上一页</a></li>
                    <#else>
                        <li><a href="/associate/associateWord/list?page=${currentPage - 1}&size=${size}">上一页</a></li>
                    </#if>

                    <#assign start = 1>
                    <#assign end = associateWordPage.getTotalPages()>
                    <#if currentPage gte 3>
                        <#assign start = currentPage - 2>
                    </#if>
                    <#if end - currentPage gte 3>
                        <#assign end = currentPage + 2>
                    </#if>

                    <#list start .. end as index>
                        <#if currentPage == index >
                            <li class="disabled"><a href="#">${index}</a></li>
                        <#else>
                            <li><a href="/associate/associateWord/list?page=${index}&size=${size}">${index}</a></li>
                        </#if>
                    </#list>

                    <#if currentPage gte associateWordPage.getTotalPages()>
                        <li class="disabled"><a href="#">下一页</a></li>
                    <#else>
                        <li><a href="/associate/associateWord/list?page=${currentPage + 1}&size=${size}">上一页</a></li>
                    </#if>
                </ul>
            </div>
        </div>
    </div>
    </body>
</html>


