if [[ "$1" == "--date" ]]; then
  echo "Dzisiejsza data: $(date)"
fi

if [[ "$1" == "--logs" ]]; then
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

if [[ "$1" == "--help" ]]; then
  echo "Dostępne opcje:"
  echo "--date: Wyświetla dzisiejszą datę"
  echo "--logs [liczba]: Generuje określoną liczbę plików logów, domyślnie 100"
  echo "--help: Wyświetla wszystkie dostępne opcje"
fi
