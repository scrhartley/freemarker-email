package simon.email.freemarker;

import org.junit.jupiter.api.Test;

public class ImageDirectiveTests {

    @Test
    void renderImageComponent() {
        String actualOutput = TestUtils.render("<@Img src=\"cat.jpg\" alt=\"Cat\" width=\"300\" height=\"300\" />");
        TestUtils.assertEqualsIgnoringWhitespace("""
                <img data-id="freemarker-email-img" alt="Cat" src="cat.jpg" width="300" height="300" style="display:block;outline:none;border:none;text-decoration:none"/>""",
                actualOutput);
    }

    @Test
    void renderImageWithNumbersComponent() {
        String actualOutput = TestUtils.render("<@Img src=\"cat.jpg\" alt=\"Cat\" width=300 height=300 />");
        TestUtils.assertEqualsIgnoringWhitespace("""
                <img data-id="freemarker-email-img" alt="Cat" src="cat.jpg" width="300" height="300" style="display:block;outline:none;border:none;text-decoration:none"/>""",
                actualOutput);

        // Check i18n doesn't accidentally format numbers
        actualOutput = TestUtils.render("<@Img src=\"cat.jpg\" alt=\"Cat\" width=30000 height=30000 />");
        TestUtils.assertEqualsIgnoringWhitespace("""
                <img data-id="freemarker-email-img" alt="Cat" src="cat.jpg" width="30000" height="30000" style="display:block;outline:none;border:none;text-decoration:none"/>""",
                actualOutput);
    }

}
