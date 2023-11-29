# azurerm_app_service_slot_virtual_network_swift_connection

Manages an App Service Slot's Virtual Network Association (this is for the [Regional VNet Integration](https://docs.microsoft.com/azure/app-service/web-sites-integrate-with-vnet#regional-vnet-integration) which is still in preview).

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.app_service_id** | string | True | The ID of the App Service or Function App to associate to the VNet. Changing this forces a new resource to be created. | 
| **var.slot_name** | string | True | The name of the App Service Slot or Function App Slot. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | The ID of the subnet the app service will be associated to (the subnet must have a `service_delegation` configured for `Microsoft.Web/serverFarms`). | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **app_service_id** | string  | - | 
| **slot_name** | string  | - | 
| **subnet_id** | string  | - | 
| **id** | string  | The ID of the App Service Slot Virtual Network Association | 