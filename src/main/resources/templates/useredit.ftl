<#import "parts/common.ftl" as c>

<@c.page>
    <h4>Edit user</h4>

    <form action="/user" method="post">
        <label><input type="text" name="username" value="${user.username}"></label>

        <#list roles as role>
        <div>
            <label>
                <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>
                ${role}
            </label>
        </div>
        </#list>

        <label><input type="hidden" value="${user.id}" name="userId"></label>
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit">Save</button>
    </form>
</@c.page>
