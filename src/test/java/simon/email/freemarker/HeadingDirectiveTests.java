package simon.email.freemarker;

import org.junit.jupiter.api.Test;

import static simon.email.freemarker.TestUtils.assertEqualsIgnoringWhitespace;
import static simon.email.freemarker.TestUtils.render;

public class HeadingDirectiveTests {

    @Test
    void renderHeadingComponent() {
        // Pass string for margin
        String actualOutput = render("""
                <@Heading mx="4" tag="h2">
                    Lorem ipsum
                </@Heading>""");
        assertEqualsIgnoringWhitespace("""
                <h2 style="margin-left:4px;margin-right:4px">Lorem ipsum</h2>""",
                actualOutput);

        // Pass string with pixels for margin
        actualOutput = render("""
                <@Heading mt="4px" mb="4PX" tag="h2">
                    Lorem ipsum
                </@Heading>""");
        assertEqualsIgnoringWhitespace("""
                <h2 style="margin-top:4px;margin-bottom:4px">Lorem ipsum</h2>""",
                actualOutput);

        // Pass number for margin
        actualOutput = render("""
                <@Heading mx=4 tag="h2">
                    Lorem ipsum
                </@Heading>""");
        assertEqualsIgnoringWhitespace("""
                <h2 style="margin-left:4px;margin-right:4px">Lorem ipsum</h2>""",
                actualOutput);

        // Pass large number for margin (make sure we don't get unintended localization)
        actualOutput = render("""
                <@Heading mx=4000 tag="h2">
                    Lorem ipsum
                </@Heading>""");
        assertEqualsIgnoringWhitespace("""
                <h2 style="margin-left:4000px;margin-right:4000px">Lorem ipsum</h2>""",
                actualOutput);
    }

}
