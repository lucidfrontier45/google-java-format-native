# tested on Debian 11, graalvm-ce-java17-22.1.0, google-java-format-1.15.0

native-image \
    --add-exports jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED \
    --add-exports jdk.compiler/com.sun.tools.javac.file=ALL-UNNAMED \
    --add-exports jdk.compiler/com.sun.tools.javac.parser=ALL-UNNAMED \
    --add-exports jdk.compiler/com.sun.tools.javac.tree=ALL-UNNAMED \
    --add-exports jdk.compiler/com.sun.tools.javac.util=ALL-UNNAMED \
    --initialize-at-build-time=com.sun.tools.javac.file.Locations \
    -H:+ReportExceptionStackTraces \
    -H:+ReportUnsupportedElementsAtRuntime \
    -H:IncludeResourceBundles=com.sun.tools.javac.resources.compiler \
    -H:Class=com.google.googlejavaformat.java.Main  \
    -H:Name="google-java-format" \
    --no-server \
    --no-fallback \
    -jar ${1} google-java-format