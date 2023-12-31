# language: ru

# Тестовые данные:
  # $Значение_Наименование Помидор
  # $Значение_Тип Овощ
  # $Значение_Экзотический false

Функция: Таблица товаров с функционалом добавления товаров

  Сценарий: Проверка отображения страницы товаров
    * страница "Главная страница" загружена
    * ожидается появление поля "Таблица" в течение "5" секунд
    * ожидается появление поля "Заголовок Наименование" в течение "1" секунд
    * ожидается появление поля "Заголовок Тип" в течение "1" секунд
    * ожидается появление поля "Заголовок Экзотический" в течение "1" секунд
    * кнопка "Кнопка Добавить" активна
    * выбран элемент коллекции "Строки таблицы" с параметрами:
      | field                | operator | value                    |
      | Столбец Наименование | равно    | #{Значение_Наименование} |
      | Столбец Тип          | равно    | #{Значение_Тип}          |
      | Столбец Экзотический | равно    | #{Значение_Экзотический} |
