# Thesis Template UTAL

This repository contains the boilerplate for writing a *University of Talca*
thesis using Pandoc's markdown. See [Pandoc's
doc](https://pandoc.org/MANUAL.html) for more information on how to use Pandoc.

## Motivation

I don't like writing in LaTeX, I think its syntax is too complicated and
doesn't let me focus on the writing. A good alternative is to use markdown,
which provides a very simple syntax. However, it comes with a trade-off: with
markdown alone, you can't customize the output too much.

One of the many flavors of markdown out there is called Pandoc's markdown. The
approach I chose to write my thesis was to use `pandoc` to convert a markdown
file using a LaTeX template and a LaTeX engine to generate a PDF output. This
way I combine the power of LaTeX with the simplicity of markdown.

One of the great advantages of this approach is that I can write LaTeX and even
some HTML inside of the main markdown file. This way I don't depend only on
markdown in case I need to do some complex stuff. The rest of the LaTeX code is
hidden in the template file, with which I don't need to interact that often.

## Requirements

- `pandoc`
- `texlive-full`
- `pandoc-eqnos`
- `pandoc-tablenos`
- `pandoc-secnos`
- `pandoc-fignos`

## Notes

1. Depending on your use case, you might not need to install all the packages
   listed above. See [Pandoc-xnos](https://github.com/tomduck/pandoc-xnos) to
   learn about the filters you can use. Then, adjust the `makefile`
   accordingly.

1. I built a [docker
   image](https://hub.docker.com/r/josevillar/pandoc-markdown) that you can use
   instead of installing all the dependencies directly on your system.

1. `template.tex` was built with the computer science major in mind. Feel free
   to inspect it and make any modifications to it.

## Instructions

- Clone this repository.
- Run `make` in the root of the project to create the PDF file.
- Edit the `metadata.yaml` file to customize the output.
- Edit the `dedication.tex`, `abstract.tex` and `acknowledgements.tex` files.
- Write the core of your thesis inside the `thesis.md` file.

## General recommendations

- The more filters you use, the slower the compilation becomes. Adjust the
  `makefile` to use only the filters you really need.
- Use a text editor with appropriate markdown syntax highlighting so that you
  don't depend too much on looking at the final PDF output. This way you don't
  need to compile that often.
- Before you hand in your thesis, I suggest you to use
  `find_duplicate_words.sh`, a script I made to easily spot duplicate
  consecutive words you might have written by mistake. You can find it
  [here](https://github.com/jose-villar/scripts).

## Recommendations for Vim users

- You can compile the files from within Vim in an asynchronous way. See
  [vim-dispatch](https://github.com/tpope/vim-dispatch) to learn more.
- To create markdown tables without pain, take a look at
  [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode).

## Self-Promotion

If you like this template, please consider a donation on
[PayPal](https://www.paypal.me/jvillar96).
