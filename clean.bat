@echo off
REM Remove common LaTeX auxiliary files and build folder
echo Cleaning auxiliary files...
del /s /q *.aux *.log *.out *.toc *.bbl *.blg *.fls *.fdb_latexmk *.synctex.gz *.nav *.snm *.xdv 2>nul
if exist build rmdir /s /q build
echo Clean complete.