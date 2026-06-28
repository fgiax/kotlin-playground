# Create a console app – tutorial

Source:
  - https://kotlinlang.org/docs/jvm-get-started.html

Gradle:
  - Установка из nix 1.7G version 9 `nix profile add nixpkgs#gradle_9`
  - Инициализация проекта `gradle init`
  - [Gradle Kotlin проект](gradle-kotlin-project.md)



* Maven и Gradle — это системы сборки, которые включают плагины:
  - скачивают библиотеки;
  - компилируют проект;
  - запускают тесты;
  - создают готовые .jar или другие артефакты.

Учитывая, что ты хочешь изучать Kotlin и Android, тебе почти всегда стоит выбирать Gradle + Kotlin DSL (build.gradle.kts). Именно такой подход используется в современных проектах на Kotlin и в большинстве проектов на Android.

## Gradle + Kotlin

Gradle — инструмент сборки проекта.

Kotlin — язык, на котором написан файл конфигурации Gradle (Kotlin DSL).


Структура проекта обычно выглядит так:

```
my-project/
├── src/
│   └── main/
│       └── kotlin/
│           └── Main.kt
├── build.gradle.kts   ← конфигурация Gradle на Kotlin
├── settings.gradle.kts
└── gradle.properties
```

Например, простой build.gradle.kts:

```kotlin
plugins {
    kotlin("jvm") version "2.2.0"
    application
}

repositories {
    mavenCentral()
}

dependencies {
    testImplementation(kotlin("test"))
}

application {
    mainClass.set("MainKt")
}
```

А сам код программы:

```kotlin
fun main() {
    println("Hello, Kotlin!")
}
```

Запуск выполняется одной командой:

```bash
./gradlew run
```

Компиляция:

```bash
./gradlew build
```

## Почему это хороший выбор?

- Поскольку ты уже изучаешь Kotlin и Android:
- Android использует Gradle.
- Современные Kotlin-проекты обычно используют build.gradle.kts.
- Изучив Gradle + Kotlin один раз, ты сможешь применять эти знания и в консольных приложениях, и в Android-проектах, и на сервере. Это сейчас считается стандартным подходом для экосистемы Kotlin.

## For nix

```nix
nix profile add nixpkgs#gradle_9
```

У тебя всё в порядке. nix search показал несколько вариантов Gradle.

Основной выбор такой:

gradle (8.14.4) — стабильная версия, подходит большинству проектов.

gradle_9 (9.4.1) — более новая версия. Если создаёшь новый проект и нет требований к совместимости, можно использовать её.

gradle_7 — для старых проектов.

*-unwrapped — версия без дополнительных обёрток Nix; обычным пользователям обычно не нужна.

gradle-completion — автодополнение команд для Bash и Zsh.


Если ты только начинаешь изучать Kotlin и Gradle, я бы рекомендовал установить обычный пакет:

nix profile add nixpkgs#gradle

или, если хочешь сразу использовать последнюю ветку:

nix profile add nixpkgs#gradle_9

После установки проверь:

gradle --version

Также убедись, что установлена JDK:

java -version
javac -version

Gradle без Java работать не сможет. Если JDK ещё нет, её тоже можно установить через Nix, например:

nix profile add nixpkgs#jdk

После этого можно создать свой первый проект с помощью Gradle и Kotlin DSL (build.gradle.kts) и постепенно разобраться, как устроена сборка Kotlin-приложений.
