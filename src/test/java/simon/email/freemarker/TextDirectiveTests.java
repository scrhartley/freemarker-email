package simon.email.freemarker;

import org.junit.jupiter.api.Test;

import static simon.email.freemarker.TestUtils.assertEqualsIgnoringWhitespace;
import static simon.email.freemarker.TestUtils.render;

public class TextDirectiveTests {

    @Test
    void renderTextComponent() {
        String actualOutput = render("<@Text>Lorem ipsum</@Text>");
        assertEqualsIgnoringWhitespace("""
                <p data-id="freemarker-email-text" style="font-size:14px;line-height:24px;margin:16px 0">Lorem ipsum</p>""",
                actualOutput);
    }

    @Test
    void renderHrComponentWithStyleMap() {
        String actualOutput = render(
                "<@Text style={ 'font-size': '16px', 'opacity': 0.7654 }>Lorem ipsum</@Text>");
        assertEqualsIgnoringWhitespace("""
                <p data-id="freemarker-email-text" style="font-size:16px;line-height:24px;margin:16px 0;opacity:0.7654">Lorem ipsum</p>""",
                actualOutput);
    }

    @Test
    void renderHrComponentWithStyleAttr() {
        String actualOutput = render("<@Text style='color:red'>Lorem ipsum</@Text>");
        assertEqualsIgnoringWhitespace("""
                <p data-id="freemarker-email-text" style="font-size:14px;line-height:24px;margin:16px 0;color:red">Lorem ipsum</p>""",
                actualOutput);
    }

}
