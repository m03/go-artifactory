GOFMT_FILES?=$$(find . -name '*.go' |grep -v vendor)

docs:
	godoc2md github.com/webdevwilson/go-artifactory/artifactory > README.md

fmt:
	gofmt -w $(GOFMT_FILES)