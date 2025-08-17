PROTOS  := proto/*.proto
OUT_DIR := .

generate:
	protoc --go_out=proto/user --go_opt=paths=source_relative \
	       --go-grpc_out=proto/user --go-grpc_opt=paths=source_relative proto/user/*.proto

	protoc --go_out=proto/task --go_opt=paths=source_relative \
	       --go-grpc_out=proto/task --go-grpc_opt=paths=source_relative proto/task/*.proto

clean:
	find . -name "*.pb.go" -delete