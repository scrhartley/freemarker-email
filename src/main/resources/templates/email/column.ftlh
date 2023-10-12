<#macro Column style={} attrs...>
    <td
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"<#sep> </#list>
        </#if>
        data-id="__freemarker-email-column"
        <#if style?has_content>
            <#if style?is_hash>
                style="${style?keys?map(name -> name + ':' + style[name])?join(";")}"
            <#else>
                style="${style}"
            </#if>
        </#if>
    >
        <#nested>
    </td>
</#macro>