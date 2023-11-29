# azurerm_windows_function_app_slot

Manages a Windows Function App Slot.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Windows Function App Slot. Changing this forces a new resource to be created. | 
| **function_app_id** | string | True | -  |  -  | The name of the Windows Function App this Slot is a member of. Changing this forces a new resource to be created. | 
| **site_config** | block | True | -  |  -  | a `site_config` block as detailed below. | 
| **app_settings** | string | False | -  |  -  | A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values. | 
| **auth_settings** | block | False | -  |  -  | an `auth_settings` block as detailed below. | 
| **auth_settings_v2** | block | False | -  |  -  | an `auth_settings_v2` block as detailed below. | 
| **backup** | block | False | -  |  -  | a `backup` block as detailed below. | 
| **builtin_logging_enabled** | bool | False | `True`  |  -  | Should built-in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`. | 
| **client_certificate_enabled** | bool | False | -  |  -  | Should the Function App Slot use Client Certificates. | 
| **client_certificate_mode** | string | False | `Optional`  |  `Required`, `Optional`, `OptionalInteractiveUser`  | The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`. | 
| **client_certificate_exclusion_paths** | string | False | -  |  -  | Paths to exclude when using client certificates, separated by ; | 
| **connection_string** | block | False | -  |  -  | a `connection_string` block as detailed below. | 
| **content_share_force_disabled** | bool | False | -  |  -  | Force disable the content share settings. | 
| **daily_memory_time_quota** | string | False | `0`  |  -  | The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`. | 
| **enabled** | bool | False | `True`  |  -  | Is the Windows Function App Slot enabled. Defaults to `true`. | 
| **ftp_publish_basic_authentication_enabled** | bool | False | `True`  |  -  | Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`. | 
| **functions_extension_version** | string | False | `~4`  |  -  | The runtime version associated with the Function App Slot. Defaults to `~4`. | 
| **https_only** | string | False | -  |  -  | Can the Function App Slot only be accessed via HTTPS? | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Should public network access be enabled for the Function App. Defaults to `true`. | 
| **identity** | block | False | -  |  -  | an `identity` block as detailed below. | 
| **key_vault_reference_identity_id** | string | False | -  |  -  | The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **service_plan_id** | string | False | -  |  -  | The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Windows Function App will be used. | 
| **storage_account_access_key** | string | False | -  |  -  | The access key which will be used to access the storage account for the Function App Slot. | 
| **storage_account_name** | string | False | -  |  -  | The backend storage account name which will be used by this Function App Slot. | 
| **storage_account** | block | False | -  |  -  | One or more `storage_account` blocks. | 
| **storage_uses_managed_identity** | string | False | -  |  -  | Should the Function App Slot use its Managed Identity to access storage. | 
| **storage_key_vault_secret_id** | string | False | -  |  -  | The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App Slot. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Windows Function App Slot. | 
| **virtual_network_subnet_id** | string | False | -  |  -  | The subnet id which will be used by this Function App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration). | 
| **webdeploy_publish_basic_authentication_enabled** | bool | False | `True`  |  -  | Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to`true`. | 

