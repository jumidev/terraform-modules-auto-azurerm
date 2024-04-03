# azurerm_mssql_virtual_network_rule



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_virtual_network_rule"   
}
inputs = {
   name = "The name of the SQL virtual network rule"   
   # server_id → set in component_inputs
   # subnet_id → set in component_inputs
}
component_inputs = {
   server_id = "path/to/mssql_server_component:id"   
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
| **name** | string |  The name of the SQL virtual network rule. Changing this forces a new resource to be created. | 
| **server_id** | string |  The resource ID of the SQL Server to which this SQL virtual network rule will be applied. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  The ID of the subnet from which the SQL server will accept communications. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **ignore_missing_vnet_service_endpoint** | bool |  `False`  |  Create the virtual network rule before the subnet has the virtual network service endpoint enabled. Defaults to `false`. ~> **NOTE:** If `ignore_missing_vnet_service_endpoint` is false, and the target subnet does not contain the `Microsoft.SQL` endpoint in the `service_endpoints` array, the deployment will fail when it tries to create the SQL virtual network rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **ignore_missing_vnet_service_endpoint** | bool | No  | Create the virtual network rule before the subnet has the virtual network service endpoint enabled. Defaults to `false`. ~> **NOTE:** If `ignore_missing_vnet_service_endpoint` is false, and the target subnet does not contain the `Microsoft.SQL` endpoint in the `service_endpoints` array, the deployment will fail when it tries to create the SQL virtual network rule. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the SQL virtual network rule. | 

Additionally, all variables are provided as outputs.
