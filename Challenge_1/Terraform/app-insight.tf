
resource "azurerm_application_insights" "example" {
  name                = var.applicationinsight_name
  location            = var.location
  resource_group_name = var.resourceGroupName
  application_type    = var.applicationtype
  tags = {
    environment = var.environment
  }
}

output "instrumentation_key" {
  value = azurerm_application_insights.example.instrumentation_key
  sensitive = true
}

output "app_id" {
  value = azurerm_application_insights.example.app_id
  sensitive = true
}