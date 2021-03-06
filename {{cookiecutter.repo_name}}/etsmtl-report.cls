{% raw %}% Preprocessor
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{etsmtl-report}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

\ProcessOptions

% Modifying contents of class
\LoadClass{report}

% Euro Symbol handling
\usepackage[gen]{eurosym}
\usepackage{amsmath}

%hyperlinks
\usepackage{hyperref}

% utf8 character set
\usepackage[utf8]{inputenc}

% Some setings for spacings and toc contents
\setcounter{tocdepth}{5}
\setcounter{secnumdepth}{5}
\setlength{\parindent}{1em}
\setlength{\parskip}{1em}

% Manage blank pages
\usepackage{afterpage}
\newcommand\blankpage{%
	\null
	\thispagestyle{empty}%
	\addtocounter{page}{-1}%
	\newpage}

% Page layout, headers and footers
%\usepackage{geometry}
%\geometry{a4paper, footskip=50pt }

% Change values in total to modify the usable space in page (and hence, the margins)
\usepackage[a4paper, total={6.5in, 9.75in}]{geometry}

% two sided specifications will only be applied if document is set to be two sided.
\usepackage{fancyhdr}
% Defining the headers
\fancypagestyle{myfancystyle}{
  \rhead{ \includegraphics[scale=0.15]{ets-logo} } % left logo
  \lhead{\textbf{\coursename} \\ \thetitle} % right logo
  \renewcommand{\headrulewidth}{1pt} % add rule below header
  \renewcommand{\footrulewidth}{1pt} % add rule aboce footer
  \lfoot{\today}
  \rfoot{\thepage}
  \cfoot{}
}
\addtolength{\headheight}{0cm} % make more space for the header
\pagestyle{myfancystyle}

% Some chapter redefining
\usepackage{etoolbox}
\patchcmd{\chapter}{\thispagestyle{plain}}{\thispagestyle{fancy}}{}{}

% Image handling
\usepackage{graphicx}
\usepackage{float}
\graphicspath{{figs/}}

% Redefine chapter style
\usepackage{titlesec}
\titleformat{\chapter}[hang]{\normalfont\Large\bfseries}{\thechapter}{1em}{}[]
% Redefine section style
\titleformat*{\section}{\normalfont\normalsize\bfseries}
% Change spacings
% \titlespacing*{<command>}{<left>}{<before-sep>}{<after-sep>}
\titlespacing*{\chapter}
{0pt}{0ex plus .2ex minus .2ex}{1ex plus .2ex}
\titlespacing*{\section}
{0pt}{5ex plus 1ex minus .2ex}{4.3ex plus .2ex}
\titlespacing*{\subsection}
{0pt}{5ex plus 1ex minus .2ex}{4.3ex plus .2ex}

\titlespacing\section{0pt}{8pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{8pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsubsection{0pt}{8pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}

% Code insertion

\usepackage{listings}
\usepackage{color}
% Matlab defined
\definecolor{lightgray}{gray}{0.5}
\definecolor{codeback}{rgb}{0.94,0.94,0.94}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

% C code
\lstset{frame=tb,language=C,aboveskip=3mm,belowskip=3mm,showstringspaces=false,columns=flexible,basicstyle={\small\ttfamily},numbers=none,numberstyle=\tiny\color{gray},keywordstyle=\color{blue},commentstyle=\color{dkgreen},stringstyle=\color{mauve},breaklines=true,breakatwhitespace=true,tabsize=3}

% Matlab code
\lstset{frame=none,language=Matlab,
   keywords={break,case,catch,continue,else,elseif,end,for,function,
      global,if,otherwise,persistent,return,switch,try,while,all,on,off,ones,zeros},
   basicstyle=\small\ttfamily,
   keywordstyle=\color{blue},
   commentstyle=\color{dkgreen},
   stringstyle=\color{mauve},
   %numbers=left,
   %numberstyle=\tiny\color{gray},
   %stepnumber=1,
   numbersep=10pt,
   backgroundcolor=\color{codeback},
   tabsize=4,
   showspaces=false,
   showstringspaces=false}

\usepackage{color}
\usepackage{listings}
\usepackage{courier}

% For theorems and lemmas
\usepackage{amsmath,amsthm}
\newtheorem{lem}{Theorem}

\endinput{% endraw %}