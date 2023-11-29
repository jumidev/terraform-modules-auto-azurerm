# azurerm_app_service_hybrid_connection

Manages an App Service Hybrid Connection for an existing App Service, Relay and Service Bus.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_function_app_hybrid_connection`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/function_app_hybrid_connection) and [`azurerm_web_app_hybrid_connection`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/web_app_hybrid_connection) resources instead.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.app_service_name** | string | True | -  |  -  | Specifies the name of the App Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the App Service. Changing this forces a new resource to be created. | 
| **var.relay_id** | string | True | -  |  -  | The ID of the Service Bus Relay. Changing this forces a new resource to be created. | 
| **var.hostname** | string | True | -  |  -  | The hostname of the endpoint. | 
| **var.port** | string | True | -  |  -  | The port of the endpoint. | 
| **var.send_key_name** | string | False | `RootManageSharedAccessKey`  |  -  | The name of the Service Bus key which has Send permissions. Defaults to `RootManageSharedAccessKey`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **app_service_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **relay_id** | string  | - | 
| **hostname** | string  | - | 
| **port** | string  | - | 
| **send_key_name** | string  | - | 
| **id** | string  | The ID of the App Service. | 
| **namespace_name** | string  | The name of the Relay Namespace. | 
| **send_key_value** | string  | The value of the Service Bus Primary Access key. | 
| **service_bus_namespace** | string  | The name of the Service Bus namespace. | 
| **service_bus_suffix** | string  | The suffix for the service bus endpoint. | 