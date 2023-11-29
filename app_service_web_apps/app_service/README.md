# azurerm_app_service

Manages an App Service (within an App Service Plan).!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_linux_web_app`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app) and [`azurerm_windows_web_app`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_web_app) resources instead.-> **Note:** When using Slots - the `app_settings`, `connection_string` and `site_config` blocks on the `azurerm_app_service` resource will be overwritten when promoting a Slot using the `azurerm_app_service_active_slot` resource.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the App Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the App Service. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **app_service_plan_id** | string | True | -  |  -  | The ID of the App Service Plan within which to create this App Service. | 
| **app_settings** | string | False | -  |  -  | A key-value pair of App Settings. | 
| **auth_settings** | block | False | -  |  -  | A `auth_settings` block. | 
| **backup** | block | False | -  |  -  | A `backup` block. | 
| **connection_string** | block | False | -  |  -  | One or more `connection_string` blocks. | 
| **client_affinity_enabled** | bool | False | -  |  -  | Should the App Service send session affinity cookies, which route client requests in the same session to the same instance? | 
| **client_cert_enabled** | bool | False | `False`  |  -  | Does the App Service require client certificates for incoming requests? Defaults to `false`. | 
| **client_cert_mode** | string | False | -  |  `Required`, `Optional`, `OptionalInteractiveUser`  | Mode of client certificates for this App Service. Possible values are `Required`, `Optional` and `OptionalInteractiveUser`. If this parameter is set, `client_cert_enabled` must be set to `true`, otherwise this parameter is ignored. | 
| **enabled** | bool | False | `True`  |  -  | Is the App Service Enabled? Defaults to `true`. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **https_only** | bool | False | `False`  |  -  | Can the App Service only be accessed via HTTPS? Defaults to `false`. | 
| **key_vault_reference_identity_id** | string | False | -  |  -  | The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **logs** | block | False | -  |  -  | A `logs` block. | 
| **storage_account** | block | False | -  |  -  | One or more `storage_account` blocks. | 
| **site_config** | block | False | -  |  -  | A `site_config` block. | 
| **source_control** | block | False | -  |  -  | A `source_control` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

