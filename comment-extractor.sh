#!/bin/bash

# Определяем файл, из которого будем извлекать комментарии
BASHRC_FILE="$HOME/.zshrc"
OUTPUT_FILE="bashrc_comments.txt"

# Проверяем, существует ли файл .bashrc
if [ ! -f "$BASHRC_FILE" ]; then
    echo "Файл $BASHRC_FILE не найден."
    exit 1
fi

# Извлекаем строки, начинающиеся с # (игнорируя shebang #!)
grep -E "^#[^!]" "$BASHRC_FILE" > "$OUTPUT_FILE"

# Выводим сообщение о завершении
echo "Комментарии из $BASHRC_FILE сохранены в $OUTPUT_FILE"
