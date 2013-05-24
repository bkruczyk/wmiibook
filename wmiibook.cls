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

  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \begin{center}%
      {\LARGE\textbf{Uniwersytet Warmi\'{n}sko-Mazurski}\\
        \@wydzial\par}
      \vspace{1cm plus 1fill}
      {\Large\bf\@author\par}
        \vspace{8mm plus .1fill}
      {\Huge\textbf{\@title}\par}
      \vspace{8mm plus .1fill}
      {\large\bf Praca \@rodzajpracy\\[3pt]
       na kierunku \MakeUppercase{\@kierunek}}
      \vspace{2cm plus 1.5fill}
      \begin{flushright}\large
      \begin{tabular}{l}
      Praca wykonana pod kierunkiem\\
      \bfseries{\@opiekun}\\
      \@katedra
      \end{tabular}
      \end{flushright}
      \vspace{1cm plus 1fill}
      {\large \@date\par}
    \end{center}
    \@thanks
  \end{titlepage}

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
