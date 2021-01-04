Czarownik chaosu: podklasa dla czarowników posługujących się dziką magią
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Wersja:     2.6
Autor:      Argent77

Download:   https://github.com/Argent77/A7-ChaosSorcerer/releases
Dyskusja: 	https://forums.beamdog.com/discussion/66390/
            http://www.shsforums.net/topic/59482-mod-the-chaos-sorcerer-a-wild-magic-kit-for-sorcerers/


Ogólny zarys
~~~~~~~~~~~~

Jest to modyfikacja dla BG:EE, BG2:EE, EET (Enhanced Edition Trilogy) i IWD:EE wprowadzająca do
gry nową podklasę o nazwie „Czarownik chaosu”, która może stanowić alternatywną wersję dzikiego
maga dla klasy czarownika. Szczegóły podklasy znajdują się w części „Opis podklasy”.

Modyfikacja ta zmienia również w pewnym stopniu listę wyboru czarów dzikiego maga. Więcej
informacji na ten temat można znaleźć w części „Komponenty”.


Instalacja
~~~~~~~~~~

Jest to modyfikacja WeiDU, co oznacza, iż jest bardzo prosta w instalacji. Wystarczy rozpakować
pobrane archiwum do katalogu z grą, a następnie uruchomić plik „setup-A7-ChaosSorcerer.exe”.
Następnie wystarczy postękować zgodnie z dalszymi instrukcjami.


Kompatybilność
~~~~~~~~~~~~~~

Modyfikacja działa na następujących grach w wersji 1.3 i wyższej: BG:EE, BG2:EE i IWD:EE.

Modyfikacja ta powinna być kompatybilna z innymi, o ile nie zmieniają one w znaczący sposób
działania dzikiej magii.

The component "Spell Select Dialog" of "Tome and Blood" is known to be incompatible with this mod.
Komponent „Level 1 Cantrips” z modyfikacji „Tome and Blood” ma wpływ na dostępność czaru
„Lekkomyślne zaklęcie Nahala”.


Komponenty
~~~~~~~~~~

1. Podklasa „Czarownik chaosu” (dla BG:EE, BG2EE, EET i IWD:EE)

Komponent ten powoduje instalację podklasy Czarownik chaosu wraz z powiązanymi z nią czarami i
zdolnościami wysokopoziomowymi. Szczegóły podklasy można znaleźć w części „Opis podklasy”.

Komponent ten wprowadza również kilka zmian dotyczących wyboru listy czarów dzikiego maga:
1. Nowy czar 1. poziomu „Kontrolowanie fali dzikiej energii”, który zapewnia niewielką szansę na
   uniknięcie skutków najbliższej fali dzikiej energii.
2. Nowy czar 2. poziomu „Nieszczęście”, który może stanowić odpowiednik zaklęcia „Szczęście”, tyle
   że o negatywnych skutkach.
3. Czar „Tarcza chaosu” zostaje połączony z „Ulepszoną tarczą chaosu”, stając się 3. poziomowym
   czarem, zapewniającym premię +15 do efektów fali dzikiej energii, która to premia wzrasta
   do +20 i +25 na wyższych poziomach.
4. Nowy czar 7. poziomu „Dzikie uderzenie Nahala”, który otacza ofiarę aurą chaotycznej energii.
   Za każdym razem, gdy ofiara chce rzucić zaklęcie, uaktywnia się fala dzikiej energii,
   wywołująca nieoczekiwane skutki.

Powyższe czary dodane do listy czarów dzikiego maga są również dostępne dla czarowników chaosu,
z wyjątkiem „Lekkomyślnego zaklęcia Nahala”, które zostaje zastąpione zaklęciem „Fala chaosu”.


2. Odtwórz listy wyboru czarów (wymaga zainstalowania głównego komponentu)

Komponent ten służy do odtworzenia list wyboru czarów wykorzystywanych w zaklęciu „Fala chaosu”,
albowiem istnieje pewna losowość w kwestii tego, które czary zostaną uwzględnione, a które nie.
Komponent ten może zostać bezpiecznie aktywowany nawet podczas trwającej rozgrywki. Może być
również użyty do zaktualizowania list wyboru czarów w przypadku innych modyfikacji dodających
czary, które zainstalowano później.


3. Zablokuj możliwość wyboru podklasy „Dziki mag” na etapie tworzenia postaci (wymaga zainstalowania
   głównego komponentu)

Komponent ten dodano na życzenie graczy. Usuwa on podklasę dzikiego maga z listy podklas dostępnych
dla klasy maga na etapie tworzeniu postaci, tak aby czarownik chaosu mógł być jedynym wyborem dla
postaci posługującej się dziką magią.
Uwaga: Komponent ten jest dostępny tylko dla wersji gry 2.0 i wyższych.


4. Dodaj „Artefakty przedwiecznych” (wymaga zainstalowania głównego komponentu)

Komponent ten dodaje do gry zestaw czterech artefaktów przeznaczonych specjalnie dla czarowników
chaosu. Przedmioty te mogą zostać ze sobą połączone, by odblokować jeszcze więcej ukrytych w nich
zdolności.
BG(2)EE: Przedmioty zostaną rozmieszczone we wszystkich grach z serii - BG1, BG1:SoD, BG2:SoA i
         BG2:ToB.
         Przedmioty z BG1/SoD można również znaleźć w początkowym lochu BG2:SoA, po rozpoczęciu
         rozgrywki w BG2:EE.
IWDEE:   Przedmioty zostaną rozmieszczone w różnych lokacjach, które można odwiedzić w ciągu gry.


Opis podklasy
~~~~~~~~~~~~~

CZAROWNIK CHAOSU: W przeciwieństwie do dzikich magów, którzy starają się zrozumieć działanie
chaotycznej magii na podstawie uszkodzonych i zniekształconych fragmentów Splotu, czarownicy
chaosu nauczyli się czerpać moc wprost z Chaosu Żywiołów, sfery niemal zupełnie nieznanej
mieszkańcom Torilu.

Chaos Żywiołów jest miejscem przedwiecznej entropii i dysharmonii i nawet osoby biegle władające
pochodzącą stamtąd mocą regularnie doświadczają jej nieprzewidywalności. W związku z tym czarownicy
chaosu muszą polegać na swej zręczności i refleksie, by uniknąć nieprzyjemnych skutków własnych,
często nieprzewidywalnych zaklęć. Bycie narażonym na działanie tego rodzaju magii wykształca z
czasem u czarującego rosnącą odporność na wszelkie formy energii magicznej. Do kroczenia tą
niebezpieczną ścieżką niezbędna jest podstawowa znajomość natury Chaosu.

Zalety:
– Może rzucić 1. poziomowe czary Fala chaosu oraz Kontrolowanie fali dzikiej energii (automatycznie
  dodawane do listy czarów).
– Może rzucić 2. poziomowy czar Nieszczęście (automatycznie dodawany do listy czarów).
– Może rzucić 3. poziomowy czar Tarcza chaosu (automatycznie dodawany do listy czarów).
– Może rzucić 5. poziomowy czar Sprowadzenie żywiołaka chaosu (automatycznie dodawany do listy
  czarów).
– Może rzucić 7. poziomowe czary Dzikie uderzenie Nahala oraz CSprowadzenie większego żywiołaka
  chaosu (automatycznie dodawane do listy czarów).
– 1. poziom: +1 do rzutów obronnych przeciw czarom.
– 5. poziom: +1 zo Zręczności.
– 6. poziom: +1 do rzutów obronnych przeciw czarom.
– 8. poziom: +5% do odporności na magię.
– 11. poziom: +1 do rzutów obronnych przeciw czarom.
– 15. poziom: +1 zo Zręczności.
– 16. poziom: +1 do rzutów obronnych przeciw czarom.
– 16. poziom: +5% do odporności na magię.
– 21. poziom: +1 do rzutów obronnych przeciw czarom.
– 24. poziom: +5% do odporności na magię.

Wady:
– Kara -2 do Siły i Kondycji.
– Musi mieć charakter chaotyczny dobry, chaotyczny neutralny lub chaotyczny zły.
– Może rzucić mniej czarów dziennie.
– Istnieje 5% szans wywołania fali dzikiej energii po rzuceniu czaru.

FALA DZIKIEJ ENERGII: Fala dzikiej energii sprawia, że rzucony czar tworzy całkowicie losowy
magiczny efekt. Jego działanie może być zarówno korzystne, jak i szkodliwe dla czarownika chaosu
lub jego sojuszników.

– Za każdym razem, gdy czarownik chaosu rzuca zaklęcie, poziom tego zaklęcia nieznacznie się różni.
Może on być niższy lub wyższy maksymalnie o pięć od aktualnego poziomu czarownika chaosu.


Opis czaru: Fala chaosu
~~~~~~~~~~~~~~~~~~~~~~~

Fala chaosu jest podstawą wyjątkowej mocy, jaką władają czarownicy chaosu. Zaklęcie to otwiera
niewielką szczelinę prowadzącą do Chaosu Żywiołów, dzięki czemu czarownik może zaczerpnąć stamtąd
czystą energię magiczną, a następnie spróbować ukształtować ją w pożądany sposób. Starania te
zazwyczaj spełzają na niczym, niemniej jednak w ich wyniku zawsze generowany jest jakiś efekt
magiczny.

Aby użyć zaklęcia Fala chaosu, wystarczy rzucić je w normalny sposób, a następnie wybrać czar z
listy losowych czarów. Uwalniana jest wówczas eksplozja magicznej energii, którą czarownik chaosu
stara się uformować w pożądany dla siebie sposób. Faktyczny efekt zaklęcia określany jest losowym
rzutem kością, którego wynik odczytywany jest z Tabeli dzikiej energii znajdującej się w instrukcji
do gry. Lista potencjalnych zaklęć, z których można wybierać, powiększa się i staje bardziej spójna
wraz z awansem czarownika na wyższe poziomy.

Ponieważ uwolnienie dzikiej energii jest następstwem planowanego działania maga, jego poziom
dodawany jest do powyższego rzutu kostką. Jeżeli wynik okazał się sukcesem, czarownikowi udało się
ukształtować magiczną energię wedle własnych potrzeb, jednak znacznie częściej efekt działania
zaklęcia jest zupełnie nieoczekiwany. Rezultat może być dla rzucającego korzystny lub okazać się
całkowitą katastrofą, jest to jednak ryzyko, które musi ponieść każdy czarownik, decydujący się
polegać na energii zaczerpniętej z Chaosu Żywiołów.

Lista zaklęć, z której można wybierać, zależy od poziomu postaci oraz przypadku. Im wyższy poziom
tym lista jest stabilniejsza i kompletna.

Poniższa lista przedstawia szanse dla wszystkich dostępnych list wyboru czarów. Liczby oddzielone
ukośnikami przedstawiają procent istniejących czarów dla danego poziomu (od 1 do 9).

Czarownik poziomu 1-3:
– 33% szans na uzyskanie 75/50/25/0/0/0/0/0/0 procent czarów na poziom
– 25% szans na uzyskanie 100/75/50/25/0/0/0/0/0 procent czarów na poziom
– 18% szans na uzyskanie 100/100/75/50/25/0/0/0/0 procent czarów na poziom
– 13% szans na uzyskanie 100/100/100/75/50/25/0/0/0 procent czarów na poziom
– 7% szans na uzyskanie 100/100/100/100/75/50/25/0/0 procent czarów na poziom
– 4% szans na uzyskanie 100/100/100/100/100/75/50/25/0 procent czarów na poziom

Czarownik poziomu 4-7:
– 33% szans na uzyskanie 100/75/50/25/0/0/0/0/0 procent czarów na poziom
– 25% szans na uzyskanie 100/100/75/50/25/0/0/0/0 procent czarów na poziom
– 18% szans na uzyskanie 100/100/100/75/50/25/0/0/0 procent czarów na poziom
– 13% szans na uzyskanie 100/100/100/100/75/50/25/0/0 procent czarów na poziom
– 7% szans na uzyskanie 100/100/100/100/100/75/50/25/0 procent czarów na poziom
– 4% szans na uzyskanie 100/100/100/100/100/100/75/50/25 procent czarów na poziom

Czarownik poziomu 8-11:
– 33% szans na uzyskanie 100/100/75/50/25/0/0/0/0 procent czarów na poziom
– 25% szans na uzyskanie 100/100/100/75/50/25/0/0/0 procent czarów na poziom
– 18% szans na uzyskanie 100/100/100/100/75/50/25/0/0 procent czarów na poziom
– 13% szans na uzyskanie 100/100/100/100/100/75/50/25/0 procent czarów na poziom
– 7% szans na uzyskanie 100/100/100/100/100/100/75/50/25 procent czarów na poziom
– 4% szans na uzyskanie 100/100/100/100/100/100/100/75/50 procent czarów na poziom

Czarownik poziomu 12-15:
– 33% szans na uzyskanie 100/100/100/100/75/50/25/0/0 procent czarów na poziom
– 25% szans na uzyskanie 100/100/100/100/100/50/25/0/0 procent czarów na poziom
– 18% szans na uzyskanie 100/100/100/100/100/100/50/25/0 procent czarów na poziom
– 13% szans na uzyskanie 100/100/100/100/100/100/100/50/25 procent czarów na poziom
– 7% szans na uzyskanie 100/100/100/100/100/100/100/75/50 procent czarów na poziom
– 4% szans na uzyskanie 100/100/100/100/100/100/100/100/75 procent czarów na poziom

Czarownik poziomu 16-19:
– 50% szans na uzyskanie 100/100/100/100/100/100/100/75/25 procent czarów na poziom
– 33% szans na uzyskanie 100/100/100/100/100/100/100/100/50 procent czarów na poziom
– 17% szans na uzyskanie 100/100/100/100/100/100/100/100/100 procent czarów na poziom

Czarownik poziomu 20 lub wyżej:
– 100% szans na uzyskanie 100/100/100/100/100/100/100/100/100 procent czarów na poziom


Credits
~~~~~~~

Writing, coding and testing: Argent77

Polish translation: Cahir
Russian translation: Saigon1983
French translation: Deratiseur

Additional help with projectiles: kjeron


Copyright Notice
~~~~~~~~~~~~~~~~

The mod "Chaos Sorcerer Kit" is licensed under the "Creative Commons Attribution-ShareAlike 4.0
International License" (http://creativecommons.org/licenses/by-sa/4.0/).


History
~~~~~~~

2.6
- Improved effects of HLA "Chaotic Eruption"
- Added Project Infinity metadata
- Fixed potential display issues with component names in WeiDU.log and Project Infinity

2.5
- Added Russian translation (thanks Saigon1983)
- Added French translation (thanks Deratiseur)

2.4
- Rebalanced duration of "Chaos Shield"
- Improved combat scripts of (Improved) Chaos Elementals
- Removed unneeded spell table from "Chaotic Weave"
- Fixed script references to "Nahal's Reckless Dweomer", which caused issues with Neera's
  ToB quest line

2.3
- Added Polish translation (thanks Cahir)
- Increased duration of spell "Conjure Greater Chaos Elemental"
- Improved IWD:EE spell icons for "Conjure (Greater) Chaos Elemental"
- Improved combat scripts of (Greater) Chaos Elementals and fixed some bugs
- Innate effects and immunities of (Greater) Chaos Elementals should not be dispellable
- Greatly improved and rebalanced spell "Chaotic Weave"
- Added odds for all available spell lists of "Chaotic Weave" to readme
- Added a number of Chaos Sorcerer-specific spells to "Chaotic Weave" spell lists
- Fixed magic school of Nahal's Wildstrike

2.2
- Overall power of primordial artifacts increases when combined
- Improved spell "Surge Control" to work exactly as outlined in spell description
- Fixed an installation bug in the "Add Primordial Artifacts" component

2.1
- Fixed a primordial artifact that was not correctly added to an SoD area
- Fixed default starting equipment when starting a new SoD or ToB game

2.0
- Added new subcomponent: Add "Primordial Artifacts"
- Added new spell 'Conjure Greater Chaos Elemental'
- Added (Improved) Chaos Elemental creature stats to spell descriptions
- Various optimizations and bug fixes

1.1
- Added compatibility section to readme
- Changed spell description of Chaos Shield to be more universal
- Fixed an issue with Spell Revisions that made NRD a forced spell choice for Chaos Sorcerers
- DEX bonus doesn't show as green number in Record Screen anymore

1.0
- Initial release
