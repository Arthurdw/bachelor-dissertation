# Next-Gen Web Solutions

Welcome to my bachelor's dissertation on web frameworks. This document explores various web solutions, their advantages, and disadvantages.

## TL;DR Overview

For a concise summary of each web solution, including their pros and cons, refer to the [TLDR.md](TLDR.md) document.

## Dependencies

Ensure the following are installed:

- LaTeX distribution (e.g., MiKTeX)
- Biber (for bibliography management)
- Inkscape (for handling SVG images)

## Project Overview

Here's a brief overview of the project structure:

- `chapters/`: Contains chapters such as `introduction.tex`, `conclusion.tex`, and `experiment.tex`.
- `code/`: Holds code samples relevant to the dissertation.
- `images/`: Stores images used in the document, including those in the `experiment` and `appendix` subdirectories.
- `config.tex`: Configuration file for LaTeX settings.

## Building the Document

To build the document, you can use the following commands:

- **Make**: Use the `make` command to build the document.
- **Clean**: Use the `make clean` command to clean up the project.
- **Clean (Windows)**: Use the `make clean-win` command in PowerShell to clean up the project on Windows.

Alternatively, you can compile the LaTeX document using command line tools:

1. **Run pdflatex**:
    ```sh
    pdflatex -synctex=1 -interaction=nonstopmode -enable-write18 -file-line-error main.tex
    ```

2. **Run makeglossaries**:
    ```sh
    makeglossaries main
    ```

3. **Run biber**:
    ```sh
    biber main
    ```

4. **Run pdflatex again (twice)**:
    ```sh
    pdflatex -synctex=1 -interaction=nonstopmode -enable-write18 -file-line-error main.tex
    pdflatex -synctex=1 -interaction=nonstopmode -enable-write18 -file-line-error main.tex
    ```

## Usage for Students

If you intend to compose your thesis using LaTeX, feel free to utilize this template. Ensure you acknowledge this usage at the outset of your bibliography (this should happen automatically once you change the `config.tex` file). Additionally, be sure to seek approval from your advisor beforehand.

## Contributing

Contributions are welcome! If you have suggestions or improvements, please submit a pull request or open an issue.

## License

This project is licensed under the [Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/) License. See the [LICENSE](LICENSE) file for details.


---

Feel free to reach out if you have any questions or need further assistance. Happy writing!
