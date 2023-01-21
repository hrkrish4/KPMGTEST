
resource "azurerm_storage_account" "example" {
  name                     = var.storageaccountname
  resource_group_name      = var.resourceGroupName
  location                 = var.location
  account_tier             = var.accounttier
  account_replication_type = var.replicationtype

  tags = {
    environment = var.environment
  }
}