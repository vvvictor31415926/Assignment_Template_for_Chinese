\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}[2025/10/07]
\LoadClass[UTF8,openany]{ctexbook}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{xcolor}
\geometry{
    a4paper,
    left=2cm,
    right=2cm,
    top=2cm,
    bottom=2cm,
}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{float}
\RequirePackage{booktabs}
\RequirePackage{tikz}
\RequirePackage[framemethod=tikz]{mdframed}
\RequirePackage{siunitx}
\RequirePackage{enumitem}
\numberwithin{figure}{section}
\numberwithin{equation}{section}
\numberwithin{table}{section}
\RequirePackage{tcolorbox}
\RequirePackage{chngcntr}  
\RequirePackage{titlesec}
\RequirePackage{listings}

\tcbuselibrary{theorems}  
\RequirePackage{titletoc}
\tcbuselibrary{theorems}
\newcommand{\dalembert}{\mathop{}\!\square}
%----------
\def\@studentname{未设置}
\def\@studentclass{未设置}
\def\@studentid{未设置}
\def\@course{未设置}
\def\@season{未设置}
\def\@year{未设置}
%----------
%个人信息设置
\newcommand{\studentname}[1]{\def\@studentname{#1}}    % 姓名
\newcommand{\studentclass}[1]{\def\@studentclass{#1}} % 班级
\newcommand{\studentid}[1]{\def\@studentid{#1}}  %学号
%----------
\newcommand{\course}[1]{\def\@course{#1}}  %课程
\newcommand{\season}[1]{\def\@season{#1}}  %季节
\newcommand{\years}[1]{\def\@years{#1}}  %年份
% 设置编号格式
\counterwithout{section}{chapter}
\renewcommand{\thesection}{作业\chinese{section}}
\titleformat{\section}
  {\centering\zihao{3}\bfseries}
  {\thesection}  % 显示“作业一”
  {1em}
  {}

\renewcommand{\theequation}{\arabic{section}.\arabic{equation}}
\renewcommand{\thefigure}{\arabic{section}.\arabic{figure}}
\renewcommand{\thetable}{\arabic{section}.\arabic{table}}
\renewcommand{\thesubsection}{作业\arabic{section}.\arabic{subsection}}

\renewcommand{\thechapter}{作业集\chinese{chapter}} % 正文和目录中的编号格式
\ctexset{
  chapter/name = {},
  chapter/number = \thechapter,
  chapter/numberformat = {},
}
\newmdenv[
  backgroundcolor=gray!10, 
  linewidth=1pt,
  skipabove=12pt,
  skipbelow=12pt, 
  innertopmargin=10pt,
  innerbottommargin=10pt,
  innerleftmargin=15pt,
  innerrightmargin=15pt,
  roundcorner=0pt
]{keywordsbox} 

%个人信息栏
\newcommand{\assignment}[1]{
  \newpage
  \section{#1} 
  \vspace{0pt} 
  \begin{tcolorbox}[
    colback=white,
    colframe=white, 
    arc=2pt,
    halign=center,
    fontupper=\zihao{5}
  ]
  \textbf{姓名：}\kaishu \@studentname\quad
  \textbf{\songti 班级：}\kaishu \@studentclass\quad
  \textbf{\songti 学号：}\kaishu \@studentid
  \end{tcolorbox}
  \vspace{0pt}
}

%problem
\newcounter{problem}[subsection]
\renewcommand{\theproblem}{\arabic{problem}}

\newmdenv[
  backgroundcolor=gray!10, 
  linewidth=0pt,
  skipabove=12pt,
  skipbelow=12pt, 
  innertopmargin=10pt,
  innerbottommargin=10pt,
  innerleftmargin=15pt,
  innerrightmargin=15pt,
  roundcorner=0pt
]{problembox} 



\newenvironment{problem}[1][]{
  \stepcounter{problem}
  \begin{problembox}
  \textbf{习题 \theproblem \ \ \kaishu}
  \ifx\\#1\\\relax\else\quad (#1)\fi
}{
  \end{problembox}
}

%solution
\newtheorem*{solution}{\heiti 解}

%----------
%封面
\title{\@course 作业集}
\author{\@studentname\\ \@studentclass,\ \@studentid}
\date{\@season\ \@years}
%----------

