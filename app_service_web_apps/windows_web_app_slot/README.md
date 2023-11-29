# azurerm_windows_web_app_slot

Manages a Windows Web App Slot.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Windows Web App Slot. Changing this forces a new Windows Web App Slot to be created. | 
| **app_service_id** | string | True | -  |  -  | The ID of the Windows Web App this Deployment Slot will be part of. Changing this forces a new Windows Web App to be created. | 
| **site_config** | block | True | -  |  -  | A `site_config` block. | 
| **app_settings** | string | False | -  |  -  | A map of key-value pairs of App Settings. | 
| **auth_settings** | block | False | -  |  -  | An `auth_settings` block. | 
| **auth_settings_v2** | block | False | -  |  -  | An `auth_settings_v2` block. | 
| **backup** | block | False | -  |  -  | A `backup` block. | 
| **client_affinity_enabled** | bool | False | -  |  -  | Should Client Affinity be enabled? | 
| **client_certificate_enabled** | bool | False | -  |  -  | Should Client Certificates be enabled? | 
| **client_certificate_mode** | string | False | `Required`  |  `Required`, `Optional`, `OptionalInteractiveUser`  | The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_cert_enabled` is `false`. Defaults to `Required`. | 
| **client_certificate_exclusion_paths** | string | False | -  |  -  | Paths to exclude when using client certificates, separated by ; | 
| **connection_string** | block | False | -  |  -  | One or more `connection_string` blocks. | 
| **enabled** | bool | False | `True`  |  -  | Should the Windows Web App Slot be enabled? Defaults to `true`. | 
| **ftp_publish_basic_authentication_enabled** | bool | False | `True`  |  -  | Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`. | 
| **https_only** | string | False | -  |  -  | Should the Windows Web App Slot require HTTPS connections. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Should public network access be enabled for the Web App. Defaults to `true`. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **key_vault_reference_identity_id** | string | False | -  |  -  | The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **logs** | block | False | -  |  -  | A `logs` block. | 
| **service_plan_id** | string | False | -  |  -  | The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Windows Web App will be used. | 
| **storage_account** | block | False | -  |  -  | One or more `storage_account` blocks. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Windows Web App Slot. | 
| **virtual_network_subnet_id** | string | False | -  |  -  | The subnet id which will be used by this Web App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration). | 
| **webdeploy_publish_basic_authentication_enabled** | bool | False | `True`  |  -  | Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to`true`. | 
| **zip_deploy_file** | string | False | -  |  -  | The local path and filename of the Zip packaged application to deploy to this Windows Web App. | 

