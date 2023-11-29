# azurerm_mysql_virtual_network_rule

Manages a MySQL Virtual Network Rule.-> **NOTE:** MySQL Virtual Network Rules [can only be used with SKU Tiers of `GeneralPurpose` or `MemoryOptimized`](https://docs.microsoft.com/azure/mysql/concepts-data-access-and-security-vnet)

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the MySQL Virtual Network Rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group where the MySQL server resides. Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | The name of the SQL Server to which this MySQL virtual network rule will be applied to. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | The ID of the subnet that the MySQL server will be connected to. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **server_name** | string  | - | 
| **subnet_id** | string  | - | 
| **id** | string  | The ID of the MySQL Virtual Network Rule. | 