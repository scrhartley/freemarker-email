package simon.email.freemarker;

import org.junit.jupiter.api.Test;

public class ColumnDirectiveTests {

    @Test
    void renderColumnComponent() {
        String actualOutput = TestUtils.render("<@Column>Lorem ipsum</@Column>");
        TestUtils.assertEqualsIgnoringWhitespace("""
                <td data-id="__freemarker-email-column">Lorem ipsum</td>""",
                actualOutput);
    }

}
