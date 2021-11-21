Процедура ОбработкаПроведения(Отказ,Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	//Данный фрагмент построен конструктором.
	//При повторном использовании конструктора, внесенные вручную данные будут утеряны!

	// регистр ЦеныПоставщиков
	Движения.ЦеныПоставщиков.Записывать = Истина;
	Для Каждого ТекСтрокаТовары из Товары Цикл
		Движение = Движения.ЦеныПоставщиков.Добавить();
		Движение.Период = Дата;
		Движение.Контрагент = Контрагент;
		Движение.Номенклатура = ТекСтрокаТовары.Номенклатура;
		Движение.Цена = ТекСтрокаТовары.Цена;
	КонецЦикла;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры

Процедура ПередЗаписью(Отказ, РежимЗаписи, РежимПроведения)
	СуммаДокумента = Товары.Итог("Сумма");
КонецПроцедуры
