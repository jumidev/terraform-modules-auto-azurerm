# azurerm_windows_function_app

Manages a Windows Function App.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Windows Function App should exist. Changing this forces a new Windows Function App to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Windows Function App. Changing this forces a new Windows Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions) | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Windows Function App should exist. Changing this forces a new Windows Function App to be created. | 
| **service_plan_id** | string | True | -  |  -  | The ID of the App Service Plan within which to create this Function App. | 
| **site_config** | block | True | -  |  -  | A `site_config` block. | 
| **app_settings** | string | False | -  |  -  | A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values. | 
| **auth_settings** | block | False | -  |  -  | A `auth_settings` block. | 
| **auth_settings_v2** | block | False | -  |  -  | A `auth_settings_v2` block. | 
| **backup** | block | False | -  |  -  | A `backup` block. | 
| **builtin_logging_enabled** | bool | False | `True`  |  -  | Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`. | 
| **client_certificate_enabled** | bool | False | -  |  -  | Should the function app use Client Certificates. | 
| **client_certificate_mode** | string | False | `Optional`  |  `Required`, `Optional`, `OptionalInteractiveUser`  | The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`. | 
| **client_certificate_exclusion_paths** | string | False | -  |  -  | Paths to exclude when using client certificates, separated by ; | 
| **connection_string** | block | False | -  |  -  | One or more `connection_string` blocks. | 
| **content_share_force_disabled** | bool | False | `False`  |  -  | Should Content Share Settings be disabled. Defaults to `false`. | 
| **daily_memory_time_quota** | string | False | `0`  |  -  | The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. Defaults to `0`. | 
| **enabled** | bool | False | `True`  |  -  | Is the Function App enabled? Defaults to `true`. | 
| **ftp_publish_basic_authentication_enabled** | bool | False | `True`  |  -  | Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`. | 
| **functions_extension_version** | string | False | `~4`  |  -  | The runtime version associated with the Function App. Defaults to `~4`. | 
| **https_only** | bool | False | `False`  |  -  | Can the Function App only be accessed via HTTPS? Defaults to `false`. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Should public network access be enabled for the Function App. Defaults to `true`. | 
| **identity** | block | False | -  |  -  | A `identity` block. | 
| **key_vault_reference_identity_id** | string | False | -  |  -  | The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **storage_account** | block | False | -  |  -  | One or more `storage_account` blocks. | 
| **sticky_settings** | block | False | -  |  -  | A `sticky_settings` block. | 
| **storage_account_access_key** | string | False | -  |  -  | The access key which will be used to access the backend storage account for the Function App. Conflicts with `storage_uses_managed_identity`. | 
| **storage_account_name** | string | False | -  |  -  | The backend storage account name which will be used by this Function App. | 
| **storage_uses_managed_identity** | string | False | -  |  -  | Should the Function App use Managed Identity to access the storage account. Conflicts with `storage_account_access_key`. | 
| **storage_key_vault_secret_id** | string | False | -  |  -  | The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Windows Function App. | 
| **virtual_network_subnet_id** | string | False | -  |  -  | The subnet id which will be used by this Function App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration). | 
| **webdeploy_publish_basic_authentication_enabled** | bool | False | `True`  |  -  | Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to`true`. | 
| **zip_deploy_file** | string | False | -  |  -  | The local path and filename of the Zip packaged application to deploy to this Windows Function App. | 

