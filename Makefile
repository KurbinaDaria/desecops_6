.PHONY: install lint build clean

# Встановлює залежності
install:
	pip install -r requirements.txt

# Перевіряє якість коду
lint:
	flake8 41_scan_stream_default.py

# Збирає "псевдобінар" (zipapp)
# .pyz - це виконуваний zip-архів Python
build:
	python3 -m zipapp 41_scan_stream_default.py -o scan_stream.pyz -p "/usr/bin/env python3"

# Очищує артефакти
clean:
	rm -f scan_stream.pyz
	rm -rf __pycache__