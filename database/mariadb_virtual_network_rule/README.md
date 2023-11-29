# azurerm_mariadb_virtual_network_rule

Manages a MariaDB Virtual Network Rule.-> **NOTE:** MariaDB Virtual Network Rules [can only be used with SKU Tiers of `GeneralPurpose` or `MemoryOptimized`](https://docs.microsoft.com/azure/mariadb/concepts-data-access-security-vnet)

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the MariaDB Virtual Network Rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group where the MariaDB server resides. Changing this forces a new resource to be created. | 
| **server_name** | string | True | -  |  -  | The name of the SQL Server to which this MariaDB virtual network rule will be applied to. Changing this forces a new resource to be created. | 
| **subnet_id** | string | True | -  |  -  | The ID of the subnet that the MariaDB server will be connected to. | 

