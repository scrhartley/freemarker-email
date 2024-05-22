<#macro Link target="_blank" style={} attrs...>
    <#local baseStyle={
        "color": "#067df7",
        "text-decoration": "none"
    }>
    <a
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"<#sep> </#list>
        </#if>
        target="${target}"
        <#if style?is_hash>
            <#local style=baseStyle + style>
            style="<#list style as key, val>${key}:${val?is_number?then(val?c, val)}<#sep>;</#list>"
        <#else>
            style="<#list baseStyle as key, val>${key}:${val}<#sep>;</#list>;${style}"
        </#if>
    >
        <#nested>
    </a>
</#macro>