package simon.email.freemarker;

import freemarker.core.HTMLOutputFormat;
import freemarker.template.*;
import org.junit.jupiter.api.Assertions;

import java.io.IOException;
import java.io.StringWriter;
import java.io.UncheckedIOException;
import java.net.URI;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Stream;

public class TestUtils {
    private static final Version LATEST_VERSION = Configuration.VERSION_2_3_32;
    private static final String LIBRARY_PATH = "templates/email";

    public static String render(String templateStr) {
        return render(templateStr, getDefaultClassLoader());
    }
    public static String render(String templateStr, ClassLoader classLoader) {
        try {
            Configuration config = newConfiguration();
            config.setClassLoaderForTemplateLoading(classLoader, LIBRARY_PATH);
            config.setAutoIncludes(findAllComponents(classLoader));
            config.setOutputFormat(HTMLOutputFormat.INSTANCE);

            Template template = new Template(null, templateStr, config);
            StringWriter out = new StringWriter();
            template.process(null, out);
            String html = out.toString();
            return html.stripTrailing().stripIndent().trim();
        }
        catch (IOException e) {
            throw new UncheckedIOException(e);
        }
        catch (TemplateException e) {
            throw new RuntimeException(e);
        }
    }


    private static Configuration newConfiguration() {
        Configuration config = new Configuration(LATEST_VERSION);

        // Recommended settings by FreeMarker for new projects
        config.setDefaultEncoding("UTF-8");
        config.setLogTemplateExceptions(false);
        config.setWrapUncheckedExceptions(true);
        config.setFallbackOnNullLoopVariable(false);

        config.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);

        config.setObjectWrapper(createObjectWrapper(config.getIncompatibleImprovements()));

        return config;
    }

    private static ObjectWrapper createObjectWrapper(Version version) {
        DefaultObjectWrapper ow = new DefaultObjectWrapper(version);

        // Recommended settings by FreeMarker for new projects
        ow.setForceLegacyNonListCollections(false);
        ow.setDefaultDateType(TemplateDateModel.DATETIME);

        ow.writeProtect();
        return ow;
    }


    private static List<String> findAllComponents(ClassLoader classLoader) throws IOException {
        Path componentsPath = getResourcePath(LIBRARY_PATH, classLoader);
        try(Stream<Path> files = Files.list(componentsPath)) {
            return files
                    .map(child -> child.getFileName().toString())
                    .filter(name -> name.endsWith("ftlh") || name.endsWith("ftl"))
                    .filter(name -> !name.startsWith("components"))
                    .toList();
        }
    }

    public static Path getResourcePath(String resourceName, ClassLoader classLoader) {
        URL url = classLoader.getResource(resourceName);
        return Path.of(URI.create(url.toString()));
    }

    public static ClassLoader getDefaultClassLoader() {
        ClassLoader cl = null;
        try {
            cl = Thread.currentThread().getContextClassLoader();
        }
        catch (Throwable ex) {
            // Cannot access thread context ClassLoader - falling back...
        }
        if (cl == null) {
            // No thread context class loader -> use class loader of this class.
            cl = TestUtils.class.getClassLoader();
            if (cl == null) {
                // getClassLoader() returning null indicates the bootstrap ClassLoader
                try {
                    cl = ClassLoader.getSystemClassLoader();
                }
                catch (Throwable ex) {
                    // Cannot access system ClassLoader - oh well, maybe the caller can live with null...
                }
            }
        }
        return cl;
    }


    public static void assertEqualsIgnoringWhitespace(String expected, String actual) {
        Function<String,String> normalise =
                s -> s.replaceAll("\\s+", " ")
                        .replace("> </", "></")
                        .replace("\" >", "\">").replace("\" />", "\"/>")
                        .replace("> ", ">").replace(" <", "<")
                        .replaceAll("<div>[\\xA0\\u200B-\\u200F\\uFEFF]+</div>", ""); // Hack for Preview
        Assertions.assertEquals(normalise.apply(expected), normalise.apply(actual));
    }

}
