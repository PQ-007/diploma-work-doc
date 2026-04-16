@echo off
REM Simple Windows build script: prefer latexmk, fallback to pdflatex/bibtex
setlocal
if not exist build (mkdir build)
where latexmk >nul 2>&1
if %ERRORLEVEL%==0 (
  echo Using latexmk to build...
  latexmk -xelatex -outdir=build main.tex
) else (
  echo latexmk not found — using xelatex/bibtex fallback
  xelatex -interaction=nonstopmode -synctex=1 -output-directory=build main.tex
  if exist build\main.aux (
    pushd build
    bibtex main || echo bibtex failed, continuing
    popd
  )
  xelatex -interaction=nonstopmode -synctex=1 -output-directory=build main.tex
  xelatex -interaction=nonstopmode -synctex=1 -output-directory=build main.tex
)
endlocal
echo Build finished. See build\ for outputs.