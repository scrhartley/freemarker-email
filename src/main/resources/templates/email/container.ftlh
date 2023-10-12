<#macro Container style={} attrs...>
    <#local baseStyle={ "max-width": "37.5em" }>
    <table
        align="center"
        width="100%"
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"<#sep> </#list>
        </#if>
        data-id="__freemarker-email-container"
        role="presentation"
        cellSpacing="0"
        cellPadding="0"
        border="0"
        <#if style?is_hash>
            <#local style=baseStyle + style>
            style="${style?keys?map(name -> name + ':' + style[name])?join(';')}"
        <#else>
            style="${baseStyle?keys?map(name -> name + ':' + baseStyle[name])?join(";") + ';' + style}"
        </#if>
    >
        <tbody>
            <tr style="width:100%">
                <td><#nested></td>
            </tr>
        </tbody>
    </table>
</#macro>