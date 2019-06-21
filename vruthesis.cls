%% This file is the class
\NeedsTeXFormat{LaTeX2e}
\def\vruthesisversion{0.2}
\ProvidesClass{vruthesis}[2018/07/13 v\vruthesisversion\space A template for the Vali-e-Asr University of Rafsanjan]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[a4paper,10pt,twoside]{book}
%% Loading common used packages
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage[fleqn]{amsmath}
\RequirePackage{calc}
\RequirePackage{zref-perpage}
\zmakeperpage{footnote}
\RequirePackage{pdfpages}
\RequirePackage{cite}
\RequirePackage{tocloft}
\RequirePackage[labelsep=space]{caption}
\RequirePackage{titletoc}
\RequirePackage{titlesec}
\RequirePackage[inline]{enumitem}
%\RequirePackage[top=4.5cm,left=5cm,bottom=4.5cm,right=4cm]{geometry} 
%\RequirePackage[total={12cm,19cm},centering,includehead=true]{geometry} 
%\headsep=.7cm 
\RequirePackage[printonlyused,withpage]{acronym}
\RequirePackage[]{graphicx}
\graphicspath{{figs/}}
\RequirePackage{array}
\RequirePackage{multicol} 
\RequirePackage{fancyhdr}
\fancypagestyle{vrupage}{%
	\fancyhf{}% Clear header and footer
	\fancyhead[LO,RE]{\bfseries \thepage}
	\fancyhead[OR]{\bfseries \small\leftmark}
	\fancyhead[EL]{\bfseries \small\rightmark}
}
\fancypagestyle{vrutoc}{%
	\fancyhf{}% Clear header and footer
	\fancyhead[LO,RE]{\bfseries \thepage}
}
\fancypagestyle{plain}{%
	\fancyhf{}% Clear header and footer
	\renewcommand{\headrulewidth}{0pt}
}
\RequirePackage{zref-perpage}
\usepackage{remreset}
\RequirePackage{etoc}
%\renewcommand{\etocaftertitlehook}{\pagestyle{plain}}
%\renewcommand{\etocaftertochook}{\thispagestyle{plain}}
\RequirePackage{emptypage}
\RequirePackage{fancyvrb}
%\RequirePackage[nottoc]{tocbibind}
\RequirePackage{zref-perpage}
\zmakeperpage{footnote}
\RequirePackage{makeidx}
\makeindex
\RequirePackage[]{xcolor}
\newif\if@alg\@algfalse
\DeclareOption{alg}{
  \@algtrue
}
\newif\if@irandoc\@irandocfalse
\DeclareOption{irandoc}{
  \@irandoctrue
}
\newif\if@nowatermark\@nowatermarkfalse
\DeclareOption{nowatermark}{
  \@nowatermarktrue
}
\newif\if@edit\@editfalse
\DeclareOption{edit}{
  \@edittrue
}
\ProcessOptions\relax
\if@irandoc
	\renewcommand\cleardoublepage{%
		 \clearpage
		 \ifodd\value{page}\else\stepcounter{page}\fi
	}
\fi
\if@edit
	\RequirePackage[margin=1.5cm,includefoot,footskip=30pt]{geometry}
	%\renewcommand\headheight{12pt}
	\setlength{\parskip}{0cm}
	\linespread{1.6}
	%\renewcommand{\baselinestretch}{1.6}
	%\RequirePackage[right,displaymath,mathlines]{lineno}
	%\linenumbers
	\renewcommand\cleardoublepage{%
		 \clearpage
		 \ifodd\value{page}\else\stepcounter{page}\fi
	}
\else
	\RequirePackage[paperwidth=17cm, paperheight=23.5cm,top=2.5cm,left=3cm,bottom=2.7cm,right=2cm]{geometry}
	\RequirePackage[cam,a4,center,noinfo]{crop}
	\RequirePackage{float}
	\textwidth=12cm
	\textheight=19cm
	\linespread{1.3}
\fi
\if@edit
 \renewcommand\cleardoublepage{%
 \clearpage
 \ifodd\value{page}\else\stepcounter{page}\fi
}
\fi
\if@alg
	\RequirePackage{algorithmicx}
	\RequirePackage{algorithm}
	\RequirePackage{algpseudocode}
\fi
%%%%%%%%%%%%%%%%%
\newif\ifnofigures\nofiguresfalse
\newif\ifnotables\notablesfalse
\newif\ifnosymbols\nosymbolsfalse
\DeclareOption{nofigures}{\nofigurestrue}
\DeclareOption{notables}{\notablestrue}
\DeclareOption{nosymbols}{\nosymbolstrue}
\ProcessOptions\relax
%%%%%%%%%%%%%%%%
\PassOptionsToPackage{hyphens}{url}
\RequirePackage[]{hyperref} 
\RequirePackage{tabularx}
\RequirePackage{titlesec}
%\newcommand{\besmwidth}[1]{\def\@besmwidth{#1}}
\def\department#1{\gdef\@department{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\keywordsfa}[1]{\def\@keywordsfa{#1}}
\newcommand{\keywordsen}[1]{\def\@keywordsen{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\firstsupervisorrank}[1]{\def\@firstsupervisorrank{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\secondsupervisorrank}[1]{\def\@secondsupervisorrank{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\firstadvisorrank}[1]{\def\@firstadvisorrank{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\newcommand{\secondadvisorrank}[1]{\def\@secondadvisorrank{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\newcommand{\credit}[1]{\def\@credit{#1}}
\newcommand{\defensedate}[1]{\def\@defensedate{#1}}
\newcommand{\grade}[1]{\def\@grade{#1}}
\newcommand{\letgrade}[1]{\def\@letgrade{#1}}
\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\firstinternalreferee}[1]{\def\@firstinternalreferee{#1}}
\newcommand{\firstinternalrefereerank}[1]{\def\@firstinternalrefereerank{#1}}
\newcommand{\secondinternalreferee}[1]{\def\@secondinternalreferee{#1}}
\newcommand{\secondinternalrefereerank}[1]{\def\@secondinternalrefereerank{#1}}
\newcommand{\firstexternalreferee}[1]{\def\@firstexternalreferee{#1}}
\newcommand{\firstexternalrefereerank}[1]{\def\@firstexternalrefereerank{#1}}
\newcommand{\secondexternalreferee}[1]{\def\@secondexternalreferee{#1}}
\newcommand{\secondexternalrefereerank}[1]{\def\@secondexternalrefereerank{#1}}
\newcommand{\viewer}[1]{\def\@viewer{#1}}
\newcommand{\viewerrank}[1]{\def\@viewerrank{#1}}
\newcommand{\totext}[1]{\def\@totext{#1}}
\newcommand{\ack}[1]{\def\@ack{#1}}
\newcommand{\abstractfa}[1]{\def\@abstractfa{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\department#1{\gdef\@department{#1}}
%%%%%%%%%%%%%%%%%%%%
\def\titleen#1{\gdef\@titleen{#1}}
\def\runtitle#1{\gdef\@runtitle{#1}}
\def\departmenten#1{\gdef\@departmenten{#1}}
\def\thesisdateen#1{\gdef\@thesisdateen{#1}}
\newcommand{\firstsupervisoren}[1]{\def\@firstsupervisoren{#1}}
\newcommand{\firstsupervisorranken}[1]{\def\@firstsupervisorranken{#1}}
\newcommand{\secondsupervisoren}[1]{\def\@secondsupervisoren{#1}}
\newcommand{\secondsupervisorranken}[1]{\def\@secondsupervisorranken{#1}}
\newcommand{\firstadvisoren}[1]{\def\@firstadvisoren{#1}}
\newcommand{\firstadvisorranken}[1]{\def\@firstadvisorranken{#1}}
\newcommand{\secondadvisoren}[1]{\def\@secondadvisoren{#1}}
\newcommand{\secondadvisorranken}[1]{\def\@secondadvisorranken{#1}}
\def\nameen#1{\gdef\@nameen{#1}}
\def\surnameen#1{\gdef\@surnameen{#1}}
\newcommand{\crediten}[1]{\def\@crediten{#1}}
\newcommand{\defensedateen}[1]{\def\@defensedateen{#1}}
\newcommand{\gradeen}[1]{\def\@gradeen{#1}}
\newcommand{\letgradeen}[1]{\def\@letgradeen{#1}}
\newcommand{\degreeen}[1]{\def\@degreeen{#1}}
\newcommand{\firstinternalrefereeen}[1]{\def\@firstinternalrefereeen{#1}}
\newcommand{\firstinternalrefereeranken}[1]{\def\@firstinternalrefereeranken{#1}}
\newcommand{\secondinternalrefereeen}[1]{\def\@secondinternalrefereeen{#1}}
\newcommand{\secondinternalrefereeranken}[1]{\def\@secondinternalrefereeranken{#1}}
\newcommand{\firstexternalrefereeen}[1]{\def\@firstexternalrefereeen{#1}}
\newcommand{\firstexternalrefereeranken}[1]{\def\@firstexternalrefereeranken{#1}}
\newcommand{\secondexternalrefereeen}[1]{\def\@secondexternalrefereeen{#1}}
\newcommand{\secondexternalrefereeranken}[1]{\def\@secondexternalrefereeranken{#1}}
\newcommand{\vieweren}[1]{\def\@vieweren{#1}}
\newcommand{\viewerranken}[1]{\def\@viewerranken{#1}}
\newcommand{\abstracten}[1]{\def\@abstracten{#1}}
\newcommand{\preface}[1]{\def\@preface{#1}}

\renewcommand{\sectionmark}[1]{\markright{\@runtitle}}

\RequirePackage{array}
\newcolumntype{R}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{L}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\RequirePackage{longtable}
\RequirePackage{lscape}
\RequirePackage{rotating}
\RequirePackage{multirow}
\renewcommand\labelitemi{$\bullet$}
\def\facultyen#1{\gdef\@facultyen{#1}}
\def\subjecten#1{\gdef\@subjecten{#1}}
\def\fielden#1{\gdef\@fielden{#1}}
\def\departmenten#1{\gdef\@departmenten{#1}}
%%%%%%%%%%%%%%%%%%%%%%
%% based on the level of study
\gdef\@whatisit{پایان‌نامه}\relax
\gdef\@whatisitfull{پایان‌نامه کارشناسی ارشد}\relax
\gdef\@whatisiten{Thesis}\relax
\gdef\@whatisitfullen{Master of Science Thesis}\relax
\gdef\@den{Master of Science (M.Sc.)}
\DeclareOption{phd}{
	\gdef\@whatisit{پایان‌نامه}\relax
	\gdef\@whatisiten{Dissertation}\relax
	\gdef\@whatisitfull{پایان‌نامه دکتری}\relax
	\gdef\@whatisitfullen{Ph.D. Dissertation}\relax
	\gdef\@den{Doctor of Philosophy (Ph.D.)}\relax
}
\ProcessOptions\relax
\addtocontents{toc}{{\bfseries عنوان\hfill صفحه\par}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\vrutitle}{
	\pagestyle{empty}
\if@edit\else
	\begin{minipage}[c][\textwidth][c]{\textwidth}
		\centering
		\includegraphics[width=.9\textwidth]{InTheNameOfGod.jpg}
	\end{minipage}
	\newpage
	\vspace*{\fill}
	\noindent $ $
	\if@nowatermark\else
		\textcolor{gray}{
			آماده شده با استفاده از بسته‌ی 
			\lr{\texttt{vruthesis}}
			\space
			نسخه‌ی
			\space
			\lr{\vruthesisversion}
		}
	\fi 
	\cleardoublepage
	\newpage
\fi
	\begin{titlepage}
		\begin{minipage}[c]{\textwidth}
			\centering
			\includegraphics[width=2.75cm]{logo.png}
		\end{minipage}
		\par
		\centering
		{
			\fontsize{12pt}{12pt} \bfseries
			دانشگاه ولی‌عصر (عج) رفسنجان
		}
		\\[1pt]
		{
			\fontsize{11pt}{11pt} \bfseries
			\@faculty
		}
		\\[1pt]
		{
			\fontsize{10pt}{10pt}\bfseries
			گروه \@department
		}
		\par\vfill
		{
			\fontsize{13pt}{13pt}\bfseries
			\@whatisitfull%\space\@department
		}
		\\[1pt]
		{
			\fontsize{13pt}{13pt}\bfseries
			\@subject {-} \@field
		}
		\par\vfill
%		{
%			\fontsize{14pt}{14pt}\bfseries
%			عنوان 
%			\space\@whatisit
%		}
%		\\%[5pt]
		{
			\fontsize{14pt}{14pt}\bfseries
			\@title
		}
		\par\vfill
		{
			\fontsize{13pt}{13pt}\bfseries
			\ifx\@firstsupervisor\undefined % 
				\ifx\@secondsupervisor\undefined % 
				\else % 
				\fi % 
			\else % 
				\ifx\@secondsupervisor\undefined % 
					{
						\fontsize{13pt}{13pt}\bfseries
						استاد راهنما
					}
					\\%[10pt]
					{
						\fontsize{12pt}{12pt}\bfseries
						\@firstsupervisor
					}
				\else % 
					{
						\fontsize{13pt}{13pt}\bfseries
						استادان راهنما
					}
					\\%[10pt]
					{
						\fontsize{12pt}{12pt}\bfseries
						\@firstsupervisor{} 
						\\%[10pt] 
						\@secondsupervisor
					}
				\fi % 
			\fi % 
		}
		\par
		\vfill
		\ifx\@firstadvisor\undefined % 
			\ifx\@secondadvisor\undefined % 
			\else % 
			\fi % 
		\else % 
			\ifx\@secondadvisor\undefined % 
				{
					\fontsize{13pt}{13pt}\bfseries
					استاد مشاور
				}
				\\%[10pt]
				{
					\fontsize{13pt}{13pt}\bfseries
					\@firstadvisor
				}
			\else % 
				{
					\fontsize{13pt}{13pt}\bfseries
					استادان مشاور
				}
				\\%[10pt]
				{
					\fontsize{12pt}{12pt}\bfseries
					\@firstadvisor 
					\\%[10pt] 
					\@secondadvisor
				}
			\fi % 
		\fi % 
		\par\vfill
		{
			\fontsize{12pt}{12pt}\bfseries
			نگارنده
		}
		\\%[10pt]
		{
			\fontsize{12pt}{12pt}\bfseries
			\@name\space\@surname
		}
		\par\vfill
		{
			\fontsize{12pt}{12pt}\bfseries
			\@thesisdate
		}
	\end{titlepage}
	\cleardoublepage
\if@edit\else
	\newpage
	\includepdf{gradefa.pdf} % 
	% \newgeometry{paperwidth=17cm, paperheight=23.5cm,top=1cm,left=.5cm,bottom=1cm,right=1.5cm}
	% \makeatletter\CROP@center\makeatother
	% \begin{center}
		% \begin{minipage}[c]{\textwidth}
			% \centering
			% \includegraphics[width=2.75cm]{logo.png}
		% \end{minipage}
		% \par
		% {
			% \fontsize{12pt}{12pt} \bfseries
			% دانشگاه ولی‌عصر (عج) رفسنجان
		% }
		% \\%[11pt]
		% {
			% \fontsize{11pt}{11pt}\bfseries
			% \@faculty
		% }
		% \\%[10pt]
		% {
			% \fontsize{10pt}{10pt}\bfseries
			% \@department
		% }
		% \\[10pt]
		% {
			% \fontsize{12pt}{12pt}\bfseries
			% \@whatisitfull\space\@department
		% }
		% \\%[10pt]
		% {
			% \fontsize{12pt}{12pt}\bfseries
			% \@subject {-} \@field
		% }
		% \par\vfill
		% {
			% \fontsize{12pt}{12pt}\bfseries
			% \@name\space\@surname
		% }
		% \par\vfill
		% {
			% \fontsize{14pt}{14pt}\bfseries
			% عنوان\space\@whatisit
		% }
		% \\%[10pt]
		% {
			% \fontsize{14pt}{14pt}\bfseries
			% \@title
		% }
		% \par\vfill
	% \end{center}
	% \par\vfill
	% {
		% \noindent\flushright\fontsize{11pt}{11pt}\bfseries
		% در تاریخ
		% \space
		% \ifx\@defensedate\undefined % 
			% ......................
		% \else % 
			% \@defensedate
		% \fi % 
		% \space
		% توسط هیأت داوران زیر بررسی و با درجه‌ی
		% \space
		% \ifx\@degree\undefined % 
			% ......................
		% \else % 
			% \@degree
		% \fi % 
		% \space
		% به تصویب نهایی رسید.
	% }
	% \\%[11pt]
	% {
		% \fontsize{11pt}{11pt}\bfseries
		% \ifx\@firstsupervisor\undefined % 
			% \ifx\@secondsupervisor\undefined % 
			% \else % 
			% \fi % 
		% \else % 
			% \ifx\@secondsupervisor\undefined % 
				% \begin{tabularx}{\textwidth}{rXl}
					% استاد راهنمای
					% \space\@whatisit\space
					 % \@firstsupervisor\space با مرتبه‌ی علمی \@firstsupervisorrank & &  امضاء
				 % \end{tabularx}
			% \else % 
				% \begin{tabularx}{\textwidth}{rXl}
					% استاد راهنمای 
					% \space\@whatisit\space
					 % \@firstsupervisor\space با مرتبه‌ی علمی \@firstsupervisorrank & & امضاء
					
				% \end{tabularx}
				% \\%[11pt]
				% \begin{tabularx}{\textwidth}{rXl}
					% استاد راهنمای 
					% \space\@whatisit\space
					 % \@secondsupervisor\space با مرتبه‌ی علمی \@secondsupervisorrank & & امضاء
				% \end{tabularx}
			% \fi % 
		% \fi % 
		% \\%[11pt]
		% \ifx\@firstadvisor\undefined % 
			% \ifx\@secondadvisor\undefined % 
			% \else % 
			% \fi % 
		% \else % 
			% \ifx\@secondadvisor\undefined % 
				% \begin{tabularx}{\textwidth}{rXl}
					% استاد مشاور 
							% \space\@whatisit\space
						 % \@firstadvisor\space با مرتبه‌ی علمی \@firstadvisorrank & & امضاء
				% \end{tabularx}
			% \else % 
				% \begin{tabularx}{\textwidth}{rXl}
				% استاد مشاور 
						% \space\@whatisit\space
						 % \@firstadvisor با مرتبه‌ی علمی \@firstadvisorrank & & امضاء
				% \end{tabularx}
				% \\%[11pt]
				% \begin{tabularx}{\textwidth}{rXl}
					% استاد مشاور 
					% \space\@whatisit\space
				 % \@secondadvisor با مرتبه‌ی علمی \@secondadvisorrank & &  امضاء
			 % \end{tabularx}
			% \fi % 
		% \fi % 
		% \\%[11pt]
		% \ifx\@firstinternalreferee\undefined % 
			% \ifx\@secondinternalreferee\undefined % 
			% \else % 
			% \fi % 
		% \else % 
			% \ifx\@secondinternalreferee\undefined % 
				% \begin{tabularx}{\textwidth}{rXl}
						% استاد داور داخل گروه  
						% \space\@whatisit\space
					 % \@firstinternalreferee با مرتبه‌ی علمی \@firstinternalrefereerank & &  امضاء
				% \end{tabularx}
			% \else % 
				% \begin{tabularx}{\textwidth}{rXl}
					% استاد داور داخل گروه  
					% \space\@whatisit\space
					% \@firstinternalreferee\space با مرتبه‌ی علمی \@firstinternalrefereerank & & امضاء
				% \end{tabularx}
				% \\%[11pt]
				% \begin{tabularx}{\textwidth}{rXl}
					% استاد داور داخل گروه  
					% \space\@whatisit\space
					% \@secondinternalreferee\space با مرتبه‌ی علمی \@secondinternalrefereerank & & امضاء
				 % \end{tabularx}
			% \fi % 
		% \fi %
		% \\%[11pt]
		% \ifx\@firstexternalreferee\undefined % 
			% \ifx\@secondexternalreferee\undefined % 
			% \else % 
			% \fi % 
		% \else % 
			% \ifx\@secondexternalreferee\undefined % 
				% \begin{tabularx}{\textwidth}{rXl}
						% استاد داور داخل گروه  
						% \space\@whatisit\space
					 % \@firstexternalreferee با مرتبه‌ی علمی \@firstexternalrefereerank & &  امضاء
				% \end{tabularx}
			% \else % 
				% \begin{tabularx}{\textwidth}{rXl}
					% استاد داور داخل گروه  
					% \space\@whatisit\space
					% \@firstexternalreferee\space با مرتبه‌ی علمی \@firstexternalrefereerank & & امضاء
				% \end{tabularx}
				% \\%[11pt]
				% \begin{tabularx}{\textwidth}{rXl}
					% استاد داور داخل گروه  
					% \space\@whatisit\space
					% \@secondexternalreferee\space با مرتبه‌ی علمی \@secondexternalrefereerank & & امضاء
				 % \end{tabularx}
			% \fi % 
		% \fi % 
	% }
	\clearpage
	\newpage
	{
		\begin{center}
			\vspace*{\fill}
			\bfseries\large\noindent
			تمامي حقوق مادي مترتب بر نتايج مطالعات، ابتکارات و نوآوري‌هاي
			\par
		حاصل از پژوهش موضوع اين پايان‌نامه، متعلق به دانشگاه
		\par
		ولي‌عصر (عج) رفسنجان است.
		\par
		\end{center}
		\vspace*{\fill}
	}
	\newpage
	%\newgeometry{paperwidth=17cm, paperheight=23.5cm,top=2.5cm,left=2cm,bottom=2.7cm,right=3cm}
	%\makeatletter\CROP@center\makeatother
	\ifx\@ack\undefined % 
	\else % 
		\@ack
	\fi % 
	\cleardoublepage
	\newpage
	\ifx\@totext\undefined % 
	\else % 
		\@totext 
		\newpage
	\fi % 
\fi % for edit
	\ifnosymbols\else 
		\cleardoublepage
		\pagestyle{empty}
		\printabbreviation
	\fi
	\cleardoublepage
	\newpage
	\ifx\@abstractfa\undefined % 
	\else % 
		{
			\fontsize{12pt}{12pt}
			\noindent{\hfill\bfseries چکیده \hfill}
			\par\vspace*{\baselineskip}
			\@abstractfa
			\par
		}
	\fi % 
	\ifx\@keywordsfa\undefined % 
	\else % 
		{
			\vspace*{.5\baselineskip}
			\fontsize{10pt}{10pt}
			\noindent{\bfseries کلمات‌کلیدی:}
			\@keywordsfa
		}
	\fi % 
	\cleardoublepage
	\newpage
	\ifx\@preface\undefined % 
	\else % 
		{
			\fontsize{10pt}{10pt}
			\noindent{\hfill\bfseries پیشگفتار \hfill}
			\par\vspace*{\baselineskip}
			\@preface
%			\par
			\begin{flushleft}
				\@name\space\@surname % 
				- %\\ \noindent %\par % 
				\@thesisdate % 
			\end{flushleft}
		}
	\fi % 
	\cleardoublepage
	\newpage
	\pagestyle{vrutoc}
	\pagenumbering{harfi}
	\setcounter{page}{1}
	\setcounter{tocdepth}{4}
	\tableofcontents
	%اضافه کردن نقطه چین برای فصول در فهرست مطالب
	\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
	\ifnofigures\else 
		%\cleardoublepage
		\newpage
		\addtocontents{lof}{{\bfseries عنوان\hfill صفحه\par}}
		%\listoffigures
		%\renewcommand{\cftfigfont}{شکل }
		\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}} 
		\begingroup
			\let\oldnumberline\numberline
			\renewcommand{\numberline}{شکل~\oldnumberline}
			\listoffigures
		\endgroup
	\fi 
	\ifnotables\else 
		%\cleardoublepage
		\newpage
		\addtocontents{lot}{{\bfseries عنوان\hfill صفحه\par}}
		%\listoftables
		%\renewcommand{\cfttabfont}{جدول }
		\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}} 
		\begingroup
			\let\oldnumberline\numberline
			\renewcommand{\numberline}{جدول~\oldnumberline}
			
			\listoftables
		\endgroup
	\fi 
	%\cleardoublepage
	\newpage
	\if@alg
		\addtocontents{loa}{{\bfseries عنوان\hfill صفحه\par}}
		\begingroup
			\renewcommand{\thealgorithm}{\arabic{chapter}-\arabic{algorithm}} 
			\let\oldnumberline\numberline
			\renewcommand{\numberline}{الگوریتم~\oldnumberline}
			\renewcommand{\listalgorithmname}{\hfill فهرست الگوریتم‌ها \hfill}
			\listofalgorithms
		\endgroup
		\cleardoublepage
		\newpage
	\fi
	\pagestyle{vrupage}
	\pagenumbering{arabic}
	\setcounter{page}{1}
} % end of vrutitle
\newcommand{\vrutitleen}{
	\pagestyle{empty}
\if@edit\else
	\cleardoublepage
	\newpage
	\space${}^{}$\space
	\clearpage
	\newpage
\fi
	\ifx\@abstracten\undefined % 
	\else % 
		\begin{latin}
			{
				\fontsize{11pt}{11pt}
				\noindent{\hfill\bfseries Abstract\hfill}
				\par\vspace*{\baselineskip}
				\@abstracten
				\ifx\@keywordsen\undefined % 
				\else % 
					\par
					\vspace{.5\baselineskip}
					\noindent{\bfseries Keywords:}\@keywordsen
				\fi % 
			}
		\end{latin}
	\fi % 
\if@edit\else
	\cleardoublepage
	\newpage
	\space${}^{}$\space
	\clearpage
	\newpage
	\includepdf{gradeen.pdf} % 
	%\newgeometry{right=2cm,left=3cm,top=2cm,bottom=2cm}
	% \begin{latin}
		% \begin{center}
			% \begin{minipage}[c]{\textwidth}
				% \centering
				% \includegraphics[width=2.75cm]{logo.png}
			% \end{minipage}
			% \par
			% {
				% \fontsize{11pt}{11pt} \bfseries
				% Vali-e-Asr University of Rafsanjan
			% }
			% \\[11pt]
			% {
				% \fontsize{10pt}{10pt}\bfseries
				% Faculty of \@facultyen
			% }
			% \\%[10pt]
			% {
				% \fontsize{9pt}{9pt}\bfseries
				% Department of \@departmenten
			% }
			% \par\vfill
			% {
				% \fontsize{12pt}{12pt}\bfseries
				% \@nameen\space\@surnameen
			% }
			% \par\vfill
			% {
				% \fontsize{12pt}{12pt}\bfseries
				% \@titleen
			% }
			% \par\vfill
			% {
				% \fontsize{10pt}{10pt}\bfseries
				% A\space\@whatisitfullen\space Submitted in Partial Fulfillment of the Requirements for the Degree of \@den\space in \@subjecten\space- \@fielden
			% }
		% \end{center}
	% \end{latin}
	% \par\vfill
	% \begin{latin}
		% {
			% \noindent\flushright\fontsize{10pt}{10pt}%\bfseries
			% Evaluated and Approved by the Thesis Committee as
			% \space
			% \ifx\@degreeen\undefined % 
				% ......................
			% \else % 
				% \@degreeen
			% \fi % 
			% \space
			% Date:
			% \space
			% \ifx\@defensedateen\undefined % 
				% ......................
			% \else % 
				% \@defensedateen
			% \fi % 
		% }
		% \\[11pt]
		% {
			% \fontsize{11pt}{11pt}%\bfseries
			% \ifx\@firstsupervisoren\undefined % 
				% \ifx\@secondsupervisoren\undefined % 
				% \else % 
				% \fi % 
			% \else % 
				% \ifx\@secondsupervisoren\undefined % 
					% \begin{tabularx}{\textwidth}{lXl}
						% ............. & & 
						% Supervisor: \@firstsupervisoren\space,\space\@firstsupervisorranken
					 % \end{tabularx}
				% \else % 
					% \begin{tabularx}{\textwidth}{lXl}
						% ............. & & 
						% Supervisor: \@firstsupervisoren,\space\@firstsupervisorranken
						
					% \end{tabularx}
					% \\[11pt]
					% \begin{tabularx}{\textwidth}{lXl}
						% ............. & & 
						% Supervisor: \@secondsupervisoren, \space\@secondsupervisorranken
					% \end{tabularx}
				% \fi % 
			% \fi % 
			% \\[11pt]
			% \ifx\@firstadvisoren\undefined % 
				% \ifx\@secondadvisoren\undefined % 
				% \else % 
				% \fi % 
			% \else % 
				% \ifx\@secondadvisoren\undefined % 
					% \begin{tabularx}{\textwidth}{lXl}
						% ............. & & 
						% Advisor: \@firstadvisoren,\space\@firstadvisorranken
					% \end{tabularx}
				% \else % 
					% \begin{tabularx}{\textwidth}{lXl}
					% ............. & & 
					% Advisor: \@firstadvisoren,\space\@firstadvisorranken
					% \end{tabularx}
					% \\[11pt]
					% \begin{tabularx}{\textwidth}{lXl}
						% ............. & & 
						% Advisor: \@secondadvisoren,\space\@secondadvisorranken
				 % \end{tabularx}
				% \fi % 
			% \fi % 
			% \\[11pt]
			% \ifx\@firstinternalrefereeen\undefined % 
				% \ifx\@secondinternalrefereeen\undefined % 
				% \else % 
				% \fi % 
			% \else % 
				% \ifx\@secondinternalrefereeen\undefined % 
					% \begin{tabularx}{\textwidth}{lXl}
							% ............. & & 
							% Internal Examiner: \@firstinternalrefereeen, \@firstinternalrefereeranken
					% \end{tabularx}
				% \else % 
					% \begin{tabularx}{\textwidth}{lXl}
						% ............. & & 
						% Internal Examiner: \@firstinternalrefereeen,\space\@firstinternalrefereeranken
					% \end{tabularx}
					% \\[11pt]
					% \begin{tabularx}{\textwidth}{lXl}
						% ............. & & 
						% Internal Examiner: \@secondinternalrefereeen,\space\@secondinternalrefereeranken
					 % \end{tabularx}
				% \fi % 
			% \fi %
			% \\[11pt]
			% \ifx\@firstexternalrefereeen\undefined % 
				% \ifx\@secondexternalrefereeen\undefined % 
				% \else % 
				% \fi % 
			% \else % 
				% \ifx\@secondexternalrefereeen\undefined % 
					% \begin{tabularx}{\textwidth}{lXl}
							% ............. & & 
						% External Examiner: \@firstexternalrefereeen, \@firstexternalrefereeranken
					% \end{tabularx}
				% \else % 
					% \begin{tabularx}{\textwidth}{lXl}
						% ............. & & 
						% External Examiner: \@firstexternalrefereeen,\space\@firstexternalrefereeranken
					% \end{tabularx}
					% \\[11pt]
					% \begin{tabularx}{\textwidth}{lXl}
						% ............. & & 
						% External Examiner: \@secondexternalrefereeen,\space\@secondexternalrefereeranken
					 % \end{tabularx}
				% \fi % 
			% \fi % 
		% }
	% \end{latin}
	\cleardoublepage
	\newpage
	\space${}^{}$\space
	\clearpage
\fi 
	\newpage
	%\newgeometry{top=4.5cm,left=5cm,bottom=4.5cm,right=4cm}
	{
		\begin{latin}
			\begin{minipage}[c]{\textwidth}
				\centering
				\hspace*{-.5cm}\includegraphics[width=2.75cm]{logo.png}
			\end{minipage}
			\par
			\centering
			{
				\fontsize{11pt}{11pt} \bfseries
				Vali-e-Asr University of Rafsanjan
			}
			\\[1pt]
			{
				\fontsize{10pt}{10pt} \bfseries
				\@facultyen
			}
			\\[1pt]
			{
				\fontsize{9pt}{9pt}\bfseries
				Department of \@departmenten
			}
			\par\vfill
			{
				\fontsize{10pt}{10pt}\bfseries
				A\space\@whatisitfullen\space Submitted in Partial Fulfillment of the Requirements for the Degree of \@den\space in \@subjecten\space- \@fielden
			}
			\par\vfill
			{
				\fontsize{12pt}{12pt}\bfseries
				\@titleen
			}
			\par\vfill
			{
				\fontsize{11pt}{11pt}\bfseries
				\ifx\@firstsupervisoren\undefined % 
					\ifx\@secondsupervisoren\undefined % 
					\else % 
					\fi % 
				\else % 
					\ifx\@secondsupervisoren\undefined % 
						{
							\fontsize{11pt}{11pt}\bfseries
							Supervisor
						}
						\\%[10pt]
						{
							\fontsize{11pt}{11pt}\bfseries
							\@firstsupervisoren
						}
					\else % 
						{
							\fontsize{11pt}{11pt}\bfseries
							Supervisors
						}
						\\%[10pt]
						{
							\fontsize{11pt}{11pt}\bfseries
							\@firstsupervisoren
							\\[11pt]
							\@secondsupervisoren
						}
					\fi % 
				\fi % 
			}
			\par
			\vfill
			\ifx\@firstadvisoren\undefined % 
				\ifx\@secondadvisoren\undefined % 
				\else % 
				\fi % 
			\else % 
				\ifx\@secondadvisoren\undefined % 
					{
						\fontsize{11pt}{11pt}\bfseries
						Advisor
					}
					\\%[10pt]
					{
						\fontsize{11pt}{11pt}\bfseries
						\@firstadvisoren
					}
				\else % 
					{
						\fontsize{11pt}{11pt}\bfseries
						Advisors
					}
					\\%[10pt]
					{
						\fontsize{11pt}{11pt}\bfseries
						\@firstadvisoren
						\\[11pt]
						\@secondadvisoren
					}
				\fi % 
			\fi % 
			\par\vfill
			{
				\fontsize{11pt}{11pt}\bfseries
				By
			}
			\\%[10pt]
			{
				\fontsize{11pt}{11pt}\bfseries
				\@nameen\space\@surnameen
			}
			\par\vfill
			{
				\fontsize{10pt}{10pt}\bfseries
				\@thesisdateen
			}
		\end{latin}
	}
} % end of vrutitleen
\AtBeginDocument{
	\setlength{\parindent}{.5cm}
	\renewcommand*{\proofname}{برهان}

	\renewcommand\contentsname{\hfill فهرست مطالب \hfill}
	\renewcommand{\cftaftertoctitle}{\hfill}
	\renewcommand\listtablename{\hfill فهرست جدول‌ها \hfill}
	\renewcommand\listfigurename{\hfill فهرست شکل‌ها \hfill}

	\numberwithin{equation}{section}
	\theoremstyle{definition}
	\newtheorem{definition}{تعریف}[section]
	\theoremstyle{plain}
	\newtheorem{theorem}[definition]{قضیه}
	\newtheorem{lemma}[definition]{لم}
	\newtheorem{conjecture}[definition]{حدس}
	\newtheorem{problem}[definition]{مسئله}
	\newtheorem{proposition}[definition]{گزاره}
	\newtheorem{corollary}[definition]{نتیجه}
	\newtheorem{remark}[definition]{ملاحظه}
	\theoremstyle{definition}
	\newtheorem{example}[definition]{مثال}
	\renewcommand{\bibname}{فهرست مراجع}
	‎\baselineskip=1cm‎
	%\makeatletter
	\def\abjad@zero{}
	\def\abj@num@i#1{%
	  \ifcase#1\or الف\or ب\or ج\or د%
			   \or ه‍\or و\or ز\or ح\or ط\fi
	  \ifnum#1=\z@\abjad@zero\fi}
	\def\abj@num@ii#1{%
	  \ifcase#1\or ی\or ک\or ل\or م\or ن%
			   \or س\or ع\or ف\or ص\fi
	  \ifnum#1=\z@\fi\abj@num@i}
	\def\abj@num@iii#1{%
	  \ifcase#1\or ق\or ر\or ش\or ت\or ث%
				\or خ\or ذ\or ض\or ظ\fi
	  \ifnum#1=\z@\fi\abj@num@ii}
	\def\abj@num@iv#1{%
	  \ifcase#1\or غ\fi
	  \ifnum#1=\z@\fi\abj@num@iii}
	   \let\@latinalph\@alph%
	   \let\@latinAlph\@Alph%
	\def\PersianAlphs{%
	   \let\@alph\abjadnumeral%
	   \let\@Alph\abjadnumeral%
	}
	\def\LatinAlphs{%
	   \let\@alph\@latinalph%
	   \let\@Alph\@latinAlph%
	}
	\PersianAlphs
	\setcounter{secnumdepth}{4}
	‎\DefineVerbatimEnvironment{myverbatim}{Verbatim}{commandchars=+\[\]}‎	
}
\makeatother

\makeatletter
	\@removefromreset{footnote}{chapter}
\makeatother