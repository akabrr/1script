﻿Перем юТест;

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт
	
	юТест = ЮнитТестирование;
	
	ВсеТесты = Новый Массив;
	
	ВсеТесты.Добавить("ТестДолжен_ПроверитьАвторизациюПроксиПоУмолчанию");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьАвторизациюПрокси");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьСвойствоПортHttpСоединения");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьСвойстваПользовательПарольHttpСоединения");
	
	Возврат ВсеТесты;
КонецФункции

Процедура ТестДолжен_ПроверитьАвторизациюПроксиПоУмолчанию() Экспорт
	
	Прокси = Новый ИнтернетПрокси(Истина);
	
	Прокси.Пользователь = "someuser";
	Прокси.Пароль = "somepassword";
	
	юТест.ПроверитьРавенство("someuser",Прокси.Пользователь);
	юТест.ПроверитьРавенство("somepassword",Прокси.Пароль);
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьАвторизациюПрокси() Экспорт
	
	Прокси = Новый ИнтернетПрокси();
	
	Прокси.Пользователь = "someuser";
	Прокси.Пароль = "somepassword";
	
	юТест.ПроверитьРавенство("someuser",Прокси.Пользователь);
	юТест.ПроверитьРавенство("somepassword",Прокси.Пароль);
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьСвойствоПортHttpСоединения() Экспорт

	Соединение = Новый HttpСоединение("http://localhost:8080");
	
	юТест.ПроверитьРавенство(8080, Соединение.Порт);
	
	Соединение = Новый HttpСоединение("http://localhost", 8080);
	
	юТест.ПроверитьРавенство(8080, Соединение.Порт);
	
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьСвойстваПользовательПарольHttpСоединения() Экспорт
	Соединение = Новый HttpСоединение("http://localhost");
	
КонецПроцедуры
