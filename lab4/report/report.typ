#show raw.where(block: true): it => { set par(justify: false); grid(
  columns: (100%, 100%),
  column-gutter: -100%,
  block(width: 100%, inset: 1em, for i in it.text.split("\n") {
    linebreak()
  }),
  block(radius: 1em, fill: luma(246), width: 100%, inset: 1em, it),
)}

#set page(
	paper: "a4",
	margin: (x: 0.8cm, y: 1.5cm),
)

#set text(
	font: "New Computer Modern",
	size: 11pt,
)

#set par(
	first-line-indent: 2em,
)

#set page(numbering: none)
#align(center, block[
	#set text(size: 12pt)
	#set heading(outlined: false)
	= Министерство науки и вышего образования Российской Федерации
	= Федеральное государственное бюджетное образовательное учреждение высшего образования
	#set text(lang: "fr")
	= "Российский химико-технологический университет имени Д.И. Менделеева" 
])

#let count = 0
#while count < 10 {
	$ #linebreak() $
	count = count + 1
}

#align(center, block[
	#set text(size: 16pt)
	#set heading(outlined: false)
	= ОТЧЕТ ПО ЛАБОРАТОРНОЙ РАБОТЕ №4
])

#let count = 0
#while count < 10 {
	$ #linebreak() $
	count = count + 1
}

#align(center)[
	#table(
		columns: (8.85cm,) + (10.8cm,),
		stroke: none,

		table.cell(text(size: 14.4pt, "Выполнил студент группы КС-36:"), align: right), table.cell(text(size: 14.4pt, "Золотухин А.А."), align: left),
		table.cell(text(size: 14.4pt, "Ссылка на репозиторий:"), align: right), table.cell(text(size: 14.4pt, "https://github.com/"), align: left),
		table.cell("", align: right), table.cell(text(size: 14.4pt, "CorgiPuppy/"), align: left),
		table.cell("", align: right), table.cell(text(size: 14.4pt, "administration-of-information-systems-labs"), align: left),
		table.cell(text(size: 14.4pt, "Принял:"), align: right), table.cell(text(size: 14.4pt, "Митричев Иван Игоревич"), align: left),
		table.cell(text(size: 14.4pt, "Дата сдачи:"), align: right), table.cell(text(size: 14.4pt, "12.03.25"), align: left),
		
	)
]

#let count = 0
#while count < 9 {
	$ #linebreak() $
	count = count + 1
}

#align(center, block[
	#set text(size: 14.4pt)
	#set heading(outlined: false)
	= Москва
	= 2025
])

#pagebreak()

#align(center, block[
	#outline(
		
		title: "Оглавление",
	)
])

#pagebreak()

#align(center, block[
	= Описание и выполнение задачи 
	== Задание 1
])
#let codeblock-1 = read("../src/task1/main.sh")
#raw(codeblock-1, block:true, lang: "bash")
(@task1)
#figure(
	image("../assets/task1.png"),
	caption: [Задание 1.],
	supplement: [Рис.],
) <task1>

#align(center, block[
	== Задание 2
])
#let codeblock-2 = read("../src/task2/main.sh")
#raw(codeblock-2, block:true, lang: "bash")
(@task2)
#figure(
	image("../assets/task2.png"),
	caption: [Задание 2.],
	supplement: [Рис.],
) <task2>
#let results = csv("../outputs/task2/output.csv")
#table(
  columns: 4,
  ..results.flatten(),
)

#align(center, block[
	== Задание 3
])
#let codeblock-3 = read("../src/task3/main.sh")
#raw(codeblock-3, block:true, lang: "bash")
(@task3)
#figure(
	image("../assets/task3.png"),
	caption: [Задание 3.],
	supplement: [Рис.],
) <task3>
#figure(
	image("../plots/pictures/task3.png"),
	caption: [Задание 3.],
	supplement: [Рис.],
) <task3_plot>
