<#import "parts/common.ftl" as c>

<@c.page>
<div class="common-container">

    <#include "parts/messageEdit.ftl" />

    <#include "parts/messageList.ftl" />

    <#include "parts/footer.ftl">
</div>
</@c.page>

<#--search -->

<#--<div class="container">-->
<#--<div class="form-row">-->
<#--<div class="form-group col-md-6">-->
<#--<form method="get" action="/main" class="form-inline">-->
<#--<input type="text" name="filter" class="form-control" value="${filter?ifExists}"-->
<#--placeholder="Search by tag"/>-->
<#--<button type="submit" class="btn btn-primary ml-2">Search</button>-->
<#--</form>-->
<#--</div>-->
<#--</div>-->
<#--</div>-->