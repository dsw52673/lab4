if [[ "$1" == "--date" || "$1" == "-d" ]]; then
  echo "Dzisiejsza data: $(date)"
fi

if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  if [[ -n "$2" ]]; then
    for i in $(seq 1 $2); do
      echo "Plik: log$i.txt, Skrypt: $0, Data: $(date)" > "log$i.txt"
    done
  else
    for i in {1..100}; do
      echo "Plik: log$i.txt, Skrypt: $0, Data: $(date)" > "log$i.txt"
    done
  fi
fi

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "Dostępne opcje:"
  echo "--date, -d: Wyświetla dzisiejszą datę"
  echo "--logs, -l [liczba]: Generuje określoną liczbę plików logów, domyślnie 100"
  echo "--init: Klonuje repozytorium i dodaje bieżący katalog do PATH"
  echo "--error, -e [liczba]: Generuje określoną liczbę plików błędów, domyślnie 100"
  echo "--help, -h: Wyświetla wszystkie dostępne opcje"
fi


if [[ "$1" == "--init" ]]; then
  git clone https://github.com/dsw52673/lab4.git .
  export PATH=$PATH:$(pwd)
fi

if [[ "$1" == "--error" || "$1" == "-e" ]]; then
  num_errors=${2:-100}
  mkdir -p errorx
  for i in $(seq 1 $num_errors); do
    echo "Plik: error$i.txt, Skrypt: $0, Data: $(date)" > "errorx/error$i.txt"
  done
fi
