\ProvidesClass{MGLSA-cn-book-math}
\LoadClassWithOptions{ctexbook}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{graphicx}
\RequirePackage{enumitem}
\RequirePackage{geometry}
\RequirePackage{ulem}
\RequirePackage{xeCJKfntef}
\RequirePackage{hyperref}
\RequirePackage{biblatex}
\RequirePackage{harpoon}
\RequirePackage{ntheorem}

\geometry{scale=0.85,a4paper}

% set font
%\setCJKmainfont{思源宋体}

\everymath{\displaystyle} % make all math in the document large

\setlist[description]{leftmargin=\parindent,labelindent=\parindent} % To make description lists indent

\xeCJKsetup{underline = {skip = false}} % make underline does not skip punctuation

\makeatletter
% \overarrow@ and \arrowfill@ are defined in amsmath
\newcommand*{\overrightharpoonup}{\mathpalette{\overarrow@\rightharpoonupfill@}}
\newcommand*{\rightharpoonupfill@}{\arrowfill@\relbar\relbar\rightharpoonup}
\g@addto@macro{\CTEX@section@format}{\raggedright}
\g@addto@macro{\CTEX@chapter@format}{\raggedright}
\makeatother
\let\Vector\overrightharpoonup % define \Vector

\DeclareFontFamily{U}{matha}{\hyphenchar\font45}
\DeclareFontShape{U}{matha}{m}{n}{
      <5> <6> <7> <8> <9> <10> gen * matha
      <10.95> matha10 <12> <14.4> <17.28> <20.74> <24.88> matha12
      }{}
\DeclareSymbolFont{matha}{U}{matha}{m}{n}
\DeclareMathSymbol{\varrightharpoonup}{3}{matha}{"E1}

\let\cleardoublepage\clearpage % remove unwanted blank pages

\setcounter{secnumdepth}{3} % To make subsubsections numbered

\newtheorem{theorem}{定理}[section] % define theorem environment
\endinput
