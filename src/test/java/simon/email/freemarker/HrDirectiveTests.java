package simon.email.freemarker;

import org.junit.jupiter.api.Test;

import static simon.email.freemarker.TestUtils.assertEqualsIgnoringWhitespace;
import static simon.email.freemarker.TestUtils.render;

public class HrDirectiveTests {

    @Test
    void renderHrComponent() {
        String actualOutput = render("<@Hr />");
        assertEqualsIgnoringWhitespace("""
                <hr data-id="freemarker-email-hr" style="width:100%;border:none;border-top:1px solid #eaeaea">""",
                actualOutput);
    }

    @Test
    void renderHrComponentWithStyleMap() {
        String actualOutput = render("<@Hr style={ 'width': '99%' } />");
        assertEqualsIgnoringWhitespace("""
                <hr data-id="freemarker-email-hr" style="width:99%;border:none;border-top:1px solid #eaeaea">""",
                actualOutput);
    }

    @Test
    void renderHrComponentWithStyleAttr() {
        String actualOutput = render("<@Hr style='color:red' />");
        assertEqualsIgnoringWhitespace("""
                <hr data-id="freemarker-email-hr" style="width:100%;border:none;border-top:1px solid #eaeaea;color:red">""",
                actualOutput);
    }

}
