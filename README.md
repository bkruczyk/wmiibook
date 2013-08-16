wmiibook
--------
Klasa Latexa dla prac dyplomowych na Wydziale Matematyki i Informatyki
Uniwersytetu Warmińsko-Mazurskiego w Olsztynie


### Co daje użycie klasy _wmiibook_?
Klasa _wmiibook_ dostosowuje wygląd dokumentu Latex dla prac
dyplomowych [WMiI](http://wmii.uwm.edu.pl/). W dokumencie obowiązuje
(tak samo jak w standardowych klasach _book_ i _report_) podział na
rozdziały i sekcje. Dodatkowo:

* dodana została odpowiednio sformatowana strona tytułowa standardowe
* streszczenie zostało rozszerzone o streszczenie i tytuł w języku angielskim
* zmieniony został standardowy wygląd listingów

Przykładowa praca z użyciem klasy _wmiibook_ wygląda
[tak](http://bkruczyk.github.io/wmiibook/pdf/thesis.pdf),
natomiast listingi wyglądają
[tak](http://bkruczyk.github.io/wmiibook/pdf/listings.pdf).

### Jak używać?
Przede wszystkim należy wypakować pliki _wmiibook.cls_ oraz
_listingsset.tex_ do katalogu z naszą pracą.

Przekazujemy klasę _wmiibook_ do polecenia _\documentclass{}_:

```latex
\documentclass{wmiibook}
```
_wmiibook_ bazuje na klasie _report_, więc dozwolone jest
przekazywanie opcji zgodnych z klasą _report_, np.:

```latex
% wielkość czcionki 12pt, druk dwustronny
\documentclass[12pt, twoside]{wmiibook}
```

Aby wykorzystać zmodyfikowany wygląd listingów wystarczy dołączyć plik
[listingsset.tex](https://github.com/bkruczyk/wmiibook/blob/master/listingsset.tex)
w preambule dokumentu głównego poleceniem:

```latex
\input{listingsset}
```

### Więcej informacji
Wykorzystanie w praktyce klasy _wmiibook_ przedstawia plik
[thesis.tex](https://github.com/bkruczyk/wmiibook/blob/master/thesis.tex),
natomiast użycie listingów
[listings.tex](https://github.com/bkruczyk/wmiibook/blob/master/listings.tex).

### Uwaga!
Praca _Implementacja blabalizatora różnicowego z wykorzystaniem teorii
fetorów σ-ρ_, która stanowi zawartość merytoryczną pliku
[thesis.tex](https://github.com/bkruczyk/wmiibook/blob/master/thesis.tex),
jest własnością [Marcina
Wolińskiego](http://www.mimuw.edu.pl/~wolinski/). Służy ona jako
przykładowy tekst dla prac magisterskich na wydziale MIM UW. Przeze
mnie zostało przygotowane jedynie streszczenie angielskie.

Oryginał znajduje się pod tym
[adresem](http://www.mimuw.edu.pl/studia/dyplomy/wzor-pracy/).

### Kontakt
W razie pytań lub sugestii co do klasy _wmiibook_, napisz:
<bartlomiej.kruczyk@gmail.com>
