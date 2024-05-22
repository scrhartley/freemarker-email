<#macro Container style={} attrs...>
    <#local baseStyle={ "max-width": "37.5em" }>
    <table
        align="center"
        width="100%"
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"<#sep> </#list>
        </#if>
        border="0"
        cellPadding="0"
        cellSpacing="0"
        role="presentation"
        <#if style?is_hash>
            <#local style=baseStyle + style>
            style="<#list style as key, val>${key}:${val?is_number?then(val?c, val)}<#sep>;</#list>"
        <#else>
            style="<#list baseStyle as key, val>${key}:${val}<#sep>;</#list>;${style}"
        </#if>
    >
        <tbody>
            <tr style="width:100%">
                <td><#nested></td>
            </tr>
        </tbody>
    </table>
</#macro>