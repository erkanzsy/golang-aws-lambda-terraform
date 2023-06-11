build:
	cd app && GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o ../build/bin/app -ldflags '-w' main.go

init:
	cd terraform && terraform init

plan:
	cd terraform && terraform plan

apply:
	cd terraform && terraform apply --auto-approve

destroy:
	cd terraform && terraform destroy --auto-approve