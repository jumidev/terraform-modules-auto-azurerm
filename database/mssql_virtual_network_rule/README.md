# azurerm_mssql_virtual_network_rule

Allows you to manage rules for allowing traffic between an Azure SQL server and a subnet of a virtual network.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_virtual_network_rule" 
}

inputs = {
   name = "name of mssql_virtual_network_rule" 
   server_id = "server_id of mssql_virtual_network_rule" 
   subnet_id = "subnet_id of mssql_virtual_network_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string |  The name of the SQL virtual network rule. Changing this forces a new resource to be created. | 
| **var.server_id** | string |  The resource ID of the SQL Server to which this SQL virtual network rule will be applied. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string |  The ID of the subnet from which the SQL server will accept communications. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.ignore_missing_vnet_service_endpoint** | bool |  `False`  |  Create the virtual network rule before the subnet has the virtual network service endpoint enabled. Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SQL virtual network rule. | 

Additionally, all variables are provided as outputs.
