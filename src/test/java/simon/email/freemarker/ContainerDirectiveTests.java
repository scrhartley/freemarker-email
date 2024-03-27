package simon.email.freemarker;

import org.junit.jupiter.api.Test;

import static simon.email.freemarker.TestUtils.assertEqualsIgnoringWhitespace;
import static simon.email.freemarker.TestUtils.render;

public class ContainerDirectiveTests {

    @Test
    void renderContainerComponent() {
        String actualOutput = render("""
                <@Container style={ "max-width": "300px", 'opacity': 0.7654 }>
                    <button>Hi</button>
                </@Container>""");
        assertEqualsIgnoringWhitespace("""
                <table align="center" width="100%" border="0" cellPadding="0" cellSpacing="0" data-id="__freemarker-email-container" role="presentation" style="max-width:300px;opacity:0.7654"><tbody><tr style="width:100%"><td><button>Hi</button></td></tr></tbody></table>""",
                actualOutput);
    }

}
