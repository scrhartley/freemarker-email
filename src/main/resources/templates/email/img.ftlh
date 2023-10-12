<#macro Img src alt="" width="" height="" style={} attrs...>
    <#local baseStyle={
        "display": "block",
        "outline": "none",
        "border": "none",
        "text-decoration": "none"
    }>
    <img
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"<#sep> </#list>
        </#if>
        data-id="freemarker-email-img"
        <#if alt?has_content>alt="${alt}"</#if>
        src="${src}"
        <#if width?has_content>width="${width?is_number?then(width?c, width)}"</#if>
        <#if height?has_content>height="${height?is_number?then(height?c, height)}"</#if>
        <#if style?is_hash>
            <#local style=baseStyle + style>
            style="${style?keys?map(name -> name + ':' + style[name])?join(';')}"
        <#else>
            style="${baseStyle?keys?map(name -> name + ':' + baseStyle[name])?join(";") + ';' + style}"
        </#if>
    />
</#macro>