
data "azurerm_app_service_plan" "example" {
  name                = var.AppserviceplanName
  resource_group_name = var.resourceGroupName
}

resource "azurerm_app_service" "app_service" {
  for_each = toset(var.webappname) 
  name=each.value
  location            = var.location
  resource_group_name = var.resourceGroupName
  app_service_plan_id = data.azurerm_app_service_plan.example.id
 
 tags = {
    environment = var.environment
  }
}
