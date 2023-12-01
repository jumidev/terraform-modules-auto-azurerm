# azurerm_mysql_virtual_network_rule

Manages a MySQL Virtual Network Rule.-> **NOTE:** MySQL Virtual Network Rules [can only be used with SKU Tiers of `GeneralPurpose` or `MemoryOptimized`](https://docs.microsoft.com/azure/mysql/concepts-data-access-and-security-vnet)

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mysql_virtual_network_rule" 
}

inputs = {
   name = "name of mysql_virtual_network_rule" 
   resource_group_name = "${resource_group}" 
   server_name = "server_name of mysql_virtual_network_rule" 
   subnet_id = "subnet_id of mysql_virtual_network_rule" 
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
| **name** | string |  The name of the MySQL Virtual Network Rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group where the MySQL server resides. Changing this forces a new resource to be created. | 
| **server_name** | string |  The name of the SQL Server to which this MySQL virtual network rule will be applied to. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  The ID of the subnet that the MySQL server will be connected to. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MySQL Virtual Network Rule. | 

Additionally, all variables are provided as outputs.
