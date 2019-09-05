<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div>
        <@l.logout />
    </div>

    <div><h2>Tape page</h2></div>

    <h4><a href="addPost">Add new post</a></h4>

    <!-- filter -->
    <form method="post" action="filter">
        <input type="text" name="filter" placeholder="Enter tag">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Find</button>
    </form>

    <#list posts as post>
    <div>
        <b>${post.id}</b>
        <span>${post.text}</span>
        <i>${post.tag}</i>
        <strong>${post.authorName}</strong>
    </div>

    <#else>
        There is no posts.
    </#list>

</@c.page>