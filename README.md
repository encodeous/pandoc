Here is what I personally use to write assignments, using the power of [Pandoc](https://pandoc.org/)!

## Getting Started

My main editor is just VSCode, with the following extensions:
- https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.triggertaskonsave
- https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop
- https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one

Make sure `pandoc` is also installed, along with pdflatex (or some other latex) if you want more advanced features to work.

(This only works on a unix machine, so you Windows users may want to use WSL)

If you want to try it out, you can simply clone this gist, and open it up in VSCode.

## Editing

Simply edit any `<file>.md` file, and hit save.
- This will trigger the script in `scripts/mdpdf.sh` to run, and convert it into `<file>.pdf`.
- Typically this is very fast, taking about 1 second, and the LaTeX workshop extension will auto refresh the PDF!

If you want to learn more about what is possible, you can read the [Pandoc User's Guide](https://pandoc.org/MANUAL.html)