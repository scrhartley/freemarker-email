package simon.email.freemarker;

import org.junit.jupiter.api.Test;

import static simon.email.freemarker.TestUtils.assertEqualsIgnoringWhitespace;
import static simon.email.freemarker.TestUtils.render;

public class BodyDirectiveTests {

    @Test
    void renderBodyComponent() {
        String actualOutput = render("<@Body>Lorem ipsum</@Body>");
        assertEqualsIgnoringWhitespace("""
                <body data-id="__freemarker-email-body">Lorem ipsum</body>""",
                actualOutput);
    }

    @Test
    void renderBodyWithStyleMapAndAttr() {
        String actualOutput = render("<@Body style={'color':'red', 'opacity': 0.7654 } class='myClass'>Lorem ipsum</@Body>");
        assertEqualsIgnoringWhitespace("""
                <body class="myClass" data-id="__freemarker-email-body" style="color:red;opacity:0.7654">Lorem ipsum</body>""",
                actualOutput);
    }

    @Test
    void renderBodyWithStyleAttr() {
        String actualOutput = render("<@Body style='color:red'>Lorem ipsum</@Body>");
        assertEqualsIgnoringWhitespace("""
                <body data-id="__freemarker-email-body" style="color:red">Lorem ipsum</body>""",
                actualOutput);
    }

}
