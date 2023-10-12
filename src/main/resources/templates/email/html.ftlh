<#macro Html lang="en" dir="ltr" attrs...>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html
        <#if attrs?is_hash>
            <#list attrs as name, value>${name}="${value}"<#sep> </#list>
        </#if>
        id="__freemarker-email"
        lang="${lang}"
        dir="${dir}"
    >
        <#nested>
    </html>
</#macro>