---
title: wkhtmltopdf
aliases:
  - wkhtmltopdf
tags:
  - 📝/🌱
  - 📋
status: idea
due: 2021-05-07
---

# wkhtmltopdf

1. Configure [[Ubuntu]]
```bash
sudo vi /etc/apt/sources.list

#add following line at the end of file
# deb http://security.ubuntu.com/ubuntu bionic-security main

sudo apt update && apt-cache policy libssl1.0-dev
sudo apt-get install libssl1.0-dev
```

2. Install with [[conda|mamba]].
```bash
mamba install -c bioconda wkhtmltopdf
```

## [[pandoc]]

3. Test regular [[pandoc]] [[PDF]] export.
```bash
pandoc -s wkhtmltopdf.md -o wkhtmltopdf.pdf
```

4. Use default [[CSS]]
```bash
pandoc -s wkhtmltopdf.md -o wkhtmltopdf_html5.pdf -t html5
```

5. Use [[killercup]] [[CSS]]
```bash
pandoc -s wkhtmltopdf.md -o wkhtmltopdf_killercup.html -t html5 --css pandoc/templates/killercup/killercup.css

pandoc -s wkhtmltopdf.md -o wkhtmltopdf_killercup.pdf -t html5 --css pandoc/templates/killercup/killercup.css
```

6. Use [[GitHub]] [[CSS]]

```bash
pandoc -s wkhtmltopdf.md -o wkhtmltopdf_github.html -t html5 --css pandoc/templates/github/github.css
pandoc -s wkhtmltopdf.md -o wkhtmltopdf_github.pdf -t html5 --css pandoc/templates/github/github.css
```

7 Use [[MVP]] [[CSS]]

```bash
pandoc \
  -s wkhtmltopdf.md \
  -o wkhtmltopdf_mvp.pdf \
  -t html5 \
  --css pandoc/templates/pandoc-mvp-css/css/mvp.css \
  --template pandoc/templates/pandoc-mvp-css/template.html
```

## [[HTML]] -> [[PDF]]

1. Convert [[wiki links]]
```bash
./pandoc/convert_wikilinks.py --input wkhtmltopdf.md --output wkhtmltopdf_convert.md
```

1. Convert to [[HTML]] with desired [[CSS]].

```bash
pandoc \
  -s wkhtmltopdf_convert.md \
  -o wkhtmltopdf_mvp.html \
  -t html5 \
  --css pandoc/templates/pandoc-mvp-css/css/mvp.css \
  --template pandoc/templates/pandoc-mvp-css/template.html
```

2. Convert [[HTML]] to [[PDF]]

```bash
wkhtmltopdf wkhtmltopdf_mvp.html wkhtmltopdf_mvp.pdf

wkhtmltopdf --enable-local-file-access wkhtmltopdf_mvp.html wkhtmltopdf_mvp.pdf
```

Error [[QSslSocket: cannot resolve CRYPTO_num_locks]].

## [[Windows]]

```cmd
"C:\Program Files\wkhtmltopdf\bin\wkhtmltoimage.exe" --enable-local-file-access wkhtmltopdf_mvp.html wkhtmltopdf_mvp.pdf
```