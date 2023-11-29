# azurerm_postgresql_virtual_network_rule

Manages a PostgreSQL Virtual Network Rule.-> **NOTE:** PostgreSQL Virtual Network Rules [can only be used with SKU Tiers of `GeneralPurpose` or `MemoryOptimized`](https://docs.microsoft.com/azure/postgresql/concepts-data-access-and-security-vnet)

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the PostgreSQL virtual network rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group where the PostgreSQL server resides. Changing this forces a new resource to be created. | 
| **server_name** | string | True | -  |  -  | The name of the SQL Server to which this PostgreSQL virtual network rule will be applied to. Changing this forces a new resource to be created. | 
| **subnet_id** | string | True | -  |  -  | The ID of the subnet that the PostgreSQL server will be connected to. | 
| **ignore_missing_vnet_service_endpoint** | string | False | -  |  -  | Should the Virtual Network Rule be created before the Subnet has the Virtual Network Service Endpoint enabled? | 

