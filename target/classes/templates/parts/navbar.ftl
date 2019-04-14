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
                    <a class="nav-link" href="/main">Science</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/">Tech</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/">Life</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="" role="button" aria-haspopup="true" aria-expanded="false">More</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Separated link</a>
                    </div>
                </li>
            </#if>
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user">User list</a>
            </li>
            </#if>
            </ul>

            <div class="navbar-text mr-3"><#if user??><a class="nav-link" href="/user-messages/${currentUserId}" style="padding: 0">${name}</a><#else>Please, sign in</#if></div>
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

<#--<div class="container">-->
    <#--<div class="common-title">-->
        <#--<h1>Negative result is also a result</h1>-->
        <#--<span>If you have something to add on the subject, don't hesitate</span>-->
        <#--<div class="greeting-button">-->
<#--<#if !user??>-->
            <#--<a href="/login" class="btn btn-primary btn-lg" role="button" aria-pressed="true">Share it</a>-->

<#--</#if>-->
    <#--<a href="/" class="btn btn-outline-primary btn-lg" role="button" aria-pressed="true">About us</a>-->
        <#--</div>-->
    <#--</div>-->
<#--</div>-->

<#--<#include "news.ftl">-->

<#--<#include "footer.ftl">-->

