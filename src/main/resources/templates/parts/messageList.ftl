<#include "security.ftl">
<#import "pager.ftl" as p>

<@p.pager page url />
<div class="container card-columns" id="message-list">
    <#list page.content as message>
        <div class="card my-3" data-id="${message.id}">
            <div class="card-content m-2">
                <div>
                    <#if message.filename??>
                        <img src="/img/${message.filename}" />
                    </#if>
                </div>
                <div>
                <a href="/">${message.text}</a>
                <i>#${message.tag}</i>
                </div>
            </div>

            <div class="card-footer text-muted container">
                <div class="row">
                    <a class="col align-self-center" href="/user-messages/${message.author.id}">${message.authorName}</a>
                    <a class="col align-self-center" href="/messages/${message.id}/like">
                        <#if message.meLiked>
                            <i class="fas fa-heart"></i>
                        <#else>
                            <i class="far fa-heart"></i>
                        </#if>
                        ${message.likes}
                    </a>
                    <#if message.author.id == currentUserId>
                        <a class="col btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                            Edit
                        </a>
                    </#if>
                </div>
            </div>
        </div>
    <#else>
        No message
    </#list>
</div>

<@p.pager page url />
