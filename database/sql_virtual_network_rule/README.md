# azurerm_sql_virtual_network_rule

Allows you to add, update, or remove an Azure SQL server to a subnet of a virtual network.-> **Note:** The `azurerm_sql_virtual_network_rule` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_virtual_network_rule`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_virtual_network_rule) resource instead.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the SQL virtual network rule. Changing this forces a new resource to be created. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group where the SQL server resides. Changing this forces a new resource to be created. | 
| **server_name** | string | True | -  |  -  | The name of the SQL Server to which this SQL virtual network rule will be applied to. Changing this forces a new resource to be created. | 
| **subnet_id** | string | True | -  |  -  | The ID of the subnet that the SQL server will be connected to. | 
| **ignore_missing_vnet_service_endpoint** | string | False | -  |  -  | Create the virtual network rule before the subnet has the virtual network service endpoint enabled. The default value is false. | 

