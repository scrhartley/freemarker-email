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

    @Test
    void renderColumnComponentWithStyle() {
        String actualOutput = TestUtils.render("<@Column style={ 'opacity': 0.7654 }>Lorem ipsum</@Column>");
        TestUtils.assertEqualsIgnoringWhitespace("""
                <td data-id="__freemarker-email-column" style="opacity:0.7654">Lorem ipsum</td>""",
                actualOutput);
    }

}
