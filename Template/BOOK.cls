%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%                                                                  %%%%%%
%%%%%%               Provided by: Behzad Shayegh Borujeni               %%%%%%
%%%%%%                  http://behzadshayegh.github.io                  %%%%%%
%%%%%%                                                                  %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\LoadClassWithOptions{article}
\usepackage[
    centering,
    includehead=true,
    paperwidth=17cm,
    paperheight=23cm,
    top=2cm,
    bottom=3cm,
    outer=2.5cm,
    inner=2.5cm
    ]{geometry}

\usepackage{xcolor}
\RequirePackage{graphicx}
\usepackage{enumitem}
\usepackage[most]{tcolorbox}
\setlength{\parindent}{4em}
\usetikzlibrary{calc}
\usepackage{subfiles}
\usepackage{fancyhdr}
\usepackage{amsfonts}
\usepackage{tikz}
\usepackage{import}
\usepackage{hyperref}
\usepackage{parskip}
\usepackage{longtable}
\usepackage{amsmath}
\usepackage{pbox}
\usepackage{amssymb}
\usepackage{xifthen}

\RequirePackage[extrafootnotefeatures]{xepersian}
\settextfont[
    Path={Template/fonts/},
    BoldFont={IRLotusICEE_Bold.ttf},
    BoldItalicFont={IRLotusICEE_BoldIranic.ttf},
    ItalicFont={IRLotusICEE_Iranic.ttf},Scale=1.2
    ]{IRZar.ttf}
\setdigitfont[Path={Template/fonts/}]{IRZar.ttf}

\pagestyle{fancy}
\fancyhf{} 
\fancyfoot[RE,LO]{\thepage}
\fancyhead[RO,LE]{\leftmark} %inner head
\fancyhead[LO,RE]{\rightmark} %outer head

\newcommand{\centerimage}[2]{
    \begin{center}
        \includegraphics[width=#1\linewidth]{#2}        
    \end{center}
}

\renewcommand{\theenumi}{\Alph{enumi}}


\definecolor{darkblue}{RGB}{10,70,120}
\hypersetup{
    colorlinks=true,
    breaklinks=true,
    linkcolor=darkblue,
    urlcolor=blue,
}

% Colors
%--------------------------------------------------------------------------
\RequirePackage{xcolor}
\definecolor{sectionblue}{RGB}{90,150,200}
\definecolor{subsectionblue}{RGB}{100,160,200}
\definecolor{extraorange}{RGB}{255,138,88}
\definecolor{factblue}{RGB}{23,74,117}
\definecolor{definitiongreen}{RGB}{21,122,81}
\definecolor{extrayellow}{RGB}{255,185,88}
\definecolor{tsgrey}{RGB}{200,200,200}
\definecolor{solutiongreen}{rgb}{0.1,0.7,0.1}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}


% paragraph styling
%--------------------------------------------------------------------------
\newcommand{\p}[0]{
    
    \noindent
    \vspace{1mm}
    \hspace{5mm}
}


% cover styling
%--------------------------------------------------------------------------
\newcommand{\COVER}[1][Template/images/background.jpg]{
    \newpage
    \thispagestyle{empty}

    \begin{tikzpicture}[remember picture,overlay]
        \node at (current page.north west) {
            \begin{tikzpicture}[remember picture,overlay]
                \node[anchor=north west,inner sep=0pt] at (0,0) {
                    \includegraphics[width=\paperwidth]{#1}
                };
            \end{tikzpicture}
        };
    \end{tikzpicture}
    \newpage
}

% tableofcontents styling
%--------------------------------------------------------------------------
\newcommand{\TOC}{
    \newpage
    \markboth{}{}
    \tableofcontents
    \markboth{فهرست مطالب}{}
    \newpage
}


% Chapter styling
%--------------------------------------------------------------------------
\newcounter{chapter}

\newcommand{\CHAPTER}[3][Template/images/background.jpg]{
    \newpage
    \thispagestyle{empty}
    \refstepcounter{chapter}
    \markboth{#2}{}
    
    \begin{tikzpicture}[remember picture,overlay]
        \node at (current page.north west) {
            \begin{tikzpicture}[remember picture,overlay]
                \node[anchor=north west,inner sep=0pt] at (0,0) {
                    \includegraphics[width=\paperwidth, height=0.5\paperheight]{#1}
                };
            \end{tikzpicture}
        };
    \end{tikzpicture}
    
    \vspace*{\fill}

    فصل \medskip{~\thechapter}

    {\Huge #2}
    \addcontentsline{toc}{part}{\Large{\textbf{#2}}}
    
    \vspace{1.5cm}
    \p
    #3

    \newpage
}

% Section styling
%--------------------------------------------------------------------------
\newcommand{\SECTION}[1]{
    
    \section*{\color{sectionblue}{#1}}
    \markright{#1}
    \addcontentsline{toc}{section}{#1}
    \vspace{-12mm}
    {\textcolor{sectionblue}{\noindent\rule{\textwidth}{0.8pt}}}
}

% SubSection styling
%--------------------------------------------------------------------------
\newcommand{\SUBSECTION}[1]{
    \subsection*{\hspace{7mm}\color{subsectionblue}{#1}}
    \addcontentsline{toc}{subsection}{\small{#1}}
    \vspace{-12mm}
    {\textcolor{subsectionblue}{\noindent\rule{0.4\textwidth}{0.8pt}}}
}

% Definition styling
%--------------------------------------------------------------------------
\newenvironment{DEFINITION}
{\begin{tcolorbox}[
    enhanced jigsaw,
    breakable,
    pad at break*=1mm,
    colback=yellow!10!white,
    boxrule=0pt,
    frame hidden,
    borderline east={1.5mm}{-2mm}{definitiongreen}]}
{\end{tcolorbox}}

% focused
%--------------------------------------------------------------------------
\newcommand{\FOCUSEDON}[1]{‌{\scriptsize\color{magenta}{#1}}}

% Note
%--------------------------------------------------------------------------
\newcommand{\NOTE}[2][-1.5cm]{
    \p
    {\hspace{#1}{\includegraphics[width=5mm]{Template/images/notemark.png}}}
    \hspace{7mm} #2
}

% theorem styling
%--------------------------------------------------------------------------
\newenvironment{THEOREM}
{\begin{tcolorbox}[
    enhanced jigsaw,
    breakable,
    pad at break*=1mm,
    colback=factblue!5,
    colframe=factblue!50]}
{\end{tcolorbox}}


% refrence
%--------------------------------------------------------------------------
\newcommand{\SREF}[1]{\hyperlink{#1}{‌\includegraphics[height=5mm]{Contents/Refrences/Icons/#1.png}‌}}

\newcommand{\SOURCE}[1]{\hypertarget{#1}{\includegraphics[height=5mm]{Contents/Refrences/Icons/#1.png}}}

% cross refrencing
%--------------------------------------------------------------------------
\newcommand{\REF}[2][]{\underline{\hyperlink{#2}{\ifthenelse{\isempty{#1}}{#2}{#1}}}}

\newcommand{\TARGET}[2][]{\hypertarget{#2}{#1}}


% problem styling
%--------------------------------------------------------------------------
\newcounter{problem}[chapter]

\newenvironment{PROBLEM}[1][]
{\begin{tcolorbox}[
    enhanced jigsaw,
    breakable,
    pad at break*=1mm,
    colback=white,
    boxrule=0pt,
    frame hidden,
    borderline east={1.5mm}{-2mm}{black!10}]
    \hspace{-6.5mm}\colorbox{black!10}{\refstepcounter{problem}\par\medskip{~\theproblem}}
    \hspace{3mm}{\small\color{gray}{\textbf{#1}}}
    \vspace{2mm}

\vspace{1mm}}
{\end{tcolorbox}}


% solution styling
%--------------------------------------------------------------------------

% solution mark
\newcommand{\solutionmark}[1][پاسخ]{
    \vspace{2mm}\hspace{0mm}{\small\color{solutiongreen}{\textbf{#1}}}
}

% solution
\newcommand{\SOLUTION}[2][پاسخ]{
    
    \solutionmark[#1]
    \vspace{2mm}
    \begin{itshape}
        
        #2
    \end{itshape}
}



% end problem styling
%--------------------------------------------------------------------------
\newcommand{\EPROBLEM}[0]{
    \begin{tcolorbox}[
        enhanced jigsaw,
        breakable,
        pad at break*=1mm,
        colback=white,
        boxrule=0pt,
        frame hidden,
        borderline north={1.5mm}{-1mm}{black!10}]
    \vspace{-10mm}\hspace{-5mm}{\colorbox{black!10}{\refstepcounter{problem}\par\medskip{~\theproblem}}}
    \end{tcolorbox}
    \vspace{1mm}
}

% end wrong solution  styling
%--------------------------------------------------------------------------

%  wrong solution mark
\newcommand{\EWsolutionmark}[1][پاسخ غلط]{
    \vspace{-3mm}\hspace{-5.5mm}\colorbox{red!10}{\scriptsize\color{red}{#1}}
    \vspace{1mm}
}

%  wrong solution
\newcommand{\EWSOLUTION}[2][پاسخ غلط]{
    \begin{tcolorbox}[
        enhanced jigsaw,
        breakable,
        pad at break*=1mm,
        colback=white,
        boxrule=0pt,
        frame hidden,
        borderline east={1.5mm}{-2mm}{red!10}]

        \EWsolutionmark[#1]
        
        \begin{itshape}
            #2
        \end{itshape}

    \end{tcolorbox}
}

% end solution styling
%--------------------------------------------------------------------------

% end problem solution mark
\newcommand{\Esolutionmark}[1][پاسخ]{
    \vspace{-3mm}\hspace{-5.5mm}\colorbox{green!10}{\scriptsize\color{solutiongreen}{#1}}
    \vspace{1mm}
}

% end problem solution
\newcommand{\ESOLUTION}[2][پاسخ]{
    \begin{tcolorbox}[
        enhanced jigsaw,
        breakable,
        pad at break*=1mm,
        colback=white,
        boxrule=0pt,
        frame hidden,
        borderline east={1.5mm}{-2mm}{green!10}]

        \Esolutionmark[#1]
        
        \begin{itshape}
            #2
        \end{itshape}

    \end{tcolorbox}
}


% exercise styling
%--------------------------------------------------------------------------
\newcounter{exercise}[chapter]

\newcommand{\EXERCISE}[0]{

    \refstepcounter{exercise}\par\medskip{~\theexercise}.
}

% extra styling
%--------------------------------------------------------------------------
\newenvironment{EXTRA}[2][Template/images/mindset.png]
{\begin{tcolorbox}[
    enhanced jigsaw,
    breakable,
    pad at break*=1mm,
    colback=extrayellow!25,
    colframe=extraorange!65]
    \begin{flushleft}
        \vspace{-1.1cm}
        \hspace*{-1.5in}\includegraphics[width=0.15\linewidth]{#1}
    \end{flushleft}
    \begin{center}
        \vspace{-0.5cm}
        \textbf{\color{extraorange}{#2}}
        \vspace{0.3cm}
    \end{center}
}
{\end{tcolorbox}}


% affiliation
%--------------------------------------------------------------------------
\newenvironment{AFFILIATIONS}
{   
    \begin{center}
    \setlength\LTleft{0pt}
    \setlength\LTright{0pt}
    \begin{longtable}{@{\extracolsep{\fill}} c c c @{}}
}
{   
    \end{longtable}
    \end{center}
    \vspace{-1cm}
}

\newcommand{\AFFILIATIONURL}[2]{
    \href{#2}{\lr{\pbox{0.3\textwidth}{#1}}}
}
    
\newcommand{\AFFILIATIONROW}[9]{
    \pbox{0.3\textwidth}{#1} & \pbox{0.3\textwidth}{#4} & \pbox{0.3\textwidth}{#7} \\
    \tiny{\pbox{0.3\textwidth}{\centering#2}} & \tiny{\pbox{0.3\textwidth}{\centering#5}} & \tiny{\pbox{0.3\textwidth}{\centering#8}} \\
    \tiny{#3} & \tiny{#6} & \tiny{#9} \\
}