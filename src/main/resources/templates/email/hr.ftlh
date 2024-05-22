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
        <#if style?is_hash>
            <#local style=baseStyle + style>
            style="<#list style as key, val>${key}:${val?is_number?then(val?c, val)}<#sep>;</#list>"
        <#else>
            style="<#list baseStyle as key, val>${key}:${val}<#sep>;</#list>;${style}"
        </#if>
    >
</#macro>