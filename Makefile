PROTOS  := proto/*.proto
OUT_DIR := .

generate:
	protoc --go_out=. --go_opt=paths=source_relative \
       --go-grpc_out=. --go-grpc_opt=paths=source_relative proto/user/*.proto

	protoc --go_out=. --go_opt=paths=source_relative \
	       --go-grpc_out=. --go-grpc_opt=paths=source_relative proto/task/*.proto

clean:
	find . -name "*.pb.go" -delete