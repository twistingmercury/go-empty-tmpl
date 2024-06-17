default: help

.PHONY: help
help:
	@echo "\devapp makefile usage: make [target]"
	@echo "  Targets:"
	@echo "  » clean           Remove build artifacts and clean up the project"
	@echo "  » bin             Build the binary and output to _bin/ directory"
	@echo "  » test            Run all unit tests and generate coverage report"
	@echo "  » run             Run the main.go file to start the server"

.PHONY: clean
clean:
	@rm -rf $(BIN_DIR) > /dev/null 2>&1

.PHONY: bin
bin: clean
	go build -ldflags  "-s -w" -o ./bin/token_go_bin main.go

.PHONY: test
test:
	go test -v ./... -coverprofile=coverage.out
	go tool cover -html=coverage.out

.PHONY: run
run: bin
	./bin/token_go_bin
