# azurerm_function_app_slot

Manages a Function App deployment Slot.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_linux_function_app_slot`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_function_app_slot) and [`azurerm_windows_function_app_slot`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_function_app_slot) resources instead.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Function App. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Function App Slot. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **app_service_plan_id** | string | True | -  |  -  | The ID of the App Service Plan within which to create this Function App Slot. Changing this forces a new resource to be created. | 
| **function_app_name** | string | True | -  |  -  | The name of the Function App within which to create the Function App Slot. Changing this forces a new resource to be created. | 
| **storage_account_name** | string | True | -  |  -  | The backend storage account name which will be used by the Function App (such as the dashboard, logs). Changing this forces a new resource to be created. | 
| **storage_account_access_key** | string | True | -  |  -  | The access key which will be used to access the backend storage account for the Function App. | 
| **app_settings** | string | False | -  |  -  | A key-value pair of App Settings. | 
| **auth_settings** | block | False | -  |  -  | An `auth_settings` block. | 
| **enable_builtin_logging** | bool | False | `True`  |  -  | Should the built-in logging of the Function App be enabled? Defaults to `true`. | 
| **connection_string** | block | False | -  |  -  | A `connection_string` block. | 
| **os_type** | string | False | -  |  -  | A string indicating the Operating System type for this function app. The only possible value is `linux`. Changing this forces a new resource to be created. | 
| **enabled** | bool | False | `True`  |  -  | Is the Function App enabled? Defaults to `true`. | 
| **https_only** | bool | False | `False`  |  -  | Can the Function App only be accessed via HTTPS? Defaults to `false`. | 
| **version** | string | False | `~1`  |  -  | The runtime version associated with the Function App. Defaults to `~1`. | 
| **daily_memory_time_quota** | string | False | -  |  -  | The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. | 
| **site_config** | block | False | -  |  -  | A `site_config` object as defined below. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

