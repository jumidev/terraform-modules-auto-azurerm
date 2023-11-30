# azurerm_app_service_active_slot

Promotes an App Service Slot to Production within an App Service.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_web_app_active_slot`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/web_app_active_slot) resource instead.-> **Note:** When using Slots - the `app_settings`, `connection_string` and `site_config` blocks on the `azurerm_app_service` resource will be overwritten when promoting a Slot using the `azurerm_app_service_active_slot` resource.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | The name of the resource group in which the App Service exists. Changing this forces a new resource to be created. | 
| **var.app_service_name** | string | True | The name of the App Service within which the Slot exists. Changing this forces a new resource to be created. | 
| **var.app_service_slot_name** | string | True | The name of the App Service Slot which should be promoted to the Production Slot within the App Service. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **app_service_name** | string  | - | 
| **app_service_slot_name** | string  | - | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_active_slot" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   app_service_name = "app_service_name of app_service_active_slot" 
   app_service_slot_name = "app_service_slot_name of app_service_active_slot" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```