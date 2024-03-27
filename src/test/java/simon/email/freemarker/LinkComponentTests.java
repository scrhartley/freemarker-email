package simon.email.freemarker;

import org.junit.jupiter.api.Test;

public class LinkComponentTests {

    @Test
    void renderLinkComponent() {
        String actualOutput = TestUtils.render("<@Link href=\"https://example.com\">Example</@Link>");
        TestUtils.assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" data-id="freemarker-email-link" target="_blank" style="color:#067df7;text-decoration:none">Example</a>""",
                actualOutput);
    }

    @Test
    void renderLinkComponentWithStyle() {
        String actualOutput = TestUtils.render(
                "<@Link href=\"https://example.com\" style={ 'opacity': 0.7654 }>Example</@Link>");
        TestUtils.assertEqualsIgnoringWhitespace("""
                <a href="https://example.com" data-id="freemarker-email-link" target="_blank" style="color:#067df7;text-decoration:none;opacity:0.7654">Example</a>""",
                actualOutput);
    }

}
