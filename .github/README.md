# LatHeX Template

> A sober, hassle-free, LaTeX template for reports and books.

You can preview the template on a [real world report][forta-evasion-report].

## Preview

### Book

| Dark Theme                                                   | Light Theme                                                     | Forta Theme                                                     |
| :----------------------------------------------------------: | :-------------------------------------------------------------: | :-------------------------------------------------------------: |
| [![Dark title page][demo-book-dark-title]][demo-book-dark]   | [![Light title page][demo-book-light-title]][demo-book-light]   | [![Forta title page][demo-book-forta-title]][demo-book-forta]   |
| [![Dark page][demo-book-dark-page]][demo-book-dark]          | [![Light page][demo-book-light-page]][demo-book-light]          | [![Forta page][demo-book-forta-page]][demo-book-forta]          |

### Resume

| Dark Theme                                                      | Light Theme                                                        |
| :-------------------------------------------------------------: | :----------------------------------------------------------------: |
| [![Dark title page][demo-resume-dark-image]][demo-resume-dark]  | [![Light title page][demo-resume-light-image]][demo-resume-light]  |

### Letter

| Dark Theme                                                      | Light Theme                                                        |
| :-------------------------------------------------------------: | :----------------------------------------------------------------: |
| [![Dark title page][demo-letter-dark-image]][demo-letter-dark]  | [![Light title page][demo-letter-light-image]][demo-letter-light]  |

## Usage

The template is demonstrated with the example document in the repository:

```bash
# Get the code
git clone https://github.com/apehex/lathex-template.git && cd lathex-template/

# Build
lualatex --output-dir build/ demo/book/dark.tex
makeindex build/book.idx -s indexstyle.ist
biber demo/book/dark.tex
lualatex --output-dir build/ demo/book/dark.tex
```

The recommended compilers are `lualatex` and `xetex`, though `pdflatex` will mostly work too.
The only difference will be in the fonts for the `Forta` theme: it imports `ttf` files, which cannot be handled by `pdflatex`.

## Template structure

The project has the following tree:

```bash
< PROJECT ROOT >
   |
   |-- bibliography/          # The references
   |
   |-- build/                 # Where the compiled pdf will pop, as well as temp files
   |
   |-- images/                # Assets used in the document
   |
   |-- sections/              # All the individual sections
      |
      |-- part1/              # The sections of the first part
      |
      |-- appendices/         # The appendices at the end of the document
   |
   |-- template/              # The actual template definition, independent from the document it presents
   |
   |-- context.tex            # Optional script with the metadata (author, revision, date, etc)
   |
   |-- main.tex               # The script that assembles all the parts into one document
```

## Credits

The syntax highlighting for Solidity has been made by [Sergei Tikhomirov][solidity-syntax-highlighting].

The rest of the template is original work entirely.
Still it has roots in the popular LaTeX scripts mentioned below.

### Legrand Orange Book

The template started from the [Legrand Orange template][legrand-orange-book].

### Latexdraw.com

The cover page started from the templates in [Latexdraw][latexdraw-cover-pages].

## License

This work is licensed under the GNU [aGPL v3](LICENSE).

---

[demo-book-dark]: ../build/book/dark.pdf
[demo-book-forta]: ../build/book/forta.pdf
[demo-book-light]: ../build/book/light.pdf
[demo-book-dark-page]: images/book/dark-page.png
[demo-book-forta-page]: images/book/forta-page.png
[demo-book-light-page]: images/book/light-page.png
[demo-book-dark-title]: images/book/dark-title.png
[demo-book-forta-title]: images/book/forta-title.png
[demo-book-light-title]: images/book/light-title.png
[demo-letter-dark]: ../build/letter/dark.pdf
[demo-letter-light]: ../build/letter/light.pdf
[demo-letter-dark-image]: images/letter/dark.png
[demo-letter-light-image]: images/letter/light.png
[demo-resume-dark]: ../build/resume/dark.pdf
[demo-resume-light]: ../build/resume/light.pdf
[demo-resume-dark-image]: images/resume/dark.png
[demo-resume-light-image]: images/resume/light.png
[forta-evasion-report]: https://github.com/apehex/web3-evasion-techniques/blob/main/report/forta.pdf
[latexdraw-cover-pages]: https://latexdraw.com/tikz-cover-pages-gallery/
[legrand-orange-book]: https://www.latextemplates.com/template/legrand-orange-book
[solidity-syntax-highlighting]: https://github.com/s-tikhomirov/solidity-latex-highlighting
