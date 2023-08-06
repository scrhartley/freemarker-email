<#macro Button style={} pX=0 pY=0 target="_blank" attrs...>
    <#local pX = pX?is_string?then(pX?trim?c_lower_case?remove_ending("px")?number, pX)>
    <#local pY = pY?is_string?then(pY?trim?c_lower_case?remove_ending("px")?number, pY)>

    <#local y = pY * 2>
    <#local textRaise = y * 3 / 4> <#-- px to pt -->

    <#local baseButtonStyle = {
        "line-height": "100%",
        "text-decoration": "none",
        "display": "inline-block",
        "max-width": "100%",
        "padding": pY?c + "px " + pX?c + "px"
    }>
    <#local buttonTextStyle = {
        "max-width": "100%",
        "display": "inline-block",
        "line-height": "120%",
        "mso-padding-alt": "0px",
        "mso-text-raise": (pY * 3 / 4)?c + "px" <#-- px to pt -->
    }>
    <a
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"</#list>
        </#if>
        data-id="freemarker-email-button"
        target="${target}"
        <#if style?is_hash>
            <#local style=style + baseButtonStyle>
            style="${style?keys?map(name -> name + ':' + style[name])?join(';')}"
        <#else>
            style="${style + ";" + baseButtonStyle?keys?map(name -> name + ':' + baseButtonStyle[name])?join(";")}"
        </#if>
    >
        <span>
            <!--[if mso]><i style="letter-spacing: ${pX?c}px;mso-font-width:-100%;mso-text-raise:${textRaise?c}" hidden>&nbsp;</i><![endif]-->
        </span>
        <span style="${buttonTextStyle?keys?map(name -> name + ':' + buttonTextStyle[name])?join(';')}"><#nested></span>
        <span>
            <!--[if mso]><i style="letter-spacing: ${pX?c}px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]-->
        </span>
    </a>
</#macro>