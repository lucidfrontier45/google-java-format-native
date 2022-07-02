# google-java-format-native

Native Executable of google-java-format

# Why?

Running native binary executable has much less startup overhead than normal Java application.

```sh
$ time java -jar google-java-format-1.15.0-all-deps.jar test.java
public class JavaTest {
  public static void main(String[] args) {
    int x = 10;
  }
}
java -jar google-java-format-1.15.0-all-deps.jar test.java  1.03s user 0.07s system 172% cpu 0.641 total

$ time ./google-java-format-1.15.0-linux-x86_64 test.java
public class JavaTest {
  public static void main(String[] args) {
    int x = 10;
  }
}
./google-java-format-1.15.0-linux-x86_64 test.java  0.01s user 0.01s system 101% cpu 0.013 total
```

Therefore it is a better choice to use native executable when you want to use it from VSCode with extension like [ilkka/vscode-google-java-format]( https://github.com/ilkka/vscode-google-java-format).

# How to build?

You need to install [GraalVM](https://www.graalvm.org/) and its [Native Image](https://www.graalvm.org/22.1/reference-manual/native-image/) builder extension. Then download `google-java-format-<version>-all-deps.jar` file from its [release page](https://github.com/google/google-java-format/releases). Finally use the build script.

```sh
# Linux
./build.sh google-java-format-<version>-all-deps.jar

# Windows, must be ran from x64 Native Tools Command Prompt
build.cmd google-java-format-<version>-all-deps.jar
```

