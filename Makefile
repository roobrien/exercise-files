KEYWORD=FIXED

run: build
	podman run --rm keyword-release-action $(KEYWORD)

build:
	podman build --tag keyword-release-action .

test:
	./entrypoint.sh $(KEYWORD)
