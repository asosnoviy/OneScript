Перем юТест;

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт

	юТест = ЮнитТестирование;
	ВсеТесты = Новый Массив;

	ВсеТесты.Добавить("ТестДолжен_ПроверитьЧтоОбластиКомпилируются");

	Возврат ВсеТесты;

КонецФункции

Функция ТестДолжен_ПроверитьЧтоОбластиКомпилируются() Экспорт

	ПодключитьСценарий("preprocessor/regions.os", "Области");
	ПроверкаОбластей = Новый ("Области");

	юТест.ПроверитьРавенство(ПроверкаОбластей.Проверка1(), "Region");
	юТест.ПроверитьРавенство(ПроверкаОбластей.Проверка2(), "Вне области");
	юТест.ПроверитьРавенство(ПроверкаОбластей.Проверка3(), "Область");

КонецФункции

