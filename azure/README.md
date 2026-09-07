# Azure resource-group lab

`main.bicep` is a subscription-scoped alternative to terraform/azure. It defines one
disposable resource group with lab tags and no workloads. No deployment has been run.

Prerequisites: Azure CLI with Bicep, an authorized test subscription, and appropriate
resource-group permissions. Authenticate separately. First compile locally:

```sh
az bicep build --file azure/main.bicep
```

For an authenticated PowerShell preflight with Az.Accounts:

```powershell
./azure/Test-AzureContext.ps1 -ExpectedSubscriptionId '<your-test-subscription-id>'
```

Replace the placeholder only in your local command; never commit credentials.
Before deployment, inspect an Azure what-if plan, confirm the subscription and group
name, and prepare cleanup. Record real results in LAB-TEMPLATE.md after execution.
The portfolio contains no scheduled deployment or claim of deployed resources.
