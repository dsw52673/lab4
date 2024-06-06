if [[ "$1" == "--date" ]]; then
  echo "Dzisiejsza data: $(date)"
fi

if [[ "$1" == "--logs" ]]; then
  for i in {1..10}; do
    echo "Plik: log$i.txt, Skrypt: $0, Data: $(date)" > "log$i.txt"
  done
fi