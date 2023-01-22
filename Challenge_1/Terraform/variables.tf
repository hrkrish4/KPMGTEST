variable "resourceGroupName" {

    type = string

    description = "Resource group name for the storage account to reside in"

}

variable "location" {

    type = string

    description = "Region that the storage account will reside in"

} 

#### Application insight variable declaration 
variable "applicationinsight_name" {

    type = string

    description = "Application insight name"

} 
variable "applicationtype" {

    type = string

    description = "storage account tier"

} 

#### app service plan variables

variable "name" {

    type = string

    description = "AppserviceplanName"

} 

variable "tier" {

    type = string

    description = "SKU Type"

} 

variable "size" {

    type = string

    description = "SKU size"

} 

variable "Kind" {

    type = string

    description = "Dedicated/Consumptionplan/linux"

} 
variable "storageaccountname" {

    type = string

    description = "Storage account name"

} 

###appservice template variables

variable "AppserviceplanName" {

    type = string

    description = "AppserviceplanName"

} 

variable "webappname" {

    type = list

    description = "webapp name"

} 



### Storage Account variable declaration

variable "accounttier" {

    type = string

    description = "storage account tier"

} 
variable "replicationtype" {

    type = string

    description = "storage account replicationtype"

} 
variable "environment" {

    type = string

    description = "storage account environment"

} 

### Virtual Netwprk variable declaration

variable "virtualnetworkname" {

    type = string

    description = "virtual network name"

} 

variable "addressspace" {

    type = list

    description = "virtual network address space"

} 

### Subnet Variable declaration

variable "subnetname" {

    type = string

    description = "subnet name"

} 

variable "subnet_Addressspace" {

    type = list

    description = "subnet address space"

} 

### Nsg Variables declaration
variable "Nsg_name" {

    type = string

    description = "network security group name"

} 

variable "secuirtyrule_name" {

    type = string

    description = "network security rule name"

} 

variable "secuirtyrule_priority" {

    type = string

    description = "network security rule priority"

} 
variable "secuirtyrule_direction" {

    type = string

    description = "network security rule direction inbound/outbound"

} 

variable "secuirtyrule_access" {

    type = string

    description = "network security rule access allow/deny"

} 

variable "secuirtyrule_protocol" {

    type = string

    description = "network security rule protocal tcp/udp"

} 

variable "secuirtyrule_sourceportrange" {

    type = string

    description = "network security rule source port range"

} 

variable "secuirtyrule_destinationeportrange" {

    type = string

    description = "network security rule destination port range"

} 
variable "secuirtyrule_sourceaddressprefix" {

    type = string

    description = "network security rule source address range"

} 
variable "secuirtyrule_destinationaddressprefix" {

    type = string

    description = "network security rule source address range"

} 

### Keyvault variable declaration

variable "Keyvaultname" {

    type = string

    description = "storage account tier"

} 
variable "skuname" {

    type = string

    description = "skuname"

} 

### Azure SQL server variable declaration
variable "sqlserverName" {

    type = string

    description = "SqlserverName"

} 

variable "sqlserverVersion" {

    type = string

    description = "Sqlserver version"

} 
variable "sqlserverAdminLogin" {

    type = string

    description = "Sqlserver admin login username"

} 
variable "sqlserverAdminPwd" {

    type = string

    description = "Sqlserver admin login password"

} 
variable "sqldatabaseName" {

    type = string

    description = "Sql database Name"

} 
variable "environment" {

    type = string

    description = "environment of resource prod/uat/dev"

} 
