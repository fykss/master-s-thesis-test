<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>

<@c.page>

<div id="particles-js"></div>

<div class="container">
    <div class="common-title">
        <h1>Negative result is also a result</h1>
        <span>If you have something to add on the subject, don't hesitate</span>
        <div class="greeting-button">
            <#if user??>
            <a href="/main" class="btn btn-primary btn-lg" role="button" aria-pressed="true">Share it</a>
            <#else>
            <a href="/login" class="btn btn-primary btn-lg" role="button" aria-pressed="true">Share it</a>
            </#if>
            <a href="/about" class="btn btn-outline-primary btn-lg" role="button" aria-pressed="true">About us</a>
        </div>
    </div>
</div>

    <#include "parts/news.ftl">

    <#include "parts/footer.ftl">

</@c.page>
