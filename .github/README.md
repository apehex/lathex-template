# LatHeX Template

> A sober, hassle-free, LaTeX template for reports and books.

You can preview the theme [here](https://apehex.github.io/lathex-template)

## Usage

The template is demonstrated with the example document in the repository:

```bash
# Get the code
git clone https://github.com/apehex/lathex-template.git && cd lathex-template/

# Build
pdflatex -output-dir build/ main/book.tex
makeindex build/book.idx -s indexstyle.ist
biber main/book.tex
pdflatex main/book.tex x 2
```

## Template structure

The project is coded using a simple and intuitive structure presented below:

```bash
< PROJECT ROOT >
   |
   |-- appendices/            # The appendices at the end of the document
   |
   |-- bibliography/          # The references
   |
   |-- build/                 # Where the compiled pdf will pop, as well as temp files
   |
   |-- images/                # Assets used in the document
   |
   |-- main/                  # The script that assembles all the parts into one document
   |
   |-- roman/                 # The cover and TOC
   |
   |-- sections/              # All the individual sections
   |
   |-- template/              # The actual template definition, independent from the document it presents
```

## Credits

### Legrand Orange Book

Most of the template is built upon the [Legrand Orange template][[legrand-orange-book]]:

```
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The Legrand Orange Book
% LaTeX Template
% Version 3.1 (February 18, 2022)
%
% This template originates from:
% https://www.LaTeXTemplates.com
%
% Authors:
% Vel (vel@latextemplates.com)
% Mathias Legrand (legrand.mathias@gmail.com)
%
% License:
% CC BY-NC-SA 4.0 (https://creativecommons.org/licenses/by-nc-sa/4.0/)
%
% Compiling this template:
% This template uses biber for its bibliography and makeindex for its index.
% When you first open the template, compile it from the command line with the 
% commands below to make sure your LaTeX distribution is configured correctly:
%
% 1) pdflatex main
% 2) makeindex main.idx -s indexstyle.ist
% 3) biber main
% 4) pdflatex main x 2
%
% After this, when you wish to update the bibliography/index use the appropriate
% command above and make sure to compile with pdflatex several times 
% afterwards to propagate your changes to the document.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
```

### Latexdraw.com

The cover page is built upon the templates from [Latexdraw][latexdraw].

## License

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">
   <img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" />
</a>
<br />
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

---

[latexdraw]: https://latexdraw.com/tikz-cover-pages-gallery/
[legrand-orange-book]: https://www.latextemplates.com/template/legrand-orange-book
