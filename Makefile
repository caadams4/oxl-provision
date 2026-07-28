STACK ?= stg

.PHONY: fmt init plan

fmt:
	terraform fmt -recursive

init:
	cd stacks/$(STACK) && terraform init

plan:
	cd stacks/$(STACK) && terraform plan -out=plan.out
