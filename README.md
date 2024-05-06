# Next-Gen Web Solutions

Welcome to my bachelor's dissertation about web frameworks. 

// TODO: write this readme properly
// TODO: add built file

## For students

If you plan to compose your thesis using LaTeX, feel free to utilize this template, similar to how I did. However, it's important to acknowledge this usage at the outset of your bibliography *(this should happen automatically once you change the `config.tex` file)*. Additionally, be sure to seek approval from your advisor beforehand.

### VSCode Config

If you are using vscode, you can add this to your `settings.json` to have a proper build.

```json
"latex-workshop.latex.autoBuild.run": "onSave",
"workbench.editorAssociations": {
    "*.pdf": "latex-workshop-pdf-hook"
},
"latex-workshop.latex.recipes": [
{
    "name": "pdflatex, makeglossaries, biblatex, pdflatex (2x)",
    "tools": [
    "pdflatex",
    "makeglossaries",
    "biblatex",
    "pdflatex",
    "pdflatex"
    ]
},
],
"latex-workshop.latex.tools": [
{
    "name": "pdflatex",
    "command": "pdflatex",
    "args": [
    "-synctex=1",
    "-interaction=nonstopmode",
    "-file-line-error",
    "%DOC%"
    ]
},
{
    "name": "makeglossaries",
    "command": "makeglossaries",
    "args": [
    "%DOCFILE%"
    ]
},
{
    "name": "biblatex",
    "command": "biber",
    "args": [
    "%DOCFILE%"
    ]
},
],
```