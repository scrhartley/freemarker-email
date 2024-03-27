<#-- Unlike in react-email, FreeMarker doesn't allow a parameter called "as", so rename it to "tag". -->
<#-- All of the margin parameters below accept both strings or numbers. -->
<#macro Heading tag="h1" style={} m="" mx="" my="" mt="" mr="" mb="" ml="" attrs...>
    <#local m  = m?is_number?then(m?c, m?trim?c_lower_case)>
    <#local mx = mx?is_number?then(mx?c, mx?trim?c_lower_case)>
    <#local my = my?is_number?then(my?c, my?trim?c_lower_case)>
    <#local mt = mt?is_number?then(mt?c, mt?trim?c_lower_case)>
    <#local mr = mr?is_number?then(mr?c, mr?trim?c_lower_case)>
    <#local mb = mb?is_number?then(mb?c, mb?trim?c_lower_case)>
    <#local ml = ml?is_number?then(ml?c, ml?trim?c_lower_case)>

    <#local marginStyle = {}>
    <#if m?has_content><#local  marginStyle += { "margin": m?ensure_ends_with("px") }></#if>
    <#if mx?has_content><#local marginStyle += { "margin-left":   mx?ensure_ends_with("px"),
                                                 "margin-right":  mx?ensure_ends_with("px") }></#if>
    <#if my?has_content><#local marginStyle += { "margin-top":    my?ensure_ends_with("px"),
                                                 "margin-bottom": my?ensure_ends_with("px") }></#if>
    <#if mt?has_content><#local marginStyle += { "margin-top":    mt?ensure_ends_with("px") }></#if>
    <#if mr?has_content><#local marginStyle += { "margin-right":  mr?ensure_ends_with("px") }></#if>
    <#if mb?has_content><#local marginStyle += { "margin-bottom": mb?ensure_ends_with("px") }></#if>
    <#if ml?has_content><#local marginStyle += { "margin-left":   ml?ensure_ends_with("px") }></#if>
    <${tag}
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"<#sep> </#list>
        </#if>
        <#if style?is_hash>
            <#local style=marginStyle + style>
            style="<#list style as key, val>${key}:${val?is_number?then(val?c, val)}<#sep>;</#list>"
        <#else>
            style="<#list marginStyle as key, val>${key}:${val}<#sep>;</#list>;${style}"
        </#if>
    >
        <#nested>
    </${tag}>
</#macro>