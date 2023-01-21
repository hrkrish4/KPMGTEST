
resource "azurerm_app_service_plan" "plan" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resourceGroupName
  kind                = var.Kind

  sku {
    tier = var.tier
    size = var.size
  }
  
}
