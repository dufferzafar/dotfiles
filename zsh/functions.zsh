pdfpages() {
  for file in "$@"; do
    echo $file
    pdfinfo "$file" | grep -oP '(?<=Pages:          )[ A-Za-z0-9]*'
  done
}

pdf2jpg() {
  for file in "$@"; do
    echo $file "->" "${file%.*}".jpg
    convert -density 200 -trim "$file" -quality 100 "${file%.*}".jpg
  done
}

jpg2pdf() {
  for file in "$@"; do
    echo $file "->" "${file%.*}".pdf
    convert -density 200 -trim "$file" -quality 100 "${file%.*}".pdf
  done
}

pdfex() {
  qpdf --linearize "$1" --pages "$1" "$2-$3" -- "$4"
}

# Make that prefers my custom files!
make() {
  if [[ "$1" != "-f" && -f Makefile.dzmake ]]; then
    /usr/bin/make -f Makefile.dzmake "$@"
  else
    /usr/bin/make "$@"
  fi
}

# View the topmost lines of a csv file
# https://github.com/BurntSushi/xsv/releases
xsv-head() {
    lines=${2:-100}
    xsv cat -n rows -- $1 | head -n $lines | xsv table | less -S
}

loadrvm() {
  [ -s ~/.rvm/scripts/rvm ] && source ~/.rvm/scripts/rvm && rvm use 1.9.3 >/dev/null 2>&1
}

loadgvm() {
  [ -s ~/.gvm/scripts/gvm ] && source ~/.gvm/scripts/gvm && gvm use 1.8.3  >/dev/null 2>&1
}

loadnvm() {
  [ -s ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh && nvm use stable >/dev/null 2>&1
}
