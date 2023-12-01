# azurerm_app_service_slot_virtual_network_swift_connection

Manages an App Service Slot's Virtual Network Association (this is for the [Regional VNet Integration](https://docs.microsoft.com/azure/app-service/web-sites-integrate-with-vnet#regional-vnet-integration) which is still in preview).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_slot_virtual_network_swift_connection" 
}

inputs = {
   app_service_id = "app_service_id of app_service_slot_virtual_network_swift_connection" 
   slot_name = "slot_name of app_service_slot_virtual_network_swift_connection" 
   subnet_id = "subnet_id of app_service_slot_virtual_network_swift_connection" 
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
| **app_service_id** | string |  The ID of the App Service or Function App to associate to the VNet. Changing this forces a new resource to be created. | 
| **slot_name** | string |  The name of the App Service Slot or Function App Slot. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  The ID of the subnet the app service will be associated to (the subnet must have a `service_delegation` configured for `Microsoft.Web/serverFarms`). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Slot Virtual Network Association | 

Additionally, all variables are provided as outputs.
