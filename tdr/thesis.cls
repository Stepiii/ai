\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2019/09/03 Thesis LaTeX class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\LoadClass{book}

\RequirePackage{suffix}

\WithSuffix\newcommand\tableofcontents*{%
	\if@twocolumn
		\@restonecoltrue\onecolumn
	\else
		\@restonecolfalse
	\fi
	%\chapter*{\contentsname
	%    \@mkboth{%
	%       \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
	\@starttoc{toc}%
	\if@restonecol\twocolumn\fi
}
\WithSuffix\newcommand\listoffigures*{%
	\if@twocolumn
		\@restonecoltrue\onecolumn
	\else
		\@restonecolfalse
	\fi
	%\chapter*{\listfigurename}%
	%  \@mkboth{\MakeUppercase\listfigurename}%
	%          {\MakeUppercase\listfigurename}%
	\@starttoc{lof}%
	\if@restonecol\twocolumn\fi
}
\WithSuffix\newcommand\listoftables*{%
	\if@twocolumn
		\@restonecoltrue\onecolumn
	\else
		\@restonecolfalse
	\fi
	%\chapter*{\listtablename}%
	%  \@mkboth{%
	%      \MakeUppercase\listtablename}%
	%     {\MakeUppercase\listtablename}%
	\@starttoc{lot}%
	\if@restonecol\twocolumn\fi
}