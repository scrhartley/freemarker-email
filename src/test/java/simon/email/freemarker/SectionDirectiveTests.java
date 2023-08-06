package simon.email.freemarker;

import org.junit.jupiter.api.Test;

import java.util.regex.MatchResult;
import java.util.regex.Pattern;

import static simon.email.freemarker.TestUtils.assertEqualsIgnoringWhitespace;
import static simon.email.freemarker.TestUtils.render;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class SectionDirectiveTests {

    @Test
    void renderSectionComponent() {
        String actualOutput = render("<@Section>Lorem ipsum</@Section>");
        assertEqualsIgnoringWhitespace("""
                <table align="center" width="100%" data-id="freemarker-email-section" border="0" cellPadding="0" cellSpacing="0" role="presentation"><tbody><tr><td>Lorem ipsum</td></tr></tbody></table>""",
                actualOutput);
    }

    @Test
    void renderSectionComponentWithTdWrapperWhenNoColumn() {
        String actualOutput = render("""
                <@Section>
                    <div>Lorem ipsum</div>
                </@Section>""");
        assertTrue(actualOutput.contains("<td>"));
    }

    @Test
    void renderSectionComponentWithTdWrapperIfColumnProvided() {
        String actualOutput = render("""
                <@Section>
                    <td>Lorem ipsum</td>
                </@Section>""");
        assertTrue(actualOutput.contains("<td>"));
    }

    @Test
    void renderSectionComponentWithTdWrapperIfAnyChildProvided() {
        String actualOutput = render("""
                <@Section>
                    <div>Lorem ipsum</div>
                    <p>Lorem ipsum</p>
                    <img src="lorem.ipsum" alt="Lorem" />
                </@Section>""");
        Pattern pattern = Pattern.compile("<td\\s*.*?>.*?</td>", Pattern.DOTALL);
        var tdChildrenList = pattern.matcher(actualOutput)
                .results().map(MatchResult::group).toList();
        assertEquals(1, tdChildrenList.size());
    }


}
