$out_dir = 'build';
# Do not change current directory when running commands (avoid missing main.tex on reruns)
$cd = 0;
# Use XeLaTeX as the primary engine (fontspec in your document needs XeLaTeX or LuaLaTeX)
$xelatex = 'xelatex -interaction=nonstopmode -synctex=1 %O %S';
# Keep a pdflatex fallback defined
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
$pdf_mode = 1;
# Use biber for biblatex
$biber = 'biber %O %S';