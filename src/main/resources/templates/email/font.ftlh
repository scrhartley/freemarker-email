<#macro Font fontFamily fallbackFontFamily webFont={} fontStyle="normal" fontWeight=400>
    <style>
         @font-face {
            font-family: '${fontFamily}';
            font-style: ${fontStyle};
            font-weight: ${fontWeight};
            mso-font-alt: '${
                fallbackFontFamily?is_sequence?then(fallbackFontFamily[0], fallbackFontFamily) }';
            <#if webFont?has_content>src: url(${webFont.url}) format('${webFont.format}')</#if>
        }
        * {
            font-family: '${fontFamily}', ${
                fallbackFontFamily?is_sequence?then(fallbackFontFamily.join(", "), fallbackFontFamily) };
        }
    </style>
</#macro>