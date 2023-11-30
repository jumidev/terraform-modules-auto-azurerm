# azurerm_mariadb_virtual_network_rule

Manages a MariaDB Virtual Network Rule.-> **NOTE:** MariaDB Virtual Network Rules [can only be used with SKU Tiers of `GeneralPurpose` or `MemoryOptimized`](https://docs.microsoft.com/azure/mariadb/concepts-data-access-security-vnet)

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the MariaDB Virtual Network Rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group where the MariaDB server resides. Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | The name of the SQL Server to which this MariaDB virtual network rule will be applied to. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | The ID of the subnet that the MariaDB server will be connected to. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **server_name** | string  | - | 
| **subnet_id** | string  | - | 
| **id** | string  | The ID of the MariaDB Virtual Network Rule. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mariadb_virtual_network_rule" 
}

inputs = {
   name = "name of mariadb_virtual_network_rule" 
   resource_group_name = "${resource_group}" 
   server_name = "server_name of mariadb_virtual_network_rule" 
   subnet_id = "subnet_id of mariadb_virtual_network_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```