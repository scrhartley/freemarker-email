<#macro Link target="_blank" style={} attrs...>
    <#local baseStyle={
        "color": "#067df7",
        "text-decoration": "none"
    }>
    <a
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"<#sep> </#list>
        </#if>
        data-id="freemarker-email-link"
        target="${target}"
        <#if style?is_hash>
            <#local style=baseStyle + style>
            style="${style?keys?map(name -> name + ':' + style[name])?join(';')}"
        <#else>
            style="${baseStyle?keys?map(name -> name + ':' + baseStyle[name])?join(";") + ';' + style}"
        </#if>
    >
        <#nested>
    </a>
</#macro>