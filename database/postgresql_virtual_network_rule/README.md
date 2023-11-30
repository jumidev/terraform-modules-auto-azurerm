# azurerm_postgresql_virtual_network_rule

Manages a PostgreSQL Virtual Network Rule.-> **NOTE:** PostgreSQL Virtual Network Rules [can only be used with SKU Tiers of `GeneralPurpose` or `MemoryOptimized`](https://docs.microsoft.com/azure/postgresql/concepts-data-access-and-security-vnet)

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/postgresql_virtual_network_rule" 
}

inputs = {
   name = "name of postgresql_virtual_network_rule" 
   resource_group_name = "${resource_group}" 
   server_name = "server_name of postgresql_virtual_network_rule" 
   subnet_id = "subnet_id of postgresql_virtual_network_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the PostgreSQL virtual network rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group where the PostgreSQL server resides. Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | The name of the SQL Server to which this PostgreSQL virtual network rule will be applied to. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | The ID of the subnet that the PostgreSQL server will be connected to. | 
| **var.ignore_missing_vnet_service_endpoint** | string | False | Should the Virtual Network Rule be created before the Subnet has the Virtual Network Service Endpoint enabled? | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the PostgreSQL Virtual Network Rule. | 

Additionally, all variables are provided as outputs.
