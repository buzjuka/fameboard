#language: ru

Функционал: добавлени события, удаление события(промо-код)

#Предыстория:

@javascript
Сценарий: Добавление новой записи
И я захожу на страницу "/"
И я кликаю на кнопку "Add Inscription"
И я жду "1" секунд
И я ввожу имя "Test Testovich" в поле "Name"
И я ввожу описание "post test" в поле "Description"
И я выбираю тип "false" в селекте "Positive"
И я кликаю на кнопку "Place Inscription"
И я жду "2" секунд
И я вижу имя "Test Testovich" и описание "post test" в таблице с классом "danger"

@javascript
Сценарий: Удаление записи со стены
Если есть "inscription" в таблице с классом "success"
И я кликаю на ссылку "show"
И я жду "1" секунд
И я вижу "Test Testovich" и "Good boy" в открывшейся форме
И я кликаю на кнопку "Delete"
И я подтвеждаю действие
И я не вижу "Test Testovich" и "Good boy"