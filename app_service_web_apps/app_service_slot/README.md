# azurerm_app_service_slot

Manages an App Service Slot (within an App Service).!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_linux_web_app_slot`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app_slot) and [`azurerm_windows_web_app_slot`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_web_app_slot) resources instead.-> **Note:** When using Slots - the `app_settings`, `connection_string` and `site_config` blocks on the `azurerm_app_service` resource will be overwritten when promoting a Slot using the `azurerm_app_service_active_slot` resource.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the App Service Slot component. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the App Service Slot component. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **app_service_plan_id** | string | True | -  |  -  | The ID of the App Service Plan within which to create this App Service Slot. Changing this forces a new resource to be created. | 
| **app_service_name** | string | True | -  |  -  | The name of the App Service within which to create the App Service Slot. Changing this forces a new resource to be created. | 
| **app_settings** | string | False | -  |  -  | A key-value pair of App Settings. | 
| **auth_settings** | block | False | -  |  -  | A `auth_settings` block. | 
| **connection_string** | block | False | -  |  -  | An `connection_string` block. | 
| **client_affinity_enabled** | bool | False | -  |  -  | Should the App Service Slot send session affinity cookies, which route client requests in the same session to the same instance? | 
| **enabled** | bool | False | `True`  |  -  | Is the App Service Slot Enabled? Defaults to `true`. | 
| **https_only** | bool | False | `False`  |  -  | Can the App Service Slot only be accessed via HTTPS? Defaults to `false`. | 
| **site_config** | block | False | -  |  -  | A `site_config` object as defined below. | 
| **storage_account** | block | False | -  |  -  | One or more `storage_account` blocks. | 
| **logs** | block | False | -  |  -  | A `logs` block. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **key_vault_reference_identity_id** | string | False | -  |  -  | The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

