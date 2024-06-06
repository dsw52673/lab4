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
