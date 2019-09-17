<#macro login path isRegisterForm>

    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">User Name:</label>
            <div class="col-sm-5">
                <input type="text" name="username"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       placeholder="Username"
                       value="<#if user??>${user.username}</#if>" />

                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Password:</label>
            <div class="col-sm-5">
                <input type="password"
                       name="password"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       placeholder="Password"/>

                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>

        <#if isRegisterForm>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Confirm Password:</label>
                <div class="col-sm-5">
                    <input type="password"
                           name="password2"
                           class="form-control ${(password2Error??)?string('is-invalid', '')}"
                           placeholder="Confirm password"/>

                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                </div>
            </div>

            <!-- email without validation because its confirmation does not work -->
            <!-- needs to fix -->
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Email:</label>
                <div class="col-sm-5">
                    <input type="email" name="email" class="form-control" placeholder="dont@working.com"/>
                </div>
            </div>
        </#if>

        <input type="hidden" name="_csrf" value="${_csrf.token}"/>

        <#if !isRegisterForm>
            <a href="/registration">Registration</a>
        </#if>

        <button class="btn btn-primary" type="submit">
            <#if isRegisterForm>
                Registration
            <#else>
                Sign in
            </#if>
        </button>
    </form>

</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <button class="btn btn-primary" type="submit">Sign out</button>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>
</#macro>