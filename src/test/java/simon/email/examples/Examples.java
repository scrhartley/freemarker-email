package simon.email.examples;

import static simon.email.freemarker.TestUtils.*;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.LinkedHashMap;
import java.util.Map;

public class Examples {

    public static void main(String[] args) {
        Map<String,String> examples = new LinkedHashMap<>(){{
            put("examples/apple-receipt.ftlh", "apple-example.html");
            put("examples/codepen-challengers.ftlh", "codepen-example.html");
            put("examples/nike-receipt.ftlh", "nike-example.html");
            put("examples/stack-overflow-tips.ftlh", "stackoverflow-example.html");
        }};
        ClassLoader classLoader = getDefaultClassLoader();

        examples.forEach((input, output) -> {
            Path templatePath = getResourcePath(input, classLoader);
            Path outputFile = templatePath.resolveSibling(output);
            try {
                String template = Files.readString(templatePath);
                String html = render(template, classLoader);
                // System.out.println(html+ "\n");
                Files.writeString(outputFile, html);
                System.out.println(outputFile);
            }
            catch (IOException e) {
                throw new UncheckedIOException(e);
            }
        });
    }

}
