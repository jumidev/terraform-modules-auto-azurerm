# azurerm_web_app_hybrid_connection

Manages a Web App Hybrid Connection.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/web_app_hybrid_connection" 
}

inputs = {
   web_app_id = "web_app_id of web_app_hybrid_connection" 
   relay_id = "relay_id of web_app_hybrid_connection" 
   hostname = "hostname of web_app_hybrid_connection" 
   port = "port of web_app_hybrid_connection" 
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
| **var.web_app_id** | string |  The ID of the Web App for this Hybrid Connection. Changing this forces a new resource to be created. | 
| **var.relay_id** | string |  The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created. | 
| **var.hostname** | string |  The hostname of the endpoint. | 
| **var.port** | string |  The port to use for the endpoint. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.send_key_name** | string |  `RootManageSharedAccessKey`  |  The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey` | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Web App Hybrid Connection | 
| **namespace_name** | string | No  | The name of the Relay Namespace. | 
| **relay_name** | string | No  | The name of the Relay in use. | 
| **send_key_value** | string | No  | The Primary Access Key for the `send_key_name` | 
| **service_bus_namespace** | string | No  | The Service Bus Namespace. | 
| **service_bus_suffix** | string | No  | The suffix for the endpoint. | 

Additionally, all variables are provided as outputs.
