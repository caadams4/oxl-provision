STACK ?= stg

.PHONY: fmt init plan validate apply

fmt:
	terraform fmt -recursive

init:
	cd stacks/$(STACK) && terraform init

validate: init
	cd stacks/$(STACK) && terraform validate

plan:
	cd stacks/$(STACK) && terraform plan -out=plan.out

# no apply from laptops for prod, use ci. (stg is fine)
apply:
	@test "$(STACK)" != "prod" || (echo "no. use ci" && exit 1)
	cd stacks/$(STACK) && terraform apply plan.out

check:
	./scripts/fmt-check.sh
