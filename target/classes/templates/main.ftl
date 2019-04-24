<#import "parts/common.ftl" as c>

<@c.page>
<div class="common-container">

    <div class="container">
        <div class="justify-content-center">
            <div class="form-group main-search">
                <form method="get" action="/main" class="form-inlinee">
                    <input type="text" name="filter" class="form-control" value="${filter?ifExists}"
                           placeholder="Search by tag" style="border: 0"/>
                    <button type="submit" class="mr-3 ml-2"><i class="fas fa-search"></i></button>
                </form>
            </div>
        </div>
    </div>

    <#include "parts/messageEdit.ftl" />

    <#include "parts/messageList.ftl" />

    <#--<#include "parts/footer.ftl">-->
</div>
</@c.page>

<#include "parts/footer.ftl">