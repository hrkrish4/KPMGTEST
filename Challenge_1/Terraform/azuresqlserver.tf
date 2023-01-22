terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}
resource "azurerm_sql_server" "example" {
  name                         = var.sqlserverName
  resource_group_name          = var.resourceGroupName
  location                     = var.location
  version                      = var.sqlserverVersion
  administrator_login          = var.sqlserverAdminLogin
  administrator_login_password = var.sqlserverAdminPwd
}
resource "azurerm_sql_database" "example" {
  name                = var.sqldatabaseName
  resource_group_name = var.resourceGroupName
  location            = var.location
  server_name         = azurerm_sql_server.example.name
  tags = {
    environment = var.environment
  }
}