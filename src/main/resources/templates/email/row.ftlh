<#macro Row style={} attrs...>
    <table
        align="center"
        width="100%"
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"</#list>
        </#if>
        data-id="freemarker-email-row"
        <#if style?has_content>
            <#if style?is_hash>
                style="${style?keys?map(name -> name + ':' + style[name])?join(";")}"
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