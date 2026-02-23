# LaTeX дипломын загвар (Windows-д тохиромжтой)

Энэ репо нь бэлэн ашиглах боломжтой LaTeX дипломын тохиргоо, build скриптүүд, class файлтай. Шууд ашиглаарай эсвэл өөрийн төслөө үүн дээр тулгуурлан эхлүүлээрэй.

## Шаардлага

- `latexmk`, `pdflatex`, `biber`/`bibtex` дэмждэг TeX distribution (MiKTeX эсвэл TeX Live).
- PowerShell (Windows-т суурилсан).

## Төслийн бүтэц

- `main.tex` — үндсэн эхлэл; бүлэг/компонентуудыг оруулна.
- `Thesis.cls` — `main.tex` ашигладаг class файл.
- `chapters/` — бүлгийн эх файлууд (ж. `Chapter1_Introduction.tex`).
- `components/` — эхний хэсгүүд, нэмэлт материал (гарчиг, товч, төлөвлөгөө гэх мэт).
- `bib/references.bib` — ишлэлүүдийн сан.
- `pictures/` — зургууд, дүрслэлүүд.
- `build/` — build-ээр үүсэх гаралт, туслах файлууд.
- `build.bat` — Windows build скрипт (`latexmkrc`-ийг ашигладаг `latexmk`).
- `clean.bat` — туслах файлууд болон `build/`-ийг цэвэрлэнэ.
- `latexmkrc` — `latexmk`-ийг `build/` руу бичихээр тохируулна.

## Шуурхай эхлэх

1. Repo-ийн үндсэн хавтсанд PowerShell нээнэ.
2. PDF бүтээх: `./build.bat`
3. Гаралтыг `build/main.pdf` дотор харна.
4. Туслах файлуудыг цэвэрлэх (заавал биш): `./clean.bat`

## Баримтаа засах

- Агуулгаа `chapters/ChapterN_*.tex` болон `components/*.tex` дотор нэмнэ/засна.
- `main.tex`-ийг бүтэц дээр төвлөрүүл: `\include{chapters/...}`, эхлэл/төгсгөлийн хэсэг, библиографийн тохиргоо.
- Зургуудыг `pictures/` дотор хадгалж, `\includegraphics{pictures/your-figure}` гэж дууд.
- Ишлэлүүдээ `bib/references.bib` дотор удирдаж, `main.tex` дотор `\addbibresource{bib/references.bib}` байгаа эсэхийг шалга.

## latexmk-ийг шууд ашиглах

Гар удирдлага хэрэгтэй эсвэл өөр ОС дээр ажиллаж байвал:

- Тасралтгүй build: `latexmk -pdf -pvc main.tex`
- Нэг удаагийн build: `latexmk -pdf main.tex`
- Туслах файлыг цэвэрлэх: `latexmk -c`

## Асуудал шийдэх

- Class/багц дутуу: TeX багцын менежерээрээ (MiKTeX/TeX Live) суулга.
- Библиограф шинэчлэхгүй байвал: `./build.bat` эсвэл `latexmk`-ийг дахин ажиллуулж `biber`/`bibtex`-ийг асаа.
- Гаралт `build/` дотор алга бол: `latexmkrc` үндсэн хавтсанд байгаа эсэхийг шалга.
