# azurerm_function_app_hybrid_connection

Manages a Function App Hybrid Connection.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "app_service_web_apps/function_app_hybrid_connection"   
}

inputs = {
   # function_app_id → set in tfstate_inputs
   relay_id = "The ID of the Relay Hybrid Connection to use"   
   hostname = "The hostname of the endpoint"   
   port = "The port to use for the endpoint"   
}

tfstate_inputs = {
   function_app_id = "path/to/function_app_component:id"   
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
| **function_app_id** | string |  The ID of the Function App for this Hybrid Connection. Changing this forces a new resource to be created. | 
| **relay_id** | string |  The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created. | 
| **hostname** | string |  The hostname of the endpoint. | 
| **port** | string |  The port to use for the endpoint | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **send_key_name** | string |  `RootManageSharedAccessKey`  |  The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey` | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Function App Hybrid Connection | 
| **namespace_name** | string | No  | The name of the Relay Namespace. | 
| **relay_name** | string | No  | The name of the Relay in use. | 
| **send_key_value** | string | Yes  | The Primary Access Key for the `send_key_name` | 
| **service_bus_namespace** | string | No  | The Service Bus Namespace. | 
| **service_bus_suffix** | string | No  | The suffix for the endpoint. | 

Additionally, all variables are provided as outputs.
