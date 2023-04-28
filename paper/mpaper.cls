\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mpaper}[Class for master thesis]

\LoadClass{extreport}

\RequirePackage{titlesec}
\RequirePackage{fontsize}
\RequirePackage[a4paper,top=20mm,bottom=20mm,left=30mm,right=10mm]{geometry}
\RequirePackage{indentfirst}
\RequirePackage[english,russian]{babel}
\RequirePackage[no-math]{fontspec}
\RequirePackage{unicode-math}
\RequirePackage[pdfversion=2.0]{hyperref}
\RequirePackage{caption}[2004/07/16]
\RequirePackage{cleveref}
\usepackage[outputdir=output]{minted}

\changefontsize[18pt]{14pt}
\setmainfont[ExternalLocation=./../fonts/]{PTSerif}[
    UprightFont = *-Regular.ttf,
    BoldFont = *-Bold.ttf,
    ItalicFont = *-Italic.ttf,
    BoldItalicFont = *-BoldItalic.ttf
]
\setmathfont[bold-style=ISO, ExternalLocation=./../fonts/]{latinmodern-math.otf}
\setmathfont[range={\varnothing}, ExternalLocation=./../fonts/]{Asana-Math.otf}
\setmathfont[range={scr,bfscr}, ExternalLocation=./../fonts/]{Asana-Math.otf}
\setmathfont[range={cal,bfcal}, Alternate, ExternalLocation=./../fonts/]{Asana-Math.otf}
\setmathfont[range=bb, ExternalLocation=./../fonts/]{texgyrepagella-math.otf}
\AtBeginDocument{
    \renewcommand{\setminus}{\mathbin{\big\backslash}}%
}

\hypersetup{
    colorlinks=false
}

% figure caption type changed
\captionsetup{labelsep=space}
\addto\captionsrussian{\renewcommand{\figurename}{Рисунок}}

\crefname{figure}{рисунок}{рисунки}

% chapter settings
\titleformat{\chapter}[display]{\centering\normalsizerrr\bfseries}{\chaptertitlename\ \thechapter}{\baselineskip}{\normalsizerrr}

\titlespacing*{\chapter}{0pt}{0pt}{2\baselineskip}

% section settings
\titleformat{\section}[block]{\normalsizer\bfseries}{\thesection\ }{0pt}{\normalsizer}
\titlespacing*{\section}{\parindent}{3\baselineskip minus 1.5\baselineskip}{2\baselineskip}

% subsection settings
\titleformat{\subsection}[block]{\normalsize\bfseries}{\thesubsection\ }{0pt}{\normalsize}
\titlespacing*{\subsection}{\parindent}{3\baselineskip minus 1.5\baselineskip}{2\baselineskip}

% settings for chapters and sections
\addto\captionsrussian{
    \renewcommand{\bibname}{Список использованных источников}
}

\AtBeginDocument{\setlength{\parindent}{35.433070866pt}} %1.25cm

\newcommand{\blank}[1]{\underline{\hspace{#1}}}

\makeatletter
\newcommand{\faculty}[1]{\def\@faculty{#1}}
\newcommand{\department}[1]{\def\@department{#1}}
\newcommand{\speciality}[1]{\def\@speciality{#1}}
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\newcommand{\headofdepartment}[1]{\def\@headofdepartment{#1}}
\newcommand{\setyear}[1]{\def\@year{#1}}

\title{Сбор клубники при оформлении диссертации в ворде}
\author{КУКОЖ Сойджек Пориджевич}
\faculty{факультет подписывания бумажек}
\department{собирательства клубники}
\speciality{1-23 45 67 <<специалист по сбору клубники>>}
\supervisor{Иванов, Иван Иванович\\профессор, доктор клубничных наук}
\headofdepartment{Иванов, Иван Иванович\\профессор, доктор клубничных наук}
\setyear{2077}

\renewcommand{\maketitle}{
    \begin{titlepage}
        \begin{center}\normalsizerrr\bfseries
            \MakeUppercase{министерство образования республики беларусь\\[2mm]
                белорусский государственный университет\\[2mm]
                \@faculty
            }\\[2mm]Кафедра \@department
        \end{center}
        \vfill
        \begin{center}
            \larger\@author\\[5mm]
            \textbf{\@title}\\[2cm]
            Магистерская диссертация\\[5mm]
            \normalsizer специальность \@speciality
        \end{center}
        \vskip 2cm
        \hfill\begin{minipage}{0.5\textwidth}
            Научный руководитель\\
            \@supervisor
        \end{minipage}
        \vfill
        \noindent Допущена к защите <<\blank{8mm}>> \blank{2cm} \@year\ г.\\
        Зав. кафедрой \@department\\
        \@headofdepartment
        \vskip 10mm
        \begin{center}
            Минск,~\@year
        \end{center}
    \end{titlepage}
}