.PHONY: all clean watch

# 主文件名稱（不含副檔名）
MAIN = src/main

# 使用 xelatex 和 bibtex 進行編譯
all:
	mkdir -p build
	cp references/references.bib build/
	cp -r figures build/
	xelatex -output-directory=build $(MAIN)
	cd build && bibtex main
	xelatex -output-directory=build $(MAIN)
	xelatex -output-directory=build $(MAIN)
	cp build/main.pdf .

# 清理編譯產生的檔案
clean:
	rm -rf build/*

# 持續監視檔案變化並自動編譯
watch:
	while true; do \
		mkdir -p build; \
		cp references/references.bib build/; \
		cp -r figures build/; \
		xelatex -output-directory=build $(MAIN); \
		cd build && bibtex main; \
		cd .. && xelatex -output-directory=build $(MAIN); \
		xelatex -output-directory=build $(MAIN); \
		sleep 2; \
	done 