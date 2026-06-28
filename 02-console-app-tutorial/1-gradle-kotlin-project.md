## Gradle Kotlin проект

Если ты создаешь проект для изучения Kotlin (консольное приложение), то выбирай:

1 — Application

Затем мастер задаст еще несколько вопросов. Рекомендую такие ответы:

Select type of build to generate:
1

Select implementation language:
Kotlin

Split functionality across multiple subprojects?
No

Select build script DSL:
Kotlin

Select test framework:
JUnit Jupiter

Project name:
console-app-prj

Source package:
можно оставить пустым или написать, например:
com.zuger

В результате получится структура примерно такая


```
console-app-prj/
├── app/
│   ├── build.gradle.kts
│   └── src/
│       ├── main/kotlin/
│       │   └── App.kt
│       └── test/kotlin/
├── gradle/
├── gradlew
├── gradlew.bat
├── settings.gradle.kts
└── gradle.properties
```

Запуск проекта:

./gradlew run

или, если установлен Gradle глобально:

gradle run

Для изучения Kotlin это хороший старт: ты сразу познакомишься с Gradle, Kotlin DSL (build.gradle.kts) и организацией проекта. Позже, когда перейдешь к Android, Gradle уже будет знаком.


> Maven и Gradle — это системы автоматизации сборки (build tools). Они поддерживают плагины, с помощью которых расширяется их функциональность.


## Плагины позволяют системе сборки выполнять разные задачи:

компилировать код;

запускать тесты;

создавать JAR или APK;

публиковать библиотеки;

генерировать документацию;

запускать приложение и многое другое.


Например, в Gradle:

plugins {
    application
    kotlin("jvm") version "2.2.0"
}

Здесь подключены два плагина:

application — добавляет возможность запускать приложение (gradlew run), создавать исполняемые JAR и т.д.

kotlin("jvm") — учит Gradle компилировать Kotlin-код для JVM.


Поэтому можно представить это так:

Gradle (система сборки)
│
├── Kotlin plugin
├── Application plugin
├── Java plugin
├── Android plugin
└── другие плагины

Именно плагины добавляют в Gradle новые задачи (tasks) и возможности. Без плагинов Gradle — это лишь общий движок автоматизации, а не инструмент, который сам по себе умеет собирать Java- или Kotlin-проекты.
