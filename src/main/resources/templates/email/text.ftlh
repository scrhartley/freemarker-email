<#macro Text style={} attrs...>
    <#local baseStyle={
        "font-size": "14px",
        "line-height": "24px",
        "margin": "16px 0"
    }>
    <p
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"<#sep> </#list>
        </#if>
        data-id="freemarker-email-text"
        <#if style?is_hash>
            <#local style=baseStyle + style>
            style="<#list style as key, val>${key}:${val?is_number?then(val?c, val)}<#sep>;</#list>"
        <#else>
            style="${baseStyle?keys?map(name -> name + ':' + baseStyle[name])?join(";") + ';' + style}"
        </#if>
    >
        <#nested>
    </p>
</#macro>