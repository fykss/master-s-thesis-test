<#macro login path isRegisterForm>
<div class="container">
    <div class="row">
        <div class="col"></div>
        <div class="col-md-6 form">
        <form action="${path}" method="post" class="form-signin">
            <#if isRegisterForm>
                <h1 class="h3 mb-4 font-weight-normal">Create your account</h1>
            <#else>
                <h1 class="h3 mb-4 font-weight-normal">Log in</h1>
            </#if>
            <div class="form-group row">
                <div class="col-lg-8">
                    <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                           class="form-control ${(usernameError??)?string('is-invalid', '')}"
                           placeholder="User name" />
                    <#if usernameError??>
                        <div class="invalid-feedback">
                            ${usernameError}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-lg-8">
                    <input type="password" name="password"
                           class="form-control ${(passwordError??)?string('is-invalid', '')}"
                           placeholder="Password" />
                    <#if passwordError??>
                        <div class="invalid-feedback">
                            ${passwordError}
                        </div>
                    </#if>
                </div>
            </div>
            <#if isRegisterForm>
                <div class="form-group row">
                    <div class="col-lg-8">
                        <input type="password" name="password2"
                               class="form-style form-control ${(password2Error??)?string('is-invalid', '')}"
                               placeholder="Confirm password" />
                        <#if password2Error??>
                            <div class="invalid-feedback">
                                ${password2Error}
                            </div>
                        </#if>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-8">
                        <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                               class="form-control ${(emailError??)?string('is-invalid', '')}"
                               placeholder="Email" />
                        <#if emailError??>
                            <div class="invalid-feedback">
                                ${emailError}
                            </div>
                        </#if>
                    </div>
                </div>
                <div class="radio my-4">
                    <div class="radio_input">
                        <input type="radio" name="gender" value="student" checked><span
                            class="radio_input-item">Student</span><br>
                    </div>
                    <div class="radio_input">
                        <input type="radio" name="gender" value="professor"><span
                            class="radio_input-item">Professor</span><br>
                    </div>
                </div>
            </#if>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />

            <button class="btn btn-primary btn-block1 btn-lg-8" type="submit"><#if isRegisterForm>Register<#else>Sign In</#if></button>
            <#if !isRegisterForm><a href="/registration" class="mx-5">Registration</a></#if>
        </form>
        </div>
        <div class="col"></div>
    </div>
</div>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button class="btn btn-primary" type="submit"><#if user??>Sign Out<#else>Log in</#if></button>
</form>
</#macro>
