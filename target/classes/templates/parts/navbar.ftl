<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar fixed-top navbar-expand-lg navbar-light">
    <div class="container">
        <a class="navbar-brand" href="/">
            <img src="/static/img/logo-ndb.jpg" width="45" height="30" alt="logo">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/">Home</a>
                </li>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/main">Article</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/user-messages/${currentUserId}">My Article</a>
                </li>
            </#if>
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user">User list</a>
            </li>
            </#if>
            <#if user??>
            <li class="nav-item">
                <a class="nav-link" href="/user/profile">Profile</a>
            </li>
            </#if>
            </ul>

            <div class="navbar-text mr-3"><#if user??>${name}<#else>Please, sign in</#if></div>
            <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <#if user??>
                <button class="btn btn-outline-primary" type="submit">Sign out</button>
            <#else>
                <button class="btn btn-outline-primary" type="submit">Get started</button>
            </#if>
            </form>
        </div>
    </div>
</nav>
