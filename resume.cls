% Intro Options
\ProvidesClass{resume}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=1cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage{fontawesome}
\usepackage{tabularx}
% Color definitions
\definecolor{heading}{HTML}{606060}
\definecolor{subheading}{HTML}{000000}
\definecolor{position}{HTML}{606060}
\definecolor{technologies}{HTML}{505050}
\definecolor{body-text}{HTML}{030303}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=body-text, Path = fonts/lato/]{Lato-Reg}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

% Name command
\newcommand{\namesection}[6]{
  \begin{tabularx}{\textwidth}{Xr}
       \begin{tabular}[x]{@{}l@{}}
          \hspace{-8mm}{\fontspec[Path = fonts/lato/]{Lato-Hai}\fontsize{35pt}{10cm}\selectfont #1}
          \vspace{1.5mm}
          {\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{35pt}{10cm}\selectfont #2}\\
          \hspace{-6.5mm}{\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{10cm}\selectfont #3}
          \vspace{1.5mm}
      \end{tabular}
    &
      \begin{tabular}[x]{@{}r@{}}
        \\
        {\fontsize{11pt}{10cm}\selectfont #4}\\
        {\fontsize{11pt}{10cm}\selectfont #5}\\
        {\fontsize{11pt}{10cm}\selectfont #6}
      \end{tabular} 
    \end{tabularx}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{heading}
\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{17pt}{24pt}\selectfont \raggedright}{}{0em}{}

% Body command
\newcommand{\body}[1]{\color{body-text}\raggedright\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{10.3pt}{12pt} \selectfont {#1\\} \normalfont}

% Bodybold command
\newcommand{\bodybold}[1]{\color{body-text}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10.3pt}{12pt} \selectfont {#1} \normalfont}

% Bodyit command
\newcommand{\bodyit}[1]{\color{body-text}\fontspec[Path = fonts/lato/]{Lato-RegIta}\fontsize{10.3pt}{12pt} \selectfont {#1} \normalfont}

% Subsections command
\newcommand{\runsubsection}[1]{\color{subheading}
\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Position command
\newcommand{\position}[1]{\color{position}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Regular}\fontsize{12pt}{13pt}\selectfont {#1 } \normalfont}

% Position date command
\newcommand{\positiondate}[1]{\color{body-text}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Light}\fontsize{10.3pt}{12pt}\selectfont {#1\\} \normalfont}

% Technologies command
\newcommand{\technologies}[1]{\vspace{0.5mm}\color{technologies}
\fontspec[Path = fonts/raleway/]{Raleway-Italic}\fontsize{10pt}{12pt}\selectfont{#1} \normalfont\vspace{0.5mm}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\fontsize{10pt}{12pt}\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}\vspace{1.75 mm}}

\newcommand{\raisedrulefill}[2][0ex]{\leaders\hbox{\rule[#1]{1pt}{#2}}\hfill}
