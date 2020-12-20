NAME=hotweb
OWNER=progrium

install:
	go install ./cmd/hotweb

test:
	go test ./...

build:
	go build ./cmd/hotweb

dist:
	mkdir -p build
	GOOS=linux go build -o build/$(NAME)-linux ./cmd/hotweb
	GOOS=darwin go build -o build/$(NAME)-darwin ./cmd/hotweb
	GOOS=windows go build -o build/$(NAME)-windows.exe ./cmd/hotweb

update-ver-ref:
	sed -i "s/v[0-9]\.[0-9]\.[0-9]\+/v$(LATEST)/" README.md

.PHONY: build