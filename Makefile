
.PHONY: test verify-dependency-security


test:
	go install gotest.tools/gotestsum@latest
	docker-compose up -d
	gotestsum --format testname ./...
	docker-compose down

verify-dependency-security:
	bash scripts/verify-dependency-security.sh
