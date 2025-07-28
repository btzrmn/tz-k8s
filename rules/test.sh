#!/bin/bash

# Эх файл
SOURCE_FILE="service-rule-001.yaml"

# Орлуулах ID-ууд
IDS=(002 003 004 006 007 008 010 011 016 017 018 020 021 024 025 026 027 028 030 044 045 048 054 063 074 075 076 078 083 084 090 091)

# Хэрвээ эх файл байхгүй бол гарах
if [ ! -f "$SOURCE_FILE" ]; then
  echo "Файл олдсонгүй: $SOURCE_FILE"
  exit 1
fi

# Давталтаар шинэ файлууд үүсгэх
for id in "${IDS[@]}"; do
  NEW_FILE="service-rule-$id.yaml"
  sed "s/001/rule-$id/g" "$SOURCE_FILE" > "$NEW_FILE"
  echo "Үүсгэлээ: $NEW_FILE"
done
