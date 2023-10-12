<#macro Hr style={} attrs...>
    <#local baseStyle={
        "width": "100%",
        "border": "none",
        "border-top": "1px solid #eaeaea"
    }>
    <hr
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"<#sep> </#list>
        </#if>
        data-id="freemarker-email-hr"
        <#if style?is_hash>
            <#local style=baseStyle + style>
            style="${style?keys?map(name -> name + ':' + style[name])?join(';')}"
        <#else>
            style="${baseStyle?keys?map(name -> name + ':' + baseStyle[name])?join(";") + ';' + style}"
        </#if>
    >
</#macro>