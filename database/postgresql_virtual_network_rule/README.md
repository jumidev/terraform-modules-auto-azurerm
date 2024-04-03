# azurerm_postgresql_virtual_network_rule



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/postgresql_virtual_network_rule"   
}
inputs = {
   name = "The name of the PostgreSQL virtual network rule"   
   resource_group_name = "${resource_group}"   
   # server_name → set in component_inputs
   # subnet_id → set in component_inputs
}
component_inputs = {
   server_name = "path/to/postgresql_server_component:name"   
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
| **name** | string |  The name of the PostgreSQL virtual network rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created. ~> **NOTE:** `name` must be between 1-128 characters long and must satisfy all of the requirements below: 1. Contains only alphanumeric and hyphen characters 2. Cannot start with a number or hyphen 3. Cannot end with a hyphen | 
| **resource_group_name** | string |  The name of the resource group where the PostgreSQL server resides. Changing this forces a new resource to be created. | 
| **server_name** | string |  The name of the SQL Server to which this PostgreSQL virtual network rule will be applied to. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  The ID of the subnet that the PostgreSQL server will be connected to. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **ignore_missing_vnet_service_endpoint** | string |  Should the Virtual Network Rule be created before the Subnet has the Virtual Network Service Endpoint enabled? | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **ignore_missing_vnet_service_endpoint** | string | No  | Should the Virtual Network Rule be created before the Subnet has the Virtual Network Service Endpoint enabled? In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the PostgreSQL Virtual Network Rule. | 

Additionally, all variables are provided as outputs.
