<#macro Section style={} attrs...>
    <table
        align="center"
        width="100%"
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"</#list>
        </#if>
        data-id="freemarker-email-section"
        <#if style?has_content>
            <#if style?is_hash>
                style="${style?keys?map(name -> name + ':' + style[name])?join(";")}"
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