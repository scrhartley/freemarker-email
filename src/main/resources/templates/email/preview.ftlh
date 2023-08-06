<#macro Preview attrs...>
    <#local PREVIEW_MAX_LENGTH = 150>
    <#local style={
        "display": "none",
        "overflow": "hidden",
        "line-height": "1px",
        "opacity": "0",
        "max-height": "0",
        "max-width": "0"
    }>
    <#local textMarkup><#nested></#local>
    <#local text = textMarkup?markup_string?truncate_c(PREVIEW_MAX_LENGTH, "")>
    <div
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"</#list>
        </#if>
        id="__freemarker-email-preview"
        style="${style?keys?map(name -> name + ':' + style[name])?join(';')}"
    >
        ${text}
        <#if text?length lt PREVIEW_MAX_LENGTH>
            <#local whiteSpaceCodes = "\xa0\x200C\x200B\x200D\x200E\x200F\xFEFF">
            <div><#list 0..(PREVIEW_MAX_LENGTH - text?length) as i>${whiteSpaceCodes}</#list></div>
        </#if>
    </div>
</#macro>