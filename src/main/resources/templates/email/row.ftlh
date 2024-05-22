<#macro Row style={} attrs...>
    <table
        align="center"
        width="100%"
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"<#sep> </#list>
        </#if>
        <#if style?has_content>
            <#if style?is_hash>
                style="<#list style as key, val>${key}:${val?is_number?then(val?c, val)}<#sep>;</#list>"
            <#else>
                style="${style}"
            </#if>
        </#if>
        role="presentation"
        cellSpacing="0"
        cellPadding="0"
        border="0"
    >
        <tbody style="width:100%">
            <#local children><#nested></#local>
            <tr style="width:100%"><#if children?has_content><td>${children}</td></#if></tr>
        </tbody>
    </table>
</#macro>