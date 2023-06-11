build:
	cd app && GOOS=linux GOARCH=amd64 go build -v -ldflags '-d -s -w' -a -tags netgo -installsuffix netgo -o ../build/bin/app .

init:
	cd terraform && terraform init

plan:
	cd terraform && terraform apply --auto-approve

apply:
	cd terraform && terraform apply --auto-approve

destroy:
	cd terraform && terraform destroy --auto-approve