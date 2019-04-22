<#include "security.ftl">
<#import "pager.ftl" as p>

<@p.pager page url />
<div class="container card-columns" id="message-list">
    <#list page.content as message>
        <div class="card my-3" data-id="${message.id}" style="border-color: #ced4da45;">
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

            <div class="card-footer text-muted container" style="border-top: 0;">
                <div class="row">
                    <a class="col align-self-center" href="/user-messages/${message.author.id}">${message.authorName}</a>
                    <a class="col align-self-center card-like" href="/messages/${message.id}/like">
                        <#if message.meLiked>
                            <i class="fas fa-heart"></i>
                        <#else>
                            <i class="far fa-heart"></i>
                        </#if>
                        ${message.likes}
                    </a>
                    <#if message.author.id == currentUserId>

                    <div class="nav-item dropdown">
                        <a data-toggle="dropdown" href="" role="button" aria-haspopup="true" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="/user-messages/${message.author.id}?message=${message.id}">Edit</a>
                            <a class="dropdown-item" href="#">Delete</a>
                        </div>
                    </div>

                        <#--<a href="/user-messages/${message.author.id}?message=${message.id}">-->
                            <#--<div class="dropdown-menu">-->
                                <#--<a class="dropdown-item" href="#">Action</a>-->
                                <#--<a class="dropdown-item" href="#">Another action</a>-->
                                <#--<a class="dropdown-item" href="#">Something else here</a>-->
                                <#--<div class="dropdown-divider"></div>-->
                                <#--<a class="dropdown-item" href="#">Separated link</a>-->
                            <#--</div>-->
                            <#--<i class="fas fa-ellipsis-v"></i>-->
                        <#--</a>-->
                    </#if>
                </div>
            </div>
        </div>
    <#else>
        No message
    </#list>
</div>

<@p.pager page url />
