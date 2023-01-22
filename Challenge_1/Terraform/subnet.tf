
resource "azurerm_subnet" "example" {
  name                 = var.subnetname
  resource_group_name  = var.resourceGroupName
  virtual_network_name = var.virtualnetworkname
  address_prefixes     = var.subnet_Addressspace

  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
    }
  }
  tags = {
    environment = var.environment
  }
}