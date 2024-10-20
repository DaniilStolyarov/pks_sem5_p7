# Практика 7 Столяров ЭФБО-01-22 22T0318
## Задание
Создать приложение для медицинского центра по дизайну в Figma. Следить за соответствием цвета, шрифтов, отступов.

## Ход выполнения

### Шаг 1. Настройка проекта для работы с иконками
Экспортируем все использующиеся в проекте иконки из Figma.

![изображение](https://github.com/user-attachments/assets/ad01d226-b8af-4209-bb92-ba540479a0f5)

Установим библиотеку для импорта иконок
<pre>
  flutter pub add flutter_svg
</pre>

### Шаг 2. Настройка проекта для работы с шрифтом Montserrat
Скачаем варианты шрифта Montserrat с Google Fonts

![изображение](https://github.com/user-attachments/assets/d1a58907-c273-486b-8c10-3a4d5aa04f7b)

Внесём соответствующие изменения в файл pubspec.yaml:
<pre>
  flutter:
  uses-material-design: true
  assets:
  - assets/
  - assets/icons/
  - assets/fonts/
  - assets/fonts/Montserrat/
  - assets/fonts/Montserrat/static/
  fonts:
  - family: Montserrat
    fonts:
      - asset: assets/fonts/Montserrat/Montserrat-Italic-VariableFont_wght.ttf
      - asset: assets/fonts/Montserrat/Montserrat-VariableFont_wght.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-Black.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-BlackItalic.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-Bold.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-BoldItalic.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-ExtraBoldItalic.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-ExtraLight.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-ExtraLightItalic.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-Italic.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-Light.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-LightItalic.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-Medium.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-MediumItalic.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-Regular.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-SemiBold.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-SemiBoldItalic.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-Thin.ttf
      - asset: assets/fonts/Montserrat/static/Montserrat-ThinItalic.ttf
</pre>

### Шаг 3. Вёрстка страниц Главная, Корзина, Профиль
Вот что у меня получилось:

![изображение](https://github.com/user-attachments/assets/05254aeb-a878-4008-bcd8-7a21a3d65a2e)

![изображение](https://github.com/user-attachments/assets/ccdd2e67-54e3-4ff5-91c3-38fa9c35c08c)

![изображение](https://github.com/user-attachments/assets/94bd1bfc-c9e9-4bf3-af83-94b086c281ce)



