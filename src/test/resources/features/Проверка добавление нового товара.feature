# language: ru

# Тестовые данные:
  # $Значение_Наименование Манго
  # $Значение_Тип Фрукт
  # $Значение_Экзотический true

Функция: Таблица товаров с функционалом добавления товаров

  Сценарий: Добавление товара
    * страница "Главная страница" загружена
    * выполнено нажатие на "Кнопка Добавить"

    * страница "Модальное окно" загружена
    * ожидается появление поля "Заголовок модального окна" в течение "1" секунд
    * ожидается появление поля "Заголовок модального окна Наименование" в течение "1" секунд
    * ожидается появление поля "Заголовок модального окна Тип" в течение "1" секунд
    * ожидается появление поля "Заголовок модального окна Экзотический" в течение "1" секунд
    * кнопка "Кнопка Сохранить" активна
    * заполняются поля:
      | field                | value |
      | Поле Наименование    | Манго |
      | Поле Тип             | Фрукт |
      | Чекбокс Экзотический | true  |
    * выполнено нажатие на "Кнопка Сохранить"

    * страница "Главная страница" загружена
    * выбран элемент коллекции "Строки таблицы" с параметрами:
      | field                | operator | value                    |
      | Столбец Наименование | равно    | #{Значение_Наименование} |
      | Столбец Тип          | равно    | #{Значение_Тип}          |
      | Столбец Экзотический | равно    | #{Значение_Экзотический} |

