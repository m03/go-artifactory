GOFMT_FILES?=$$(find . -name '*.go' |grep -v vendor)

docs:
	godocdown artifactory/ > README.md

fmt:
	gofmt -w $(GOFMT_FILES)