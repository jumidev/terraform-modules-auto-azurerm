# azurerm_function_app

Manages a Function App.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_linux_function_app`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_function_app) and [`azurerm_windows_function_app`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_function_app) resources instead.~> **Note:** To connect an Azure Function App and a subnet within the same region `azurerm_app_service_virtual_network_swift_connection` can be used.For an example, check the `azurerm_app_service_virtual_network_swift_connection` documentation.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Function App. Changing this forces a new resource to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/azure/azure-resource-manager/management/resource-name-rules#microsoftweb). | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Function App. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **app_service_plan_id** | string | True | -  |  -  | The ID of the App Service Plan within which to create this Function App. | 
| **app_settings** | string | False | -  |  -  | A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values. | 
| **auth_settings** | block | False | -  |  -  | A `auth_settings` block. | 
| **connection_string** | block | False | -  |  -  | An `connection_string` block. | 
| **client_cert_mode** | string | False | -  |  `Required`, `Optional`  | The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required` and `Optional`. | 
| **daily_memory_time_quota** | string | False | -  |  -  | The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. | 
| **enabled** | bool | False | `True`  |  -  | Is the Function App enabled? Defaults to `true`. | 
| **enable_builtin_logging** | bool | False | `True`  |  -  | Should the built-in logging of this Function App be enabled? Defaults to `true`. | 
| **https_only** | bool | False | `False`  |  -  | Can the Function App only be accessed via HTTPS? Defaults to `false`. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **key_vault_reference_identity_id** | string | False | -  |  -  | The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information. | 
| **os_type** | string | False | ``  |  `linux`, ``  | A string indicating the Operating System type for this function app. Possible values are `linux` and ``(empty string). Changing this forces a new resource to be created. Defaults to `""`. | 
| **site_config** | block | False | -  |  -  | A `site_config` object as defined below. | 
| **source_control** | block | False | -  |  -  | A `source_control` block, as defined below. | 
| **storage_account_name** | string | True | -  |  -  | The backend storage account name which will be used by this Function App (such as the dashboard, logs). Changing this forces a new resource to be created. | 
| **storage_account_access_key** | string | True | -  |  -  | The access key which will be used to access the backend storage account for the Function App. | 
| **version** | string | False | `~1`  |  -  | The runtime version associated with the Function App. Defaults to `~1`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

