init:
	@echo "terraform initialise..."
	terraform -chdir=tfs init
	@echo "terraform formatting.."
	terraform -chdir=tfs fmt

validate:
	@echo "terraform validate..."
	terraform -chdir=tfs validate

apply:
	@echo "terraform apply..."
	terraform -chdir=tfs apply

show:
	@echo "terraform show..."
	terraform -chdir=tfs show

destroy:
	@echo "terraform destroy..."
	terraform -chdir=tfs destroy	
