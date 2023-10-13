<#macro Button style={} target="_blank" attrs...>
    <#local pt=0 pr=0 pb=0 pl=0>
    <#local convertToPx = r' val
            ?matches(r"^([\d.]+)(.*)$")
            ?map(res -> res?groups[2]?c_lower_case?switch(
                "", val?number, "px", res?groups[1]?number, "%", res?groups[1]?number / 100 * 600,
                "em", res?groups[1]?number * 16, "rem", res?groups[1]?number * 16,
                0 <#-- Unsupported units -->
            ))
            ?first!0 '> <#-- Invalid format -->

    <#if style.padding!?is_number>
        <#local pt=style.padding pr=style.padding pb=style.padding pl=style.padding>
    <#else>
        <#local values = style.padding!?split(r"\s+", "r")
            ?filter(val -> val?has_content)?map(val -> convertToPx?eval)>
        <#switch values?size>
            <#case 1><#local pt=values[0] pr=values[0] pb=values[0] pl=values[0]><#break>
            <#case 2><#local pt=values[0] pb=values[0] pr=values[1] pl=values[1]><#break>
            <#case 3><#local pt=values[0] pr=values[1] pl=values[1] pb=values[2]><#break>
            <#case 4><#local pt=values[0] pr=values[1] pb=values[2] pl=values[3]><#break>
        </#switch>
    </#if>

    <#local padValues =
        [ style["padding-top"]!, style["padding-right"]!, style["padding-bottom"]!, style["padding-left"]! ]
            ?map(val -> val?is_string?then(val?trim, val))
            ?map(val -> (!val?has_content || val?is_number)?then(val, convertToPx?eval) )>
    <#if padValues[0]?has_content><#local pt = padValues[0]?number></#if>
    <#if padValues[1]?has_content><#local pr = padValues[1]?number></#if>
    <#if padValues[2]?has_content><#local pb = padValues[2]?number></#if>
    <#if padValues[3]?has_content><#local pl = padValues[3]?number></#if>

    <#local y = pt + pb>
    <#local textRaise = y * 3 / 4> <#-- px to pt -->

    <#local buttonStyle = style + {
        "line-height": "100%",
        "text-decoration": "none",
        "display": "inline-block",
        "max-width": "100%",
        "padding": "${pt?c}px ${pr?c}px ${pb?c}px ${pl?c}px"
    }>
    <#local buttonTextStyle = {
        "max-width": "100%",
        "display": "inline-block",
        "line-height": "120%",
        "mso-padding-alt": "0px",
        "mso-text-raise": (pb * 3 / 4)?c + "px" <#-- px to pt -->
    }>
    <a
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"<#sep> </#list>
        </#if>
        style="${buttonStyle?keys
            ?filter(key -> !key?matches("padding-(?:top|right|bottom|left)"))
            ?map(name -> name + ':' + buttonStyle[name])?join(';')}"
        target="${target}"
    >
        <span>
            <!--[if mso]><i style="letter-spacing: ${pl?c}px;mso-font-width:-100%;mso-text-raise:${textRaise?c}" hidden>&nbsp;</i><![endif]-->
        </span>
        <span style="${buttonTextStyle?keys?map(name -> name + ':' + buttonTextStyle[name])?join(';')}"><#nested></span>
        <span>
            <!--[if mso]><i style="letter-spacing: ${pr?c}px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]-->
        </span>
    </a>
</#macro>