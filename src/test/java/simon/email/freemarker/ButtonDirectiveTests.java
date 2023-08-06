package simon.email.freemarker;

import org.junit.jupiter.api.Test;

import static simon.email.freemarker.TestUtils.assertEqualsIgnoringWhitespace;
import static simon.email.freemarker.TestUtils.render;

public class ButtonDirectiveTests {

    @Test
    void renderButtonComponent() {
        String actualOutput = render("<@Button pX=20 pY=12 href=\"https://example.com\" />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" data-id="freemarker-email-button" target="_blank" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;padding:12px 20px"><span><!--[if mso]><i style="letter-spacing: 20px;mso-font-width:-100%;mso-text-raise:18" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:9px"></span><span><!--[if mso]><i style="letter-spacing: 20px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);
    }

    @Test
    void renderButtonComponentWithNoPaddingValues() {
        String actualOutput = render("<@Button href=\"https://example.com\" />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" data-id="freemarker-email-button" target="_blank" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;padding:0px 0px"><span><!--[if mso]><i style="letter-spacing: 0px;mso-font-width:-100%;mso-text-raise:0" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:0px"></span><span><!--[if mso]><i style="letter-spacing: 0px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);
    }

    @Test
    void renderButtonComponentWithLargeNumbers() { // Avoid accidental i18n
        String actualOutput = render("<@Button pX=20000 pY=12000 href=\"https://example.com\" />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" data-id="freemarker-email-button" target="_blank" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;padding:12000px 20000px"><span><!--[if mso]><i style="letter-spacing: 20000px;mso-font-width:-100%;mso-text-raise:18000" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:9000px"></span><span><!--[if mso]><i style="letter-spacing: 20000px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);
    }

    @Test
    void renderButtonComponentWithStringParams() {
        // Implicit units
        String actualOutput = render("<@Button pX=\"20\" pY=\"12\" href=\"https://example.com\" />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" data-id="freemarker-email-button" target="_blank" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;padding:12px 20px"><span><!--[if mso]><i style="letter-spacing: 20px;mso-font-width:-100%;mso-text-raise:18" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:9px"></span><span><!--[if mso]><i style="letter-spacing: 20px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);

        // Explicit units
        actualOutput = render("<@Button href=\"https://example.com\" pX=\"20px\" pY=\"12PX\" />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" data-id="freemarker-email-button" target="_blank" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;padding:12px 20px"><span><!--[if mso]><i style="letter-spacing: 20px;mso-font-width:-100%;mso-text-raise:18" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:9px"></span><span><!--[if mso]><i style="letter-spacing: 20px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);
    }
}
