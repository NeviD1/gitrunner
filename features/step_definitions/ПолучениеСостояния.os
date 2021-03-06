﻿// Реализация шагов BDD-фич/сценариев c помощью фреймворка https://github.com/artbear/1bdd

#Использовать tempfiles

Перем БДД; //контекст фреймворка 1bdd

// Метод выдает список шагов, реализованных в данном файле-шагов
Функция ПолучитьСписокШагов(КонтекстФреймворкаBDD) Экспорт
	БДД = КонтекстФреймворкаBDD;

	ВсеШаги = Новый Массив;

	ВсеШаги.Добавить("ЯПолучаюСостояниеРепозитория");
	ВсеШаги.Добавить("ЯПолучаюКороткоеСостояниеРепозитория");

	Возврат ВсеШаги;
КонецФункции

// Реализация шагов

// Процедура выполняется перед запуском каждого сценария
Процедура ПередЗапускомСценария(Знач Узел) Экспорт
	
КонецПроцедуры

// Процедура выполняется после завершения каждого сценария
Процедура ПослеЗапускаСценария(Знач Узел) Экспорт

КонецПроцедуры

//Я получаю состояние репозитория
Процедура ЯПолучаюСостояниеРепозитория() Экспорт
	 ГитРепозиторий = БДД.ПолучитьИзКонтекста("ГитРепозиторий");
	 ГитРепозиторий.Статус();
КонецПроцедуры

//Я получаю короткое состояние репозитория
Процедура ЯПолучаюКороткоеСостояниеРепозитория() Экспорт
	ГитРепозиторий = БДД.ПолучитьИзКонтекста("ГитРепозиторий");
	ГитРепозиторий.Статус(Истина);
КонецПроцедуры