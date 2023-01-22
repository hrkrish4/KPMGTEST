
resource "azurerm_virtual_network" "example" {
  name                = var.virtualnetworkname
  location            = var.location
  resource_group_name = var.resourceGroupName
  address_space       = var.addressspace
  
  tags = {
    environment = var.environment
  }
  }