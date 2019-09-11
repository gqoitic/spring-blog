<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div>
        <@l.logout />
    </div>

    <!-- filter -->
    <form method="get" action="/tape">
        <input type="text" name="filter" placeholder="Enter tag" value="${filter?ifExists}">
        <button type="submit">Find</button>
    </form>

    <#list posts as post>
    <div>
        <b>${post.id}</b>
        <span>${post.text}</span>
        <i>${post.tag}</i>
        <strong>${post.authorName}</strong>
        <div>
            <#if post.filename??>
                <img src="/img/${post.filename}">
            </#if>
        </div>
    </div>

    <#else>
        There is no posts.
    </#list>

</@c.page>
