# Diploma LaTeX Template and Workflow

This repo contains your current LaTeX work. I added a small, opinionated template and simple build scripts to help you work cleanly.

What I added

- `build.bat`: Windows build script using `latexmk` (fallback to `pdflatex`/`bibtex`).
- `clean.bat`: removes common auxiliary files and `build/`.
- `.gitignore`: ignores LaTeX artifacts and `build/`.
- `latexmkrc`: sets `build/` as output directory for `latexmk`.
- `template/`: a minimal, well-organized example project structure you can copy from.

Recommended project structure

- `main.tex` — top-level document (keep this in repo root). Use `\include{chapters/01_intro}` for chapters.
- `Thesis.cls` — your class file (already present). Keep near `main.tex`.
- `chapters/` — split content into `01_introduction.tex`, `02_methods.tex`, etc.
- `bib/` — place `.bib` files here (I added `template/bib/references.bib`).
- `images/` — place figures here.
- `build/` — output directory (created by `latexmk` or `build.bat`).

Quick start (Windows)

1. Open a PowerShell in the repo root.
2. Build with:

```powershell
.\build.bat
```

3. Clean auxiliary files:

```powershell
.\clean.bat
```

If you use an editor like TeXstudio, VS Code with LaTeX Workshop, or TeXworks, point its build command to `latexmk` (recommended) or the `build.bat`.

How to use the template

1. Inspect `template/main.tex` and `template/chapters/01_introduction.tex`.
2. Either copy the files into the project root or adapt your existing `main.tex` to `\include{chapters/...}`.
3. Put bibliography entries into `bib/references.bib` and ensure `\addbibresource{bib/references.bib}` is used (or adapt to your current `main.tex`).

Notes for a beginner

- Keep the main structure small: the root `main.tex` should mostly `\include{}` chapter files.
- Commit source files (`.tex`, `.bib`, images) but ignore build artifacts (handled by `.gitignore`).
- Use `latexmk` where possible: it runs pdflatex/biber/bibtex as needed.
