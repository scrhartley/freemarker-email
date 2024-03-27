package simon.email.freemarker;

import static org.junit.jupiter.api.Assertions.*;
import static simon.email.freemarker.TestUtils.*;

import org.junit.jupiter.api.Test;

public class ButtonDirectiveTests {

    @Test
    void renderButtonWithChildren() {
        String testMessage = "Test message";
        String actualOutput = render("<@Button href=\"https://example.com\">" + testMessage + "</@Button>");
        assertTrue(actualOutput.contains(testMessage));
    }

    @Test
    void renderButtonPassingStyleAndAttr() {
        String actualOutput = render("""
            <@Button data\\-testid="button-test" style={ "background-color": "red" } href="https://example.com" />""");
        assertTrue(actualOutput.contains("background-color:red"));
        assertTrue(actualOutput.contains("data-testid=\"button-test\""));
    }

    @Test
    void renderButtonComponentWithPassingValuesFromStyle() {
        String actualOutput = render("<@Button href=\"https://example.com\" style={ \"padding\": \"12px 20px\"} />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;padding:12px 20px 12px 20px" target="_blank"><span><!--[if mso]><i style="letter-spacing: 20px;mso-font-width:-100%;mso-text-raise:18" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:9px"></span><span><!--[if mso]><i style="letter-spacing: 20px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);
    }

    @Test
    void renderButtonPassingStyleOverridingDefaultValues() {
        String actualOutput = render("""
            <@Button href="https://example.com" style={
                "line-height": "150%",
                "display": "block",
                "text-decoration": "underline red",
                "max-width": "50%"
            } />""");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" style="line-height:150%;text-decoration:underline red;display:block;max-width:50%;padding:0px 0px 0px 0px" target="_blank"><span><!--[if mso]><i style="letter-spacing: 0px;mso-font-width:-100%;mso-text-raise:0" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:0px"></span><span><!--[if mso]><i style="letter-spacing: 0px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);
    }

    @Test
    void renderButtonComponentWithNoPaddingValues() {
        String actualOutput = render("<@Button href=\"https://example.com\" />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;padding:0px 0px 0px 0px" target="_blank"><span><!--[if mso]><i style="letter-spacing: 0px;mso-font-width:-100%;mso-text-raise:0" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:0px"></span><span><!--[if mso]><i style="letter-spacing: 0px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);
    }

    @Test
    void renderButtonComponentWithLongNumbers() { // Avoid accidental i18n
        String actualOutput = render("<@Button style={ 'padding': '12000px 20000px' } href=\"https://example.com\" />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;padding:12000px 20000px 12000px 20000px" target="_blank"><span><!--[if mso]><i style="letter-spacing: 20000px;mso-font-width:-100%;mso-text-raise:18000" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:9000px"></span><span><!--[if mso]><i style="letter-spacing: 20000px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);

        actualOutput = render("<@Button style={ 'padding-right': 12000 } href=\"https://example.com\" />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;padding:0px 12000px 0px 0px" target="_blank"><span><!--[if mso]><i style="letter-spacing: 0px;mso-font-width:-100%;mso-text-raise:0" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:0px"></span><span><!--[if mso]><i style="letter-spacing: 12000px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);

        actualOutput = render("<@Button style={ 'opacity': 0.7654 } href=\"https://example.com\" />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;opacity:0.7654;padding:0px 0px 0px 0px" target="_blank"><span><!--[if mso]><i style="letter-spacing: 0px;mso-font-width:-100%;mso-text-raise:0" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:0px"></span><span><!--[if mso]><i style="letter-spacing: 0px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);
    }

    @Test
    void renderButtonComponentWithLeftPadding() {
        String actualOutput = render("<@Button style={ 'padding-left': '50px' } href=\"https://example.com\" />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;padding:0px 0px 0px 50px" target="_blank"><span><!--[if mso]><i style="letter-spacing: 50px;mso-font-width:-100%;mso-text-raise:0" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:0px"></span><span><!--[if mso]><i style="letter-spacing: 0px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);
    }

    @Test
    void renderButtonComponentWithPaddingAndLeftPadding() {
        String actualOutput = render("<@Button style={ 'padding': '50px', 'padding-left': 0 } href=\"https://example.com\" />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;padding:50px 50px 50px 0px" target="_blank"><span><!--[if mso]><i style="letter-spacing: 0px;mso-font-width:-100%;mso-text-raise:75" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:37.5px"></span><span><!--[if mso]><i style="letter-spacing: 50px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);
    }

    @Test
    void renderButtonComponentWithMultiplePaddingUnits() {
        String actualOutput = render("<@Button style={ 'padding': '50% 50px 2em 1.5rem' } href=\"https://example.com\" />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;padding:300px 50px 32px 24px" target="_blank"><span><!--[if mso]><i style="letter-spacing: 24px;mso-font-width:-100%;mso-text-raise:249" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:24px"></span><span><!--[if mso]><i style="letter-spacing: 50px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);
    }

    @Test
    void renderButtonComponentWithUnsupportedUnitsAndNumbers() {
        String actualOutput = render("<@Button style={ 'padding': '1.5rem 13cm', 'padding-left': 2 } href=\"https://example.com\" />");
        assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" style="line-height:100%;text-decoration:none;display:inline-block;max-width:100%;padding:24px 0px 24px 2px" target="_blank"><span><!--[if mso]><i style="letter-spacing: 2px;mso-font-width:-100%;mso-text-raise:36" hidden>&nbsp;</i><![endif]--></span><span style="max-width:100%;display:inline-block;line-height:120%;mso-padding-alt:0px;mso-text-raise:18px"></span><span><!--[if mso]><i style="letter-spacing: 0px;mso-font-width:-100%" hidden>&nbsp;</i><![endif]--></span></a>""",
                actualOutput);
    }

    @Test
    void renderButtonComponentCheckingPxToPt() {
        String actualOutput = render("<@Button style={ 'padding-bottom': '20px' } href=\"https://example.com\" />");
        assertTrue(actualOutput.contains("mso-text-raise:15"));
    }

}
