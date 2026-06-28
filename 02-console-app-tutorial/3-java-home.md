```
╭─zuger@alpine ~/console-app-prj
╰─$ ./gradlew run

ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation
```

## Ошибка с JAVA_HOME в контексте nix

* `nix profile add nixpkgs#jdk21` при `gradle_9`

Это означает, что у тебя в Alpine не установлен Java (или она не попала в PATH), а Gradle Wrapper не может найти JVM.

Проверь сначала:

java -version

и

echo $JAVA_HOME

Если java: command not found, то установи OpenJDK.

Если ты используешь Nix:

nix profile add nixpkgs#jdk

или, если нужен LTS:

nix profile add nixpkgs#jdk21

Затем перезапусти оболочку:

exec $SHELL -l

Проверь:

java -version
which java

Если java находится, но JAVA_HOME пустой, можно задать его:

export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))

После этого попробуй снова:

./gradlew run


---

Пришли вывод этих команд:

which java
java -version
echo $PATH
echo $JAVA_HOME

По ним будет понятно, в чём именно проблема.
