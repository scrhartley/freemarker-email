package simon.email.freemarker;

import org.junit.jupiter.api.Test;

import static simon.email.freemarker.TestUtils.assertEqualsIgnoringWhitespace;
import static simon.email.freemarker.TestUtils.render;

public class RowDirectiveTests {

    @Test
    void renderRowComponent() {
        String actualOutput = render("<@Row />");
        assertEqualsIgnoringWhitespace("""
                <table align="center" width="100%" role="presentation" cellSpacing="0" cellPadding="0" border="0"><tbody style="width:100%"><tr style="width:100%"></tr></tbody></table>""",
                actualOutput);
    }

    @Test
    void renderRowComponentWithStyle() {
        String actualOutput = render("<@Row style={ 'opacity': 0.7654} />");
        assertEqualsIgnoringWhitespace("""
                <table align="center" width="100%" style="opacity:0.7654" role="presentation" cellSpacing="0" cellPadding="0" border="0"><tbody style="width:100%"><tr style="width:100%"></tr></tbody></table>""",
                actualOutput);
    }

}
