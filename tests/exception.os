﻿///////////////////////////////////////////////////////////////////////
//
// Тест проверки работы с исключениями
// 
//
///////////////////////////////////////////////////////////////////////

Перем юТест;

////////////////////////////////////////////////////////////////////
// Программный интерфейс

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт
	
	юТест = ЮнитТестирование;
	
	ВсеТесты = Новый Массив;
	
	ВсеТесты.Добавить("ТестДолженПроверитьИсключенияИдущиеДругЗаДругом");
	
	Возврат ВсеТесты;
	
КонецФункции

Процедура ТестДолженПроверитьИсключенияИдущиеДругЗаДругом() Экспорт
	ТекстОшибки = "";
	Попытка
		БроситьИсключение(1, 2);
	Исключение
		ТекстОшибки = ОписаниеОшибки();
		Сообщить("внутри исключения (1, 2)");
	КонецПопытки;
	
	юТест.ПроверитьНеравенство("", ТекстОшибки, "Должны были получить текст исключения, но не получили");
	
КонецПроцедуры

Процедура БроситьИсключение(Парам1, Парам2)
	Сообщить("до "+Парам1);
	Попытка
		ВызватьИсключение Парам1;
	Исключение
		ТекстОшибки = ОписаниеОшибки();
		Сообщить("внутри исключения "+Парам1);
	КонецПопытки;

	Сообщить("до "+Парам2);
	ВызватьИсключение Парам2;
КонецПроцедуры