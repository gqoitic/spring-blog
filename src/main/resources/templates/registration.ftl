<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <h4>Registration</h4>
    ${message?ifExists}
    <@l.login "/registration" />
</@c.page>
