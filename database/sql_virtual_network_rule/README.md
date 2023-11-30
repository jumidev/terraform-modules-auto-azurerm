# azurerm_sql_virtual_network_rule

Allows you to add, update, or remove an Azure SQL server to a subnet of a virtual network.-> **Note:** The `azurerm_sql_virtual_network_rule` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_virtual_network_rule`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_virtual_network_rule) resource instead.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/sql_virtual_network_rule" 
}

inputs = {
   name = "name of sql_virtual_network_rule" 
   resource_group_name = "${resource_group}" 
   server_name = "server_name of sql_virtual_network_rule" 
   subnet_id = "subnet_id of sql_virtual_network_rule" 
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
| **var.name** | string  The name of the SQL virtual network rule. Changing this forces a new resource to be created. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. | 
| **var.resource_group_name** | string  The name of the resource group where the SQL server resides. Changing this forces a new resource to be created. | 
| **var.server_name** | string  The name of the SQL Server to which this SQL virtual network rule will be applied to. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string  The ID of the subnet that the SQL server will be connected to. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.ignore_missing_vnet_service_endpoint** | string  Create the virtual network rule before the subnet has the virtual network service endpoint enabled. The default value is false. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SQL virtual network rule. | 

Additionally, all variables are provided as outputs.
