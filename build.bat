@echo off
REM Simple Windows build script: prefer latexmk, fallback to pdflatex/bibtex
setlocal
if not exist build (mkdir build)
where latexmk >nul 2>&1
if %ERRORLEVEL%==0 (
  echo Using latexmk to build...
  latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode -synctex=1" -outdir=build main.tex
) else (
  echo latexmk not found — using pdflatex/bibtex fallback
  pdflatex -interaction=nonstopmode -synctex=1 -output-directory=build main.tex
  if exist build\main.aux (
    pushd build
    bibtex main || echo bibtex failed, continuing
    popd
  )
  pdflatex -interaction=nonstopmode -synctex=1 -output-directory=build main.tex
  pdflatex -interaction=nonstopmode -synctex=1 -output-directory=build main.tex
)
endlocal
echo Build finished. See build\ for outputs.