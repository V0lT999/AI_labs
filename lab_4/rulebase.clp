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
(printout t crlf crlf "Recomendation is: Quest Pistols Show - ���������" crlf)
(assert (recommended "Quest Pistols Show - ���������"))
)

(defrule R17
	(age Child)
	(language Russian)
	(condition Party)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Animal ���Z - ��� �������" crlf)
(assert (recommended "Animal ���Z - ��� �������"))
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
(printout t crlf crlf "Recomendation is: Rauf & Faik - ���� ���� ����� �������" crlf)
(assert (recommended "Rauf & Faik - ���� ���� ����� �������"))
)

(defrule R20
	(age Child)
	(language Russian)
	(condition Background)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: Mband - ��� �������" crlf)
(assert (recommended "Mband - ��� �������"))
)

(defrule R21
	(age Child)
	(language Russian)
	(condition Background)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: ���� - ���������" crlf)
(assert (recommended "���� - ���������"))
)

(defrule R22
	(age Child)
	(language Russian)
	(condition Background)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: ������� - ������" crlf)
(assert (recommended "������� - ������"))
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
(printout t crlf crlf "Recomendation is: IOWA - ���� ���" crlf)
(assert (recommended "IOWA - ���� ���"))
)

(defrule R24
	(age Child)
	(language Russian)
	(condition Car)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: ���������� - ����-����, ����������" crlf)
(assert (recommended "���������� - ����-����, ����������"))
)

(defrule R25
	(age Child)
	(language Russian)
	(condition Car)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Ramil' - ����" crlf)
(assert (recommended "Ramil' - ����"))
)

(defrule R26
	(age Child)
	(language Russian)
	(condition Car)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Iowa - � �����" crlf)
(assert (recommended "Iowa - � �����"))
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
(printout t crlf crlf "Recomendation is: ���� ���������� - ��� ������" crlf)
(assert (recommended "���� ���������� - ��� ������"))
)

(defrule R40
	(age Teenager)
	(language Russian)
	(condition Party)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: Masha Hima - �� �� �������� �� ����" crlf)
(assert (recommended "Masha Hima - �� �� �������� �� ����"))
)

(defrule R41
	(age Teenager)
	(language Russian)
	(condition Party)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: ���� ���� - ����� ����������" crlf)
(assert (recommended "���� ���� - ����� ����������"))
)

(defrule R42
	(age Teenager)
	(language Russian)
	(condition Party)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: ������ �������� - ��� �� ��� �����" crlf)
(assert (recommended "������ �������� - ��� �� ��� �����"))
)

(defrule R43
	(age Teenager)
	(language Russian)
	(condition Background)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: ���� ���� - �������� ������" crlf)
(assert (recommended "���� ���� - �������� ������"))
)

(defrule R44
	(age Teenager)
	(language Russian)
	(condition Background)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: ����� - �� ������" crlf)
(assert (recommended "����� - �� ������"))
)

(defrule R45
	(age Teenager)
	(language Russian)
	(condition Background)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: T-Fest - �����" crlf)
(assert (recommended "T-Fest - �����"))
)

(defrule R46
	(age Teenager)
	(language Russian)
	(condition Background)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Raim - ���������" crlf)
(assert (recommended "Raim - ���������"))
)

(defrule R47
	(age Teenager)
	(language Russian)
	(condition Car)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: ����� - ��������� (��������)" crlf)
(assert (recommended "����� - ��������� (��������)"))
)

(defrule R48
	(age Teenager)
	(language Russian)
	(condition Car)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: ����� - ������� � ����" crlf)
(assert (recommended "����� - ������� � ����"))
)

(defrule R49
	(age Teenager)
	(language Russian)
	(condition Car)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: Slava Marlow - �� ������" crlf)
(assert (recommended "Slava Marlow - �� ������"))
)

(defrule R50
	(age Teenager)
	(language Russian)
	(condition Car)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: DJ Piligrim - �� ���� ������" crlf)
(assert (recommended "DJ Piligrim - �� ���� ������"))
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
(printout t crlf crlf "Recomendation is: �������� International - ��������� ���" crlf)
(assert (recommended "�������� International - ��������� ���"))
)

(defrule R64
	(age Adult)
	(language Russian)
	(condition Party)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: ��� - ��� ����� �����" crlf)
(assert (recommended "��� - ��� ����� �����"))
)

(defrule R65
	(age Adult)
	(language Russian)
	(condition Party)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: HammAli & Navai - ������� �����" crlf)
(assert (recommended "HammAli & Navai - ������� �����"))
)

(defrule R66
	(age Adult)
	(language Russian)
	(condition Party)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: ���� ����� - 18 ��� ���" crlf)
(assert (recommended "���� ����� - 18 ��� ���"))
)

(defrule R67
	(age Adult)
	(language Russian)
	(condition Party)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: ���� �������� - ������ ���� � �����" crlf)
(assert (recommended "���� �������� - ������ ���� � �����"))
)

(defrule R68
	(age Adult)
	(language Russian)
	(condition Background)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: �������� �������� - ���� ����" crlf)
(assert (recommended "�������� �������� - ���� ����"))
)

(defrule R69
	(age Adult)
	(language Russian)
	(condition Background)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: ����� - �������" crlf)
(assert (recommended "����� - �������"))
)

(defrule R70
	(age Adult)
	(language Russian)
	(condition Background)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Hi-Fi - �� ����" crlf)
(assert (recommended "Hi-Fi - �� ����"))
)

(defrule R71
	(age Adult)
	(language Russian)
	(condition Car)
	(genre Pop)
=>
(printout t crlf crlf "Recomendation is: ������ �������� - ������������ �����" crlf)
(assert (recommended "������ �������� - ������������ �����"))
)

(defrule R72
	(age Adult)
	(language Russian)
	(condition Car)
	(genre Rock)
=>
(printout t crlf crlf "Recomendation is: ���� - ��������� �����" crlf)
(assert (recommended "���� - ��������� �����"))
)

(defrule R73
	(age Adult)
	(language Russian)
	(condition Car)
	(genre HipHop)
=>
(printout t crlf crlf "Recomendation is: L'One - �� ��� ������" crlf)
(assert (recommended "L'One - �� ��� ������"))
)

(defrule R74
	(age Adult)
	(language Russian)
	(condition Car)
	(genre Dance)
=>
(printout t crlf crlf "Recomendation is: Serebro - ���� ����" crlf)
(assert (recommended "Serebro - ���� ����"))
)