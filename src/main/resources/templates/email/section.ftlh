<#macro Section style={} attrs...>
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
        border="0"
        cellPadding="0"
        cellSpacing="0"
        role="presentation"
    >
        <tbody>
            <tr>
                <td><#nested></td>
            </tr>
        </tbody>
    </table>
</#macro>