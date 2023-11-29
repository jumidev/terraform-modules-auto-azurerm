# azurerm_app_service_slot

Manages an App Service Slot (within an App Service).!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_linux_web_app_slot`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app_slot) and [`azurerm_windows_web_app_slot`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_web_app_slot) resources instead.-> **Note:** When using Slots - the `app_settings`, `connection_string` and `site_config` blocks on the `azurerm_app_service` resource will be overwritten when promoting a Slot using the `azurerm_app_service_active_slot` resource.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the App Service Slot component. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the App Service Slot component. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.app_service_plan_id** | string | True | -  |  The ID of the App Service Plan within which to create this App Service Slot. Changing this forces a new resource to be created. | 
| **var.app_service_name** | string | True | -  |  The name of the App Service within which to create the App Service Slot. Changing this forces a new resource to be created. | 
| **var.app_settings** | string | False | -  |  A key-value pair of App Settings. | 
| **var.auth_settings** | block | False | -  |  A `auth_settings` block. | 
| **var.connection_string** | block | False | -  |  An `connection_string` block. | 
| **var.client_affinity_enabled** | bool | False | -  |  Should the App Service Slot send session affinity cookies, which route client requests in the same session to the same instance? | 
| **var.enabled** | bool | False | `True`  |  Is the App Service Slot Enabled? Defaults to `true`. | 
| **var.https_only** | bool | False | `False`  |  Can the App Service Slot only be accessed via HTTPS? Defaults to `false`. | 
| **var.site_config** | block | False | -  |  A `site_config` object as defined below. | 
| **var.storage_account** | block | False | -  |  One or more `storage_account` blocks. | 
| **var.logs** | block | False | -  |  A `logs` block. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.key_vault_reference_identity_id** | string | False | -  |  The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **app_service_plan_id** | string  | - | 
| **app_service_name** | string  | - | 
| **app_settings** | string  | - | 
| **auth_settings** | block  | - | 
| **connection_string** | block  | - | 
| **client_affinity_enabled** | bool  | - | 
| **enabled** | bool  | - | 
| **https_only** | bool  | - | 
| **site_config** | block  | - | 
| **storage_account** | block  | - | 
| **logs** | block  | - | 
| **identity** | block  | - | 
| **key_vault_reference_identity_id** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the App Service Slot. | 
| **default_site_hostname** | string  | The Default Hostname associated with the App Service Slot - such as `mysite.azurewebsites.net` | 
| **site_credential** | block  | A `site_credential` block, which contains the site-level credentials used to publish to this App Service slot. | 
| **identity** | block  | An `identity` block, which contains the Managed Service Identity information for this App Service slot. | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service slot. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service slot. | 
| **username** | string  | The username which can be used to publish to this App Service | 
| **password** | string  | The password associated with the username, which can be used to publish to this App Service. | 