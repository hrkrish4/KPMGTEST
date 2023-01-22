
resource "azurerm_network_security_group" "example" {
  name                = var.Nsg_name
  location            = var.location
  resource_group_name = var.resourceGroupName

  security_rule {
    name                       = var.secuirtyrule_name
    priority                   = var.secuirtyrule_priority
    direction                  = var.secuirtyrule_direction
    access                     = var.secuirtyrule_access
    protocol                   = var.secuirtyrule_protocol
    source_port_range          = var.secuirtyrule_sourceportrange
    destination_port_range     = var.secuirtyrule_destinationeportrange
    source_address_prefix      = var.secuirtyrule_sourceaddressprefix
    destination_address_prefix = var.secuirtyrule_destinationaddressprefix
  }
  tags = {
    environment = var.environment
  }
}