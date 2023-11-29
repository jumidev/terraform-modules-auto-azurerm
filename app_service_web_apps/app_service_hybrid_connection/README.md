# azurerm_app_service_hybrid_connection

Manages an App Service Hybrid Connection for an existing App Service, Relay and Service Bus.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_function_app_hybrid_connection`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/function_app_hybrid_connection) and [`azurerm_web_app_hybrid_connection`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/web_app_hybrid_connection) resources instead.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **app_service_name** | string | True | -  |  -  | Specifies the name of the App Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the App Service. Changing this forces a new resource to be created. | 
| **relay_id** | string | True | -  |  -  | The ID of the Service Bus Relay. Changing this forces a new resource to be created. | 
| **hostname** | string | True | -  |  -  | The hostname of the endpoint. | 
| **port** | string | True | -  |  -  | The port of the endpoint. | 
| **send_key_name** | string | False | `RootManageSharedAccessKey`  |  -  | The name of the Service Bus key which has Send permissions. Defaults to `RootManageSharedAccessKey`. | 

