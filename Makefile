deps:
	go get -d -t ./...

test: deps
	go test -v

build: deps
	goxz -os=darwin,linux,windows -arch=amd64 -d=dist -z

lint:
	golint ./...
