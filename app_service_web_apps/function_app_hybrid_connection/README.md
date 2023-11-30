# azurerm_function_app_hybrid_connection

Manages a Function App Hybrid Connection.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.function_app_id** | string | True | -  |  The ID of the Function App for this Hybrid Connection. Changing this forces a new resource to be created. | 
| **var.relay_id** | string | True | -  |  The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created. | 
| **var.hostname** | string | True | -  |  The hostname of the endpoint. | 
| **var.port** | string | True | -  |  The port to use for the endpoint | 
| **var.send_key_name** | string | False | `RootManageSharedAccessKey`  |  The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey` | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **function_app_id** | string  | - | 
| **relay_id** | string  | - | 
| **hostname** | string  | - | 
| **port** | string  | - | 
| **send_key_name** | string  | - | 
| **id** | string  | The ID of the Function App Hybrid Connection | 
| **namespace_name** | string  | The name of the Relay Namespace. | 
| **relay_name** | string  | The name of the Relay in use. | 
| **send_key_value** | string  | The Primary Access Key for the `send_key_name` | 
| **service_bus_namespace** | string  | The Service Bus Namespace. | 
| **service_bus_suffix** | string  | The suffix for the endpoint. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/function_app_hybrid_connection" 
}

inputs = {
   function_app_id = "function_app_id of function_app_hybrid_connection" 
   relay_id = "relay_id of function_app_hybrid_connection" 
   hostname = "hostname of function_app_hybrid_connection" 
   port = "port of function_app_hybrid_connection" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```