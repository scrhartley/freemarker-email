package simon.email.freemarker;

import org.junit.jupiter.api.Test;

import static simon.email.freemarker.TestUtils.assertEqualsIgnoringWhitespace;
import static simon.email.freemarker.TestUtils.render;

public class FontDirectiveTests {

    @Test
    void renderFontComponent() {
        String actualOutput = render("<@Font fontFamily=\"Roboto\" fallbackFontFamily=\"Verdana\" />");
        assertEqualsIgnoringWhitespace("""
                <style>
                    @font-face {
                        font-family: 'Roboto';
                        font-style: normal;
                        font-weight: 400;
                        mso-font-alt: 'Verdana';
                    }
                        
                    * {
                        font-family: 'Roboto', Verdana;
                    }
                </style>""",
                actualOutput);
    }

}
