# azurerm_mariadb_virtual_network_rule



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
| **name** | string |  The name of the MariaDB Virtual Network Rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created. ~> **NOTE:** `name` must be between 1-128 characters long and must satisfy all of the requirements below: 1. Contains only alphanumeric and hyphen characters 2. Cannot start with a number or hyphen 3. Cannot end with a hyphen | 
| **resource_group_name** | string |  The name of the resource group where the MariaDB server resides. Changing this forces a new resource to be created. | 
| **server_name** | string |  The name of the SQL Server to which this MariaDB virtual network rule will be applied to. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  The ID of the subnet that the MariaDB server will be connected to. ~> **NOTE:** Due to [a bug in the Azure API](https://github.com/Azure/azure-rest-api-specs/issues/3719) this resource currently doesn't expose the `ignore_missing_vnet_service_endpoint` field and defaults this to `false`. Terraform will check during the provisioning of the Virtual Network Rule that the Subnet contains the Service Rule to verify that the Virtual Network Rule can be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **subnet_id** | string | No  | The ID of the subnet that the MariaDB server will be connected to. ~> **NOTE:** Due to [a bug in the Azure API](https://github.com/Azure/azure-rest-api-specs/issues/3719) this resource currently doesn't expose the `ignore_missing_vnet_service_endpoint` field and defaults this to `false`. Terraform will check during the provisioning of the Virtual Network Rule that the Subnet contains the Service Rule to verify that the Virtual Network Rule can be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the MariaDB Virtual Network Rule. | 

Additionally, all variables are provided as outputs.
