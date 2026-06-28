# kotlin-playground

For learning

## 🦜 хорошая идея

Создать отдельный репозиторий для изучения Kotlin обычно удобнее,
чем смешивать эксперименты с основным проектом.

Можно организовать его примерно так:

```
kotlin-playground/
├── README.md
├── .gitignore
├── 01-basics/
├── 02-functions/
├── 03-classes/
├── 04-null-safety/
├── 05-collections/
├── 06-generics/
├── 07-coroutines/
├── 08-compose-experiments/
└── snippets/
```

В таком репозитории можно:
- сохранять небольшие программы;
- писать заметки в README.md;
- делать отдельные коммиты после изучения каждой темы;
- экспериментировать, не боясь что-то сломать.


Например:

```bash
git init
git add .
git commit -m "Initial Kotlin playground"
```

А затем после каждой темы:

```bash
git add .
git commit -m "Learn when expression"
git commit -m "Practice data classes"
git commit -m "Collections map filter reduce"
```

Так у тебя получится история обучения,
и позже будет легко посмотреть,
как менялось понимание языка.

Поскольку ты уже планируешь изучать Android, Jetpack Compose и Material Design, я бы разделил обучение:
kotlin-playground — только язык Kotlin и стандартная библиотека.
Android-проект — применение Kotlin в Android и Compose.

Так будет проще сосредоточиться сначала на языке, а затем использовать его в разработке приложений.

