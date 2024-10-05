#!/bin/bash

modified_files=$(git diff --cached --name-only --diff-filter=ACM | grep '\.txt$')

for current_file in $modified_files; do
  if ! [[ "$current_file" =~ \.txt$ ]]; then
    echo "Ошибка: файл $current_file не соответствует формату .txt."
    exit 1
  fi
done

echo "Все файлы соответствуют формату"
exit 0
