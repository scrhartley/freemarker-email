package simon.email.freemarker;

import org.junit.jupiter.api.Test;

import static simon.email.freemarker.TestUtils.assertEqualsIgnoringWhitespace;
import static simon.email.freemarker.TestUtils.render;

public class HeadDirectiveTests {

    @Test
    void renderHeadComponent() {
        String actualOutput = render("<@Head />");
        assertEqualsIgnoringWhitespace("""
                <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="x-apple-disable-message-reformatting" /></head>""",
                actualOutput);
    }

    @Test
    void renderHeadComponentWithChildren() {
        String actualOutput = render("""
                <@Head>
                    <title>My email title</title>
                </@Head>
                """);
        assertEqualsIgnoringWhitespace("""
                <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="x-apple-disable-message-reformatting" /><title>My email title</title></head>""",
                actualOutput);
    }

}
