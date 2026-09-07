# Infrastructure Labs

Robert Rowan's infrastructure practice projects. Runnable configuration examples are
provided, but no Azure resources have been deployed for this portfolio.

| Project | Files | Validation scope |
| --- | --- | --- |
| Local Terraform | [terraform/local](terraform/local/) | Built-in terraform_data example; no cloud resources |
| Azure Terraform | [terraform/azure](terraform/azure/) | Disposable resource-group configuration; no tenant execution |
| Azure Bicep | [azure](azure/) | Alternative subscription-scoped resource group; requires Azure tooling |
| GitHub Actions | [.github/workflows/validate.yml](.github/workflows/validate.yml) | Terraform fmt/init/validate; no credentials and no apply |
| Lab evidence | [LAB-TEMPLATE.md](LAB-TEMPLATE.md) | Record actual steps, observations and cleanup |

Start with the [Terraform instructions](terraform/README.md) and [Azure instructions](azure/README.md).
The development Mac has neither Terraform nor Azure CLI installed; local compile/validate
was not performed. GitHub workflow results are separate evidence, not proof of deployment.
The Azure context check requires Az.Accounts and an explicitly chosen subscription.

Never commit state, credentials or private configuration. Use a disposable test environment
and choose one owner (Terraform or Bicep) for a given resource. No auto-deploy is configured.

Sources: [Terraform AzureRM resource group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group),
[Microsoft Bicep resource-group schema](https://learn.microsoft.com/en-us/azure/templates/microsoft.resources/2024-03-01/resourcegroups),
[Terraform setup action](https://github.com/hashicorp/setup-terraform).

Related: [Entra toolkit](https://github.com/robrow850/entra-automation-toolkit),
[PowerShell labs](https://github.com/robrow850/powershell-automation),
[Python labs](https://github.com/robrow850/python-automation).
