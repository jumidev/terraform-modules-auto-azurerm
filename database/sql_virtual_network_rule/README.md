# azurerm_sql_virtual_network_rule



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/sql_virtual_network_rule"   
}

inputs = {
   name = "The name of the SQL virtual network rule"   
   resource_group_name = "${resource_group}"   
   server_name = "The name of the SQL Server to which this SQL virtual network rule will be applie..."   
   # subnet_id → set in component_inputs
}

component_inputs = {
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
| **name** | string |  The name of the SQL virtual network rule. Changing this forces a new resource to be created. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. ~> **NOTE:** `name` must be between 1-64 characters long and must satisfy all of the requirements below: 1. Contains only alphanumeric and hyphen characters 2. Cannot start with a number or hyphen 3. Cannot end with a hyphen | 
| **resource_group_name** | string |  The name of the resource group where the SQL server resides. Changing this forces a new resource to be created. | 
| **server_name** | string |  The name of the SQL Server to which this SQL virtual network rule will be applied to. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  The ID of the subnet that the SQL server will be connected to. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **ignore_missing_vnet_service_endpoint** | string |  `ignore_missing_vnet_service_endpoint`  |  Create the virtual network rule before the subnet has the virtual network service endpoint enabled. The default value is false. ~> **NOTE:** If `ignore_missing_vnet_service_endpoint` is false, and the target subnet does not contain the `Microsoft.SQL` endpoint in the `service_endpoints` array, the deployment will fail when it tries to create the SQL virtual network rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **ignore_missing_vnet_service_endpoint** | string | No  | Create the virtual network rule before the subnet has the virtual network service endpoint enabled. The default value is false. ~> **NOTE:** If `ignore_missing_vnet_service_endpoint` is false, and the target subnet does not contain the `Microsoft.SQL` endpoint in the `service_endpoints` array, the deployment will fail when it tries to create the SQL virtual network rule. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the SQL virtual network rule. | 

Additionally, all variables are provided as outputs.
