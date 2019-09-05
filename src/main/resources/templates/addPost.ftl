<#import "parts/common.ftl" as c>

<@c.page>

<h4><a href="/tape">Back</a></h4>

<div><h1>Add post page</h1></div>

<div>
    <form method="post">
        <input type="text" name="text" placeholder="Enter message"/>
        <input type="text" name="tag" placeholder="Tag"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Add</button>
    </form>
</div>

</@c.page>
