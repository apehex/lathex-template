%----------------------------------------------------------------------------------------
%   CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[Resume class v0.1]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}} % Pass through any options to the base class
\ProcessOptions\relax % Process given options

\LoadClass{extarticle} % Load the base class
\pagestyle{empty} % No headers or footers

%----------------------------------------------------------------------------------------
%   LOAD PACKAGES
%----------------------------------------------------------------------------------------

\usepackage{moresize} % Provides more font size commands (\HUGE and \ssmall)

\usepackage[T1]{fontenc} % Output font encoding for international characters
\usepackage[utf8]{inputenc} % Required for inputting international characters
\usepackage[final]{microtype} % better kerning & protrusion
\usepackage[default]{raleway}
%\usepackage[defaultsans]{droidsans}
%\usepackage{cmbright}

\usepackage{geometry} % Required for adjusting page dimensions and margins
\usepackage{xcolor}
\usepackage{eso-pic} % page background overlays
\usepackage{pagecolor} % dark theme

\usepackage[hidelinks]{hyperref} % Required for links but hide the default boxes around links
\usepackage{enumitem}
\usepackage{fontawesome} % Required for FontAwesome icons
\usepackage{graphicx} % for rotatebox
\usepackage{tikz} % Required for creating the plots

%----------------------------------------------------------------------------------------
%   PAGE LAYOUT
%----------------------------------------------------------------------------------------

\setlength{\parindent}{0pt} % Suppress paragraph indentation
\setlength{\parskip}{0pt}

\geometry{
    paper=a4paper, % Paper size, change to letterpaper for US letter size
    top=1.4cm, % Top margin
    bottom=1.4cm, % Bottom margin
    left=1.4cm, % Left margin
    right=1.4cm, % Right margin
    headheight=0.75cm, % Header height
    footskip=1cm, % Space from the bottom margin to the baseline of the footer
    headsep=0.5cm, % Space from the top margin to the baseline of the header
    %showframe, % Uncomment to show how the type block is set on the page
}

%----------------------------------------------------------------------------------------
%   FONTS
%----------------------------------------------------------------------------------------

\renewcommand*\familydefault{\sfdefault} % Force the sans-serif version of any font used

%----------------------------------------------------------------------------------------

% Command to output an icon in a black square box with text to the right
\newcommand{\icon}[3]{% The first parameter is the FontAwesome icon name, the second is the box size and the third is the text
    \vcenteredhbox{\colorbox{white}{\makebox(#2, #2){\textcolor{black}{\Large\csname fa#1\endcsname}}}}% Icon and box
    \hspace{0.1cm}% Whitespace
    \vcenteredhbox{\textcolor{black}{#3}}% Text
}

%----------------------------------------------------------------------------------------
%   COLORS DEFAULTS
%----------------------------------------------------------------------------------------

\definecolor{accent}{HTML}{00C2FF}
\definecolor{ink}{HTML}{111111}
\definecolor{back}{HTML}{FFFFFF}
\definecolor{muted}{HTML}{555555}
\definecolor{rule}{HTML}{DDDDDD}
\definecolor{linkgray}{HTML}{2A2A2A}

%----------------------------------------------------------------------------------------
%   LIGHT THEME
%----------------------------------------------------------------------------------------

\newcommand{\togglethemelight}{
%----------------------------------------------------------------------------------------
\definecolor{ink}{HTML}{111111}
\definecolor{back}{HTML}{FFFFFF}
\definecolor{muted}{HTML}{555555}
\definecolor{rule}{HTML}{DDDDDD}
\definecolor{linkgray}{HTML}{2A2A2A}
%----------------------------------------------------------------------------------------
\color{ink}
\pagecolor{back}
}

%----------------------------------------------------------------------------------------
%   DARK THEME
%----------------------------------------------------------------------------------------

\newcommand{\togglethemedark}{
%----------------------------------------------------------------------------------------
\definecolor{ink}{HTML}{F4F6F8}
\definecolor{back}{HTML}{0F1011}
\definecolor{muted}{HTML}{B7BDC3}
\definecolor{rule}{HTML}{2A2D30}
\definecolor{linkgray}{HTML}{B7BDC3}
%----------------------------------------------------------------------------------------
\color{ink}
\pagecolor{back}
}

%----------------------------------------------------------------------------------------
%   VERTICAL STRIPE
%----------------------------------------------------------------------------------------

% Enable with \resumestripe (default is off)
\newcommand{\resumestripe}{%
    \AddToShipoutPictureBG*{%
        \begin{tikzpicture}[remember picture,overlay]
            % Thin stripe inside the page edge (doesn't affect text block)
            \fill[accent] (current page.north west) rectangle ++(2.2mm,-\paperheight);
        \end{tikzpicture}%
    }%
}

%----------------------------------------------------------------------------------------
%   LINKS
%----------------------------------------------------------------------------------------

%----------------------------------------------------------------------------------------
%   GRAPHICS DEFINITIONS
%---------------------------------------------------------------------------------------- 

\usetikzlibrary{shapes, backgrounds}
\tikzset{x=1cm, y=1cm} % Default tikz units

% Command to vertically center adjacent content
\newcommand{\vcenteredhbox}[1]{% The only parameter is for the content to center
    \begingroup%
        \setbox0=\hbox{#1}\parbox{\wd0}{\box0}%
    \endgroup%
}

%----------------------------------------------------------------------------------------
%   SECTIONS
%----------------------------------------------------------------------------------------

\newlength{\sectionmargin}
\newlength{\sectionpadding}
\newlength{\sectiontitlewidth}
\newlength{\sectiontitleheight}
\newlength{\sectionbodyheight}

\setlength{\sectionmargin}{0.9\baselineskip}
\setlength{\sectionpadding}{0.9em}
\setlength{\sectiontitlewidth}{0.8em}

%----------------------------------------------------------------------------------------
%   HORIZONTAL SECTION
%----------------------------------------------------------------------------------------

\newenvironment{horizontalsection}[1]{%
    \par\vspace{\sectionmargin}%
    {\small\textcolor{accent}{\MakeUppercase{\textbf{#1}}}}%
    \hspace{6pt}%
    {\color{rule}\leaders\hrule height 1pt\hfill\kern0pt}%
    \par\vspace{\sectionpadding}%
}{}

%------------------------------------------------
% VERTICAL SECTION
%------------------------------------------------

\newsavebox{\sectionbodybox}
\newsavebox{\sectiontitlebox}

\newenvironment{verticalsection}[1]{%
    \par\vspace{\sectionmargin}%
    % Store the whole box with the vertical title
    \sbox{\sectiontitlebox}{\rotatebox{90}{\small\textcolor{accent}{\MakeUppercase{\textbf{#1}}}}}%
    % Capture body into a box
    \begin{lrbox}{\sectionbodybox}%
        \begin{minipage}[t]{\dimexpr\linewidth-\sectiontitlewidth-\sectionpadding\relax}%
}{%
        \end{minipage}%
    \end{lrbox}%
    % Measure body height
    \setlength{\sectionbodyheight}{\dimexpr\ht\sectionbodybox+\dp\sectionbodybox\relax}%
    \setlength{\sectiontitleheight}{\dimexpr\ht\sectiontitlebox+\dp\sectiontitlebox\relax}%
    % Typeset header (left) + body (right)
    \noindent
    \begin{minipage}[t][\sectionbodyheight][t]{\sectiontitlewidth}%
        \raggedleft%
        % Vertical rule runs from top down to just above title
        \vspace{-0.7em}%
        \hfill{\color{rule}\rule{1pt}{\dimexpr\sectionbodyheight-\sectiontitleheight-1.6em\relax}}%
        \par\vspace{0.4em}%
        % Title at bottom, vertical, in accent
        \hfill\usebox{\sectiontitlebox}%
    \end{minipage}%
    \hspace{\sectionpadding}%
    \begin{minipage}[t]{\dimexpr\linewidth-\sectiontitlewidth-\sectionpadding\relax}%
        \usebox{\sectionbodybox}%
    \end{minipage}%
    \par
}

%------------------------------------------------
% ENTRIES
%------------------------------------------------

\newlength{\entrysep}
\setlength{\entrysep}{0.60\baselineskip}

% The entry header line
\newcommand{\entryheader}[2]{%
    {\textbf{\textcolor{ink}{#1}}\hfill{\footnotesize\textcolor{muted}{#2}}}\par
}

% Line-stack body
\newcommand{\entrylinesep}{0.22\baselineskip}
\newcommand{\entryline}[1]{%
    {\footnotesize\textcolor{ink}{#1}}\par\vspace{\entrylinesep}%
}

\newcommand{\entrybody}[1]{%
    {\setlength{\parskip}{0pt}\setlength{\parindent}{0pt}#1}%
}

% Main Entry macro
\newcommand{\sectionentry}[3]{%
    \par\noindent
    \entryheader{#1}{#2}%
    \entrybody{#3}%
    \vspace{\entrysep}%
}

% Compact label + text line (sidebar skills etc.)
\newcommand{\skillentry}[2]{%
    \par\noindent
    {\footnotesize\textbf{\textcolor{ink}{#1}}\hspace{0.75em}\textcolor{ink}{#2}}\par
    \vspace{0.30\baselineskip}%
}

%----------------------------------------------------------------------------------------
%   ENUM LIST
%----------------------------------------------------------------------------------------

% ---- Tight layout
\setlist[itemize]{
    itemsep=0.15\baselineskip,
    topsep=0.2\baselineskip,
    parsep=0pt,
    partopsep=0pt,
    leftmargin=1.4em
}
\setlist[itemize,2]{
    itemsep=0.08\baselineskip,
    topsep=0.1\baselineskip,
    parsep=0pt,
    partopsep=0pt,
    leftmargin=1.4em
}

% ---- Bullet styles (small accent dot)
\renewcommand\labelitemi{\textcolor{accent}{\raisebox{0.2ex}{\scriptsize\textbullet}}}
\renewcommand\labelitemii{\textcolor{accent}{\raisebox{0.2ex}{\scriptsize\textbullet}}}
