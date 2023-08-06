package simon.email.freemarker;

import org.junit.jupiter.api.Test;

import static simon.email.freemarker.TestUtils.assertEqualsIgnoringWhitespace;
import static simon.email.freemarker.TestUtils.render;

public class HtmlDirectiveTests {

    @Test
    void renderHtmlComponent() {
        String actualOutput = render("<@Html />");
        assertEqualsIgnoringWhitespace("""
                <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
                <html id="__freemarker-email" lang="en" dir="ltr"></html>""",
                actualOutput);
    }

}
