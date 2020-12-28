.PHONY: format
format:
	clang-format src/*

.PHONY: build
build: clean
	mkdir -p build
	cd build && \
	cmake .. && \
	make

.PHONY: debug
debug: clean
	mkdir -p build
	cd build && \
	cmake -DCMAKE_BUILD_TYPE=debug .. && \
	make

.PHONY: clean
clean:
	rm -rf build