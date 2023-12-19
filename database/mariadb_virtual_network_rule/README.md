# azurerm_mariadb_virtual_network_rule

Manages a MariaDB Virtual Network Rule.-> **NOTE:** MariaDB Virtual Network Rules [can only be used with SKU Tiers of `GeneralPurpose` or `MemoryOptimized`](https://docs.microsoft.com/azure/mariadb/concepts-data-access-security-vnet)

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mariadb_virtual_network_rule"   
}

inputs = {
   name = "The name of the MariaDB Virtual Network Rule"   
   resource_group_name = "${resource_group}"   
   # server_name → set in component_inputs
   # subnet_id → set in component_inputs
}

component_inputs = {
   server_name = "path/to/mariadb_server_component:name"   
   subnet_id = "path/to/subnet_component:id"   
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
| **name** | string |  The name of the MariaDB Virtual Network Rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group where the MariaDB server resides. Changing this forces a new resource to be created. | 
| **server_name** | string |  The name of the SQL Server to which this MariaDB virtual network rule will be applied to. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  The ID of the subnet that the MariaDB server will be connected to. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MariaDB Virtual Network Rule. | 

Additionally, all variables are provided as outputs.
