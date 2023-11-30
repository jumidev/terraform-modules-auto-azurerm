# azurerm_function_app_slot

Manages a Function App deployment Slot.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_linux_function_app_slot`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_function_app_slot) and [`azurerm_windows_function_app_slot`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_function_app_slot) resources instead.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Function App. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Function App Slot. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.app_service_plan_id** | string | True | -  |  The ID of the App Service Plan within which to create this Function App Slot. Changing this forces a new resource to be created. | 
| **var.function_app_name** | string | True | -  |  The name of the Function App within which to create the Function App Slot. Changing this forces a new resource to be created. | 
| **var.storage_account_name** | string | True | -  |  The backend storage account name which will be used by the Function App (such as the dashboard, logs). Changing this forces a new resource to be created. | 
| **var.storage_account_access_key** | string | True | -  |  The access key which will be used to access the backend storage account for the Function App. | 
| **var.app_settings** | string | False | -  |  A key-value pair of App Settings. | 
| **var.auth_settings** | block | False | -  |  An `auth_settings` block. | 
| **var.enable_builtin_logging** | bool | False | `True`  |  Should the built-in logging of the Function App be enabled? Defaults to `true`. | 
| **var.connection_string** | block | False | -  |  A `connection_string` block. | 
| **var.os_type** | string | False | -  |  A string indicating the Operating System type for this function app. The only possible value is `linux`. Changing this forces a new resource to be created. | 
| **var.enabled** | bool | False | `True`  |  Is the Function App enabled? Defaults to `true`. | 
| **var.https_only** | bool | False | `False`  |  Can the Function App only be accessed via HTTPS? Defaults to `false`. | 
| **var.version** | string | False | `~1`  |  The runtime version associated with the Function App. Defaults to `~1`. | 
| **var.daily_memory_time_quota** | string | False | -  |  The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. | 
| **var.site_config** | block | False | -  |  A `site_config` object as defined below. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **app_service_plan_id** | string  | - | 
| **function_app_name** | string  | - | 
| **storage_account_name** | string  | - | 
| **storage_account_access_key** | string  | - | 
| **app_settings** | string  | - | 
| **auth_settings** | block  | - | 
| **enable_builtin_logging** | bool  | - | 
| **connection_string** | block  | - | 
| **os_type** | string  | - | 
| **enabled** | bool  | - | 
| **https_only** | bool  | - | 
| **version** | string  | - | 
| **daily_memory_time_quota** | string  | - | 
| **site_config** | block  | - | 
| **identity** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Function App Slot | 
| **default_hostname** | string  | The default hostname associated with the Function App - such as `mysite.azurewebsites.net` | 
| **outbound_ip_addresses** | string  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12` | 
| **possible_outbound_ip_addresses** | string  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`. | 
| **identity** | block  | An `identity` block, which contains the Managed Service Identity information for this Function App Slot. | 
| **site_credential** | block  | A `site_credential` block, which contains the site-level credentials used to publish to this Function App Slot. | 
| **kind** | string  | The Function App kind - such as `functionapp,linux,container` | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service. | 
| **username** | string  | The username which can be used to publish to this App Service | 
| **password** | string  | The password associated with the username, which can be used to publish to this App Service. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/function_app_slot" 
}

inputs = {
   name = "name of function_app_slot" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   app_service_plan_id = "app_service_plan_id of function_app_slot" 
   function_app_name = "function_app_name of function_app_slot" 
   storage_account_name = "storage_account_name of function_app_slot" 
   storage_account_access_key = "storage_account_access_key of function_app_slot" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```