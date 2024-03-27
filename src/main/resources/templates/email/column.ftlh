<#macro Column style={} attrs...>
    <td
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"<#sep> </#list>
        </#if>
        data-id="__freemarker-email-column"
        <#if style?has_content>
            <#if style?is_hash>
                style="<#list style as key, val>${key}:${val?is_number?then(val?c, val)}<#sep>;</#list>"
            <#else>
                style="${style}"
            </#if>
        </#if>
    >
        <#nested>
    </td>
</#macro>