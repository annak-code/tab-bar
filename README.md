# tab-bar

Cоздайте Tab Bar Controller, у которого три таба:

a) Первый содержит Navigation Controller с тремя кнопками: «Зеленый», «Синий» и «Красный». По нажатию на эти кнопки происходит переход на экран с цветом фона, соответствующим названию кнопки.

b) Во втором нет Navigation Controller, есть только лейбл и кнопка «Изменить». В лейбле по умолчанию написано «Выбран зеленый». При нажатии на кнопку происходит переход на следующий экран с текстовым полем с надписью «Выбран зеленый» и тремя кнопками: «Выбрать зеленый», «Выбрать синий», «Выбрать красный». По нажатию на любую из кнопок этот экран закрывается, и на предыдущем в лейбл выводится: «Выбран &lt;цвет, который только что выбрали&gt;». При нажатии на кнопку «Изменить» на следующем экране изменяется текст лейбла, показывается текущий выбранный цвет и меняется на новый цвет при нажатии.

c) Третий содержит в себе контроллер со встроенным контроллером. И у родительского, и дочернего контроллера есть три кнопки: «Зеленый», «Желтый», «Пурпурный». При нажатии на одну из кнопок в родительском контроллере фоновый цвет дочернего контроллера изменяется на соответствующий. При нажатии на кнопку в дочернем изменяется фон у родительского.
