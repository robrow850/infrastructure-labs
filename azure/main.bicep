targetScope = 'subscription'

@description('Name of a disposable test resource group.')
param resourceGroupName string = 'rg-portfolio-disposable-lab'
param location string = 'eastus'

// Alternative to the Terraform Azure exercise; choose one ownership system.
resource lab 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: resourceGroupName
  location: location
  tags: {
    purpose: 'portfolio-lab'
    environment: 'disposable'
  }
}
output resourceGroupId string = lab.id
