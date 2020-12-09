;Initial rule for user's data
(defrule idata
  (initial-fact)
=>
  ; Enter age and create a fact with age
  (printout t crlf "enter your age pls(0-150): ")
  (bind ?years (read))
  (assert (years ?years))
  
  ; Enter your preferred language and create the corresponding rule
  (printout t crlf "Enter your preferred language (Foreign or Russian): ")
  (bind ?language (read))
  (assert (language ?language))

  ; Enter a condition and create a corresponding rule
  (printout t crlf "Enter a condition (Party, Background, Car): ")
  (bind ?condition (read))
  (assert (condition ?condition))

  ; Enter a genre and create a corresponding rule
  (printout t crlf "Genre of music (Pop, Rock, HipHop, Dance): ")
  (bind ?genre (read))
  (assert (genre ?genre)))

; Defining the category of a person's adulthood
(defrule R1
	(years ?years)
	(test (< ?years 12))
=>
(assert (age Child)))
(defrule R2
	(years ?years)
	(test (and (>= ?years 12) (<= ?years 25)))
=>
(assert (age Teenager)))
(defrule R3
	(years ?years)
	(test (> ?years 25))
=>
(assert (age Adult)))

; Defining rules for the expert system
(defrule R4
	(age Child)
	(language Foreign)
	(condition Party)
	(genre Pop)
=>
; Conclusion of the recommendation
(printout t crlf crlf "Recomendation is: The Weeknd - Blinding Lights" crlf)
; Creating a fact with a solution
(assert (recommended "The Weeknd - Blinding Lights"))
)

(defrule R5
	(age Child)
	(language Foreign)
	(condition Party)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Imagine Dragons - Thunder" crlf)
(assert (recommended "Imagine Dragons - Thunder"))
)

(defrule R6
	(age Child)
	(language Foreign)
	(condition Party)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Desiigner - Panda" crlf)
(assert (recommended "Desiigner - Panda"))
)

(defrule R7
	(age Child)
	(language Foreign)
	(condition Party)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Kush Kush - I'm Blue" crlf)
(assert (recommended "Kush Kush - I'm Blue"))
)

(defrule R8
	(age Child)
	(language Foreign)
	(condition Background)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: SIA - Chandelier" crlf)
(assert (recommended "SIA - Chandelier"))
)

(defrule R9
	(age Child)
	(language Foreign)
	(condition Background)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Twenty one pilots - Stressed Out" crlf)
(assert (recommended "Twenty one pilots - Stressed Out"))
)

(defrule R10
	(age Child)
	(language Foreign)
	(condition Background)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Drake - One Dance" crlf)
(assert (recommended "Drake - One Dance"))
)

(defrule R11
	(age Child)
	(language Foreign)
	(condition Background)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: KSHMR - Kids" crlf)
(assert (recommended "KSHMR - Kids"))
)

(defrule R12
	(age Child)
	(language Foreign)
	(condition Car)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Miley Cyrus - Wrecking Ball" crlf)
(assert (recommended "Miley Cyrus - Wrecking Ball"))
)

(defrule R13
	(age Child)
	(language Foreign)
	(condition Car)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: 5 Seconds of Summer - Teeth" crlf)
(assert (recommended "5 Seconds of Summer - Teeth"))
)

(defrule R14
	(age Child)
	(language Foreign)
	(condition Car)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Stefflon Don - Hurtin Me" crlf)
(assert (recommended "Stefflon Don - Hurtin Me"))
)

(defrule R15
	(age Child)
	(language Foreign)
	(condition Car)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Arnon - G Paradise" crlf)
(assert (recommended "Arnon - G Paradise"))
)

(defrule R16
	(age Child)
	(language Russian)
	(condition Party)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Quest Pistols Show - Непохожие" crlf)
(assert (recommended "Quest Pistols Show - Непохожие"))
)

(defrule R17
	(age Child)
	(language Russian)
	(condition Party)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Animal ДжаZ - Три полоски" crlf)
(assert (recommended "Animal ДжаZ - Три полоски"))
)

(defrule R18
	(age Child)
	(language Russian)
	(condition Party)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Rakhim - Fendi" crlf)
(assert (recommended "Rakhim - Fendi"))
)

(defrule R19
	(age Child)
	(language Russian)
	(condition Party)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Rauf & Faik - Если тебе будет грустно" crlf)
(assert (recommended "Rauf & Faik - Если тебе будет грустно"))
)

(defrule R20
	(age Child)
	(language Russian)
	(condition Background)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Mband - Она вернётся" crlf)
(assert (recommended "Mband - Она вернётся"))
)

(defrule R21
	(age Child)
	(language Russian)
	(condition Background)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Жуки - Батарейка" crlf)
(assert (recommended "Жуки - Батарейка"))
)

(defrule R22
	(age Child)
	(language Russian)
	(condition Background)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Звонкий - Голоса" crlf)
(assert (recommended "Звонкий - Голоса"))
)

(defrule R23
	(age Child)
	(language Russian)
	(condition Background)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Rompasso - Ignis" crlf)
(assert (recommended "Rompasso - Ignis"))
)

(defrule R24
	(age Child)
	(language Russian)
	(condition Car)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: IOWA - бьёт бит" crlf)
(assert (recommended "IOWA - бьёт бит"))
)

(defrule R24
	(age Child)
	(language Russian)
	(condition Car)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Леприконсы - Хали-гали, паратрупер" crlf)
(assert (recommended "Леприконсы - Хали-гали, паратрупер"))
)

(defrule R25
	(age Child)
	(language Russian)
	(condition Car)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Ramil' - Сияй" crlf)
(assert (recommended "Ramil' - Сияй"))
)

(defrule R26
	(age Child)
	(language Russian)
	(condition Car)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Iowa - В танце" crlf)
(assert (recommended "Iowa - В танце"))
)

(defrule R27
	(age Teenager)
	(language Foreign)
	(condition Party)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Rihanna - Umbrella" crlf)
(assert (recommended "Rihanna - Umbrella"))
)

(defrule R28
	(age Teenager)
	(language Foreign)
	(condition Party)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Black Eyed Peas - Pump it" crlf)
(assert (recommended "Black Eyed Peas - Pump it"))
)

(defrule R29
	(age Teenager)
	(language Foreign)
	(condition Party)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Post Malone - Better now" crlf)
(assert (recommended "Post Malone - Better now"))
)

(defrule R30
	(age Teenager)
	(language Foreign)
	(condition Party)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: KSHMR - Dharma" crlf)
(assert (recommended "KSHMR - Dharma"))
)

(defrule R31
	(age Teenager)
	(language Foreign)
	(condition Background)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Foushee - Deep End" crlf)
(assert (recommended "Foushee - Deep End"))
)

(defrule R32
	(age Teenager)
	(language Foreign)
	(condition Background)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: twenty one pilots - Heathens" crlf)
(assert (recommended "twenty one pilots - Heathens"))
)

(defrule R33
	(age Teenager)
	(language Foreign)
	(condition Background)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: XXXTentacion - SAD!" crlf)
(assert (recommended "XXXTentacion - SAD!"))
)

(defrule R34
	(age Teenager)
	(language Foreign)
	(condition Background)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: FILV - Balenciaga" crlf)
(assert (recommended "FILV - Balenciaga"))
)

(defrule R35
	(age Teenager)
	(language Foreign)
	(condition Car)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Halsey - Nightmare" crlf)
(assert (recommended "Halsey - Nightmare"))
)

(defrule R36
	(age Teenager)
	(language Foreign)
	(condition Car)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Post Malone - Take what you want" crlf)
(assert (recommended "Post Malone - Take what you want"))
)

(defrule R37
	(age Teenager)
	(language Foreign)
	(condition Car)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Post Malone - rockstar" crlf)
(assert (recommended "Post Malone - rockstar"))
)

(defrule R38
	(age Teenager)
	(language Foreign)
	(condition Car)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Krewella - Ghost" crlf)
(assert (recommended "Krewella - Ghost"))
)

(defrule R39
	(age Teenager)
	(language Russian)
	(condition Party)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Мари Краймбрери - Мне хорошо" crlf)
(assert (recommended "Мари Краймбрери - Мне хорошо"))
)

(defrule R40
	(age Teenager)
	(language Russian)
	(condition Party)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Masha Hima - Ты не прыгнешь за мной" crlf)
(assert (recommended "Masha Hima - Ты не прыгнешь за мной"))
)

(defrule R41
	(age Teenager)
	(language Russian)
	(condition Party)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Макс Корж - Малый повзрослел" crlf)
(assert (recommended "Макс Корж - Малый повзрослел"))
)

(defrule R42
	(age Teenager)
	(language Russian)
	(condition Party)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Родион Толочкин - Иди на мой голос" crlf)
(assert (recommended "Родион Толочкин - Иди на мой голос"))
)

(defrule R43
	(age Teenager)
	(language Russian)
	(condition Background)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Иван Дорн - Северное сияние" crlf)
(assert (recommended "Иван Дорн - Северное сияние"))
)

(defrule R44
	(age Teenager)
	(language Russian)
	(condition Background)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Сплин - Моё сердце" crlf)
(assert (recommended "Сплин - Моё сердце"))
)

(defrule R45
	(age Teenager)
	(language Russian)
	(condition Background)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: T-Fest - Улети" crlf)
(assert (recommended "T-Fest - Улети"))
)

(defrule R46
	(age Teenager)
	(language Russian)
	(condition Background)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Raim - Двигаться" crlf)
(assert (recommended "Raim - Двигаться"))
)

(defrule R47
	(age Teenager)
	(language Russian)
	(condition Car)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Баста - Выпускной (Медлячок)" crlf)
(assert (recommended "Баста - Выпускной (Медлячок)"))
)

(defrule R48
	(age Teenager)
	(language Russian)
	(condition Car)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Мукка - Девочка с каре" crlf)
(assert (recommended "Мукка - Девочка с каре"))
)

(defrule R49
	(age Teenager)
	(language Russian)
	(condition Car)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Slava Marlow - По глазам" crlf)
(assert (recommended "Slava Marlow - По глазам"))
)

(defrule R50
	(age Teenager)
	(language Russian)
	(condition Car)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: DJ Piligrim - Ты меня забудь" crlf)
(assert (recommended "DJ Piligrim - Ты меня забудь"))
)

(defrule R51
	(age Adult)
	(language Foreign)
	(condition Party)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Michael Jackson - Billie Jean" crlf)
(assert (recommended "Michael Jackson - Billie Jean"))
)

(defrule R52
	(age Adult)
	(language Foreign)
	(condition Party)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Skillet - Hero" crlf)
(assert (recommended "Skillet - Hero"))
)

(defrule R53
	(age Adult)
	(language Foreign)
	(condition Party)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Kanye West - I love it" crlf)
(assert (recommended "Kanye West - I love it"))
)

(defrule R54
	(age Adult)
	(language Foreign)
	(condition Party)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Vize - Brother Louie" crlf)
(assert (recommended "Vize - Brother Louie"))
)

(defrule R55
	(age Adult)
	(language Foreign)
	(condition Background)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: The Righteous Brothers - Unchained Melody" crlf)
(assert (recommended "The Righteous Brothers - Unchained Melody"))
)

(defrule R56
	(age Adult)
	(language Foreign)
	(condition Background)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: The Beatles - Let it be" crlf)
(assert (recommended "The Beatles - Let it be"))
)

(defrule R57
	(age Adult)
	(language Foreign)
	(condition Background)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Travis Scott - Highest in the room" crlf)
(assert (recommended "Travis Scott - Highest in the room"))
)

(defrule R58
	(age Adult)
	(language Foreign)
	(condition Background)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Avicii - Levels" crlf)
(assert (recommended "Avicii - Levels"))
)

(defrule R59
	(age Adult)
	(language Foreign)
	(condition Car)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Beyonce - Halo" crlf)
(assert (recommended "Beyonce - Halo"))
)

(defrule R60
	(age Adult)
	(language Foreign)
	(condition Car)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Queen - Radio Ga Ga" crlf)
(assert (recommended "Queen - Radio Ga Ga"))
)

(defrule R61
	(age Adult)
	(language Foreign)
	(condition Car)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Y2K - Lalala" crlf)
(assert (recommended "Y2K - Lalala"))
)

(defrule R62
	(age Adult)
	(language Foreign)
	(condition Car)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Daft Punk - One more Time" crlf)
(assert (recommended "Daft Punk - One more Time"))
)

(defrule R63
	(age Adult)
	(language Russian)
	(condition Party)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Иванушки International - Тополиный пух" crlf)
(assert (recommended "Иванушки International - Тополиный пух"))
)

(defrule R64
	(age Adult)
	(language Russian)
	(condition Party)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: ДДТ - Что такое осень" crlf)
(assert (recommended "ДДТ - Что такое осень"))
)

(defrule R65
	(age Adult)
	(language Russian)
	(condition Party)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: HammAli & Navai - Девочка война" crlf)
(assert (recommended "HammAli & Navai - Девочка война"))
)

(defrule R66
	(age Adult)
	(language Russian)
	(condition Party)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Руки Вверх - 18 мне уже" crlf)
(assert (recommended "Руки Вверх - 18 мне уже"))
)

(defrule R67
	(age Adult)
	(language Russian)
	(condition Party)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Алла Пугачёва - Позови меня с собой" crlf)
(assert (recommended "Алла Пугачёва - Позови меня с собой"))
)

(defrule R68
	(age Adult)
	(language Russian)
	(condition Background)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Валентин Стрыкало - Наше лето" crlf)
(assert (recommended "Валентин Стрыкало - Наше лето"))
)

(defrule R69
	(age Adult)
	(language Russian)
	(condition Background)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Баста - Сансара" crlf)
(assert (recommended "Баста - Сансара"))
)

(defrule R70
	(age Adult)
	(language Russian)
	(condition Background)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Hi-Fi - Не дано" crlf)
(assert (recommended "Hi-Fi - Не дано"))
)

(defrule R71
	(age Adult)
	(language Russian)
	(condition Car)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Михаил Боярский - Зеленоглазое такси" crlf)
(assert (recommended "Михаил Боярский - Зеленоглазое такси"))
)

(defrule R72
	(age Adult)
	(language Russian)
	(condition Car)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Ария - Беспечный ангел" crlf)
(assert (recommended "Ария - Беспечный ангел"))
)

(defrule R73
	(age Adult)
	(language Russian)
	(condition Car)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: L'One - Всё или ничего" crlf)
(assert (recommended "L'One - Всё или ничего"))
)

(defrule R74
	(age Adult)
	(language Russian)
	(condition Car)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Serebro - Мама Люба" crlf)
(assert (recommended "Serebro - Мама Люба"))
)