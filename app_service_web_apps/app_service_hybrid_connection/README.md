# azurerm_app_service_hybrid_connection

Manages an App Service Hybrid Connection for an existing App Service, Relay and Service Bus.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_function_app_hybrid_connection`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/function_app_hybrid_connection) and [`azurerm_web_app_hybrid_connection`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/web_app_hybrid_connection) resources instead.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "app_service_web_apps/app_service_hybrid_connection"   
}

inputs = {
   # app_service_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   relay_id = "The ID of the Service Bus Relay"   
   hostname = "The hostname of the endpoint"   
   port = "The port of the endpoint"   
}

component_inputs = {
   app_service_name = "path/to/app_service_component:name"   
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
| **app_service_name** | string |  Specifies the name of the App Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the App Service. Changing this forces a new resource to be created. | 
| **relay_id** | string |  The ID of the Service Bus Relay. Changing this forces a new resource to be created. | 
| **hostname** | string |  The hostname of the endpoint. | 
| **port** | string |  The port of the endpoint. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **send_key_name** | string |  `RootManageSharedAccessKey`  |  The name of the Service Bus key which has Send permissions. Defaults to `RootManageSharedAccessKey`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service. | 
| **namespace_name** | string | No  | The name of the Relay Namespace. | 
| **send_key_value** | string | No  | The value of the Service Bus Primary Access key. | 
| **service_bus_namespace** | string | No  | The name of the Service Bus namespace. | 
| **service_bus_suffix** | string | No  | The suffix for the service bus endpoint. | 

Additionally, all variables are provided as outputs.
