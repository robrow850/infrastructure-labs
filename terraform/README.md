# Terraform exercises

`local/` uses the built-in terraform_data resource to practice plans, state and
cleanup without cloud services. `azure/` is a separate example for a disposable
resource group, requiring Azure authentication and an explicitly chosen subscription.

Local exercise (Terraform 1.4+):

```sh
terraform -chdir=terraform/local init
terraform -chdir=terraform/local fmt -check
terraform -chdir=terraform/local validate
terraform -chdir=terraform/local plan
```

After inspecting the plan, a learner may apply the local exercise and then destroy
its state-managed resource. This changes only Terraform state. Never commit state files.

Azure example (Terraform 1.5+ and AzureRM 4.x): initialize and validate first, then
provide subscription_id to a plan in a test environment. There is no auto-apply
workflow. No Azure plan, apply or destroy has been run for this portfolio.
Do not manage the same group with both Terraform and the Bicep alternative.
