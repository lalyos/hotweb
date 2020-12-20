
install:
	go install ./cmd/hotweb

test:
	go test ./...

bin:
	mkdir -p build
	GOOS=linux go build -o build/hotweb-linux ./cmd/hotweb
	GOOS=darwin go build -o build/hotweb-darwin ./cmd/hotweb
	GOOS=windows go build -o build/hotweb-windows.exe ./cmd/hotweb