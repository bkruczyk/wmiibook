% Klasa dokumentów do składu prac dyplomowych na Wydziale Matematyki
% i Informatyki UWM.
% Wykorzystano layout stron MIM UW.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wmiibook}[2012/04/26 v0.1 Praca dyplomowa WMiI]

% deklaracja klasy bazowej, możliwość przekazywania opcji z klasy bazowej
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass[a4paper,openright,11pt]{report}

% layout strony

% szerokość tekstu
\textwidth\paperwidth
\advance\textwidth-55mm

% lewy margines
\oddsidemargin-1in %reset
\advance\oddsidemargin 30mm

% lewy margines stron parzystych w druku dwustronnym
\evensidemargin-1in
\advance\evensidemargin 25mm

% górny margines
\topmargin-1in
\advance\topmargin 2cm

% wysokość tekstu
\setlength\textheight{48\baselineskip}
\addtolength\textheight{\topskip}

% szerokość marginaliów
\marginparwidth 15mm

%% nowe polecenia
\newcommand{\@wydzial}{nazwa wydzialu}
\newcommand{\@kierunek}{nazwa kierunku}
\newcommand{\@rodzajpracy}{licencjacka/magisterska/inzynierska}
\newcommand{\@katedra}{nazwa katedry}
\newcommand{\@opiekun}{opiekun pracy}
\newcommand{\@tytulang}{tytul angielski}
\newcommand{\@abstracteng}{streszczenie po angielsku}

\newcommand{\wydzial}[1]{\renewcommand{\@wydzial}{#1}}
\newcommand{\kierunek}[1]{\renewcommand{\@kierunek}{#1}}
\newcommand{\rodzajpracy}[1]{\renewcommand{\@rodzajpracy}{#1}}
\newcommand{\katedra}[1]{\renewcommand{\@katedra}{#1}}
\newcommand{\opiekun}[1]{\renewcommand{\@opiekun}{#1}}
\newcommand{\tytulang}[1]{\renewcommand{\@tytulang}{#1}}
\newcommand{\abstracteng}[1]{\renewcommand{\@abstracteng}{
    \setlength{\parindent}{0pt}#1}
}

% strona tytułowa
\renewcommand{\maketitle}{%

    \begin{titlepage}\begin{center}

    \MakeUppercase{\LARGE Uniwersytet Warmi\'{n}sko-Mazurski}\\[0.5cm]
    \MakeUppercase{\LARGE w~Olsztynie}\\[0.5cm]
    \MakeUppercase{\Large \@wydzial}\\[1.0cm]

    {\Large Kierunek: \@kierunek}\\[2.25cm]

    {\Large \@author}\\[2.25cm]

    {\LARGE \bf \@title}\\[1cm]
    {\Large \bf \@tytulang}\\[5.0cm]

    \begin{flushright}\begin{minipage}
        {0.5\textwidth}
        Praca \@rodzajpracy\\
        wykonana\\
        \mbox{w \@katedra}\\
        pod kierunkiem\\
        \mbox{\emph{\@opiekun}}
    \end{minipage}\end{flushright}

    \vfill

    {\@date}
    \end{center}\end{titlepage}

    \cleardoublepage
}%

% streszczenie + tytul ang. + streszczenie ang.
\renewenvironment{abstract}{%
    \titlepage
    \null\nobreak\vfil

    \begin{center}
        \bfseries\large \abstractname
    \end{center}
}%
{%
    \vspace*{26pt}

    \begin{center}
        \bfseries\large Tytu{\l} pracy w j{\k{e}}zyku angielskim
    \end{center}

    \@tytulang

    \vspace*{26pt}

    \begin{center}
        \bfseries\large Abstract
    \end{center}

    \@abstracteng

    \nobreak\vfil\null
    \endtitlepage

    \cleardoublepage

    \newpage
    \thispagestyle{empty}
    \mbox{}
}%
