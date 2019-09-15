<#import "parts/common.ftl" as c>

<@c.page>
    <!-- filter -->
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/tape" class="form-inline">
                <input type="text" name="filter" class="form-control" placeholder="Enter tag" value="${filter?ifExists}">
                <button type="submit" class="btn btn-primary ml-2">Search</button>
            </form>
        </div>
    </div>

    <div class="card-columns">
        <#list posts as post>
        <div class="card border-dark mb-3 bg-card">
            <#if post.filename??>
                <img src="/img/${post.filename}" class="card-img-top">
            </#if>

            <div class="m-2">
                <span>${post.text}</span>
                <strong>${post.tag}</strong>
            </div>


            <div class="card-footer text-muted">
                <strong>${post.authorName}</strong>
            </div>
        </div>

        <#else>
            There is no posts.
        </#list>
    </div>

</@c.page>
