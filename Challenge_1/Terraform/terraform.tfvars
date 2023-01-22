resourceGroupName = "KPMG_Test"
location = "UK South"

### Application insight variable values

applicationinsight_name = "kpmg-frontend-appinsights01"
applicationtype = "web"

### App service plan variable values

storageaccountname ="terraformbackend01"
name ="appserviceplan-pro"
tier  ="Standard"
size  ="S1"
# kind needs to select based requirment. if you want linux need to select linux. 
# if you want function app need to select function app 
Kind  ="windows"

### Appservice template variable values

webappname =["kpmgtest-fe01","kpmgtest-be01"]
AppserviceplanName ="appserviceplan-pro"


### Storage Account Variable values
accounttier =  "Standard"
replicationtype = "GRS"
environment = "Dev"

### Virtual Network variable values
virtualnetworkname ="terraformtest-vnet01"
addressspace = ["10.0.0.0/16"]

### Subnet Variable values
subnetname  = "terraformtest-subnet01"
subnet_Addressspace = ["10.0.1.0/24"]

### Network security group variable values

Nsg_name = "terraformtest-nsg01"
secuirtyrule_name = "rule1"
secuirtyrule_priority = "100"

# direction is Inbound or Outbound
secuirtyrule_direction = "Inbound"
# access Allow or deny
secuirtyrule_access = "Allow"
secuirtyrule_protocol = "Tcp"

# allowed ports 443, rdp 3389, sql 1443
secuirtyrule_sourceportrange = "*"
secuirtyrule_destinationeportrange ="*"
secuirtyrule_sourceaddressprefix = "*"
secuirtyrule_destinationaddressprefix ="*"

### KeyVault variable values
Keyvaultname = "terraformtest-keyvault"
skuname = "standard"

### SQL server variable values
sqlserverName= "testkpmg124"
sqlserverVersion = "12.0"
sqlserverAdminLogin = "Testuser"
sqlserverAdminPwd = "4-v3ry-53cr37-p455w0rd"
sqldatabaseName = "testdb"
environment = "Dev"