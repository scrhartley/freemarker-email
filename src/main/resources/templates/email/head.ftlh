<#macro Head attrs...>
    <head<#if attrs?is_hash><#list attrs as name, value> ${name}="${value}"</#list></#if>>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="x-apple-disable-message-reformatting" />
        <#nested>
    </head>
</#macro>