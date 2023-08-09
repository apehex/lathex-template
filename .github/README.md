# LatHeX Template

> A sober, hassle-free, LaTeX template for reports and books.

You can preview the theme [here](./build/book.pdf)

## Usage

The template is demonstrated with the example document in the repository:

```bash
# Get the code
git clone https://github.com/apehex/lathex-template.git && cd lathex-template/

# Build
pdflatex --output-dir build/ main/book.tex
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
   |-- sections/              # All the individual sections
   |
   |-- template/              # The actual template definition, independent from the document it presents
   |
   |-- context.tex               # Optional script with the metadata (author, revision, date, etc)
   |
   |-- main.tex               # The script that assembles all the parts into one document
```

## Credits

### Legrand Orange Book

The template started from the [Legrand Orange template][[legrand-orange-book]].

The syntax highlighting for Solidity has been made by [Sergei Tikhomirov][solidity-syntax-highlighting]

### Latexdraw.com

The cover page is built upon the templates from [Latexdraw][latexdraw-cover-pages].

## License

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">
   <img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" />
</a>
<br />
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

---

[latexdraw-cover-pages]: https://latexdraw.com/tikz-cover-pages-gallery/
[legrand-orange-book]: https://www.latextemplates.com/template/legrand-orange-book
[solidity-syntax-highlighting]: https://github.com/s-tikhomirov/solidity-latex-highlighting
