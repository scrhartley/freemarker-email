package simon.email.freemarker;

import org.junit.jupiter.api.Test;

import static simon.email.freemarker.TestUtils.assertEqualsIgnoringWhitespace;
import static simon.email.freemarker.TestUtils.render;

public class PreviewDirectiveTests {

    @Test
    void renderPreviewComponent() {
        // In order to match the react-email test,
        // there's a hack in assertEqualsIgnoringWhitespace to remove
        // the div that pads the preview with whitespace to reach the max character length.

        String actualOutput = render("<@Preview>Email preview text</@Preview>");
        assertEqualsIgnoringWhitespace("""
                <div id="__freemarker-email-preview" style="display:none;overflow:hidden;line-height:1px;opacity:0;max-height:0;max-width:0">Email preview text</div>""",
                actualOutput);

        actualOutput = render("<@Preview>Email ${\"preview\"} text</@Preview>");
        assertEqualsIgnoringWhitespace("""
                <div id="__freemarker-email-preview" style="display:none;overflow:hidden;line-height:1px;opacity:0;max-height:0;max-width:0">Email preview text</div>""",
                actualOutput);

        String longText = "really long".repeat(100);
        actualOutput = render("<@Preview>" + longText + "</@Preview>");
        assertEqualsIgnoringWhitespace("""
                <div id="__freemarker-email-preview" style="display:none;overflow:hidden;line-height:1px;opacity:0;max-height:0;max-width:0">really longreally longreally longreally longreally longreally longreally longreally longreally longreally longreally longreally longreally longreally </div>""",
                actualOutput);
    }
}
