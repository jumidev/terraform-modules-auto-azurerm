# azurerm_linux_function_app_slot

Manages a Linux Function App Slot.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Function App Slot. Changing this forces a new resource to be created. | 
| **var.function_app_id** | string | True | -  |  -  |  The ID of the Linux Function App this Slot is a member of. Changing this forces a new resource to be created. | 
| **var.site_config** | block | True | -  |  -  |  a `site_config` block as detailed below. | 
| **var.app_settings** | string | False | -  |  -  |  A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values. | 
| **var.auth_settings** | block | False | -  |  -  |  an `auth_settings` block as detailed below. | 
| **var.auth_settings_v2** | block | False | -  |  -  |  an `auth_settings_v2` block as detailed below. | 
| **var.backup** | block | False | -  |  -  |  a `backup` block as detailed below. | 
| **var.builtin_logging_enabled** | bool | False | `True`  |  -  |  Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`. | 
| **var.client_certificate_enabled** | bool | False | -  |  -  |  Should the Function App Slot use Client Certificates. | 
| **var.client_certificate_mode** | string | False | `Optional`  |  `Required`, `Optional`, `OptionalInteractiveUser`  |  The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`. | 
| **var.client_certificate_exclusion_paths** | string | False | -  |  -  |  Paths to exclude when using client certificates, separated by ; | 
| **var.connection_string** | block | False | -  |  -  |  a `connection_string` block as detailed below. | 
| **var.content_share_force_disabled** | bool | False | -  |  -  |  Force disable the content share settings. | 
| **var.daily_memory_time_quota** | string | False | `0`  |  -  |  The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is the Linux Function App Slot enabled. Defaults to `true`. | 
| **var.ftp_publish_basic_authentication_enabled** | bool | False | -  |  -  |  Are the default FTP Basic Authentication publishing credentials enabled. | 
| **var.functions_extension_version** | string | False | `~4`  |  -  |  The runtime version associated with the Function App Slot. Defaults to `~4`. | 
| **var.https_only** | string | False | -  |  -  |  Can the Function App Slot only be accessed via HTTPS? | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Should public network access be enabled for the Function App. Defaults to `true`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block as detailed below. | 
| **var.key_vault_reference_identity_id** | string | False | -  |  -  |  The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **var.service_plan_id** | string | False | -  |  -  |  The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Function App will be used. | 
| **var.storage_account_access_key** | string | False | -  |  -  |  The access key which will be used to access the storage account for the Function App Slot. | 
| **var.storage_account_name** | string | False | -  |  -  |  The backend storage account name which will be used by this Function App Slot. | 
| **var.storage_account** | block | False | -  |  -  |  One or more `storage_account` blocks. | 
| **var.storage_uses_managed_identity** | string | False | -  |  -  |  Should the Function App Slot use its Managed Identity to access storage. | 
| **var.storage_key_vault_secret_id** | string | False | -  |  -  |  The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Linux Function App. | 
| **var.virtual_network_subnet_id** | string | False | -  |  -  |  The subnet id which will be used by this Function App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration). | 
| **var.webdeploy_publish_basic_authentication_enabled** | bool | False | `True`  |  -  |  Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to`true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **function_app_id** | string  | - | 
| **site_config** | block  | - | 
| **app_settings** | string  | - | 
| **auth_settings** | block  | - | 
| **auth_settings_v2** | block  | - | 
| **backup** | block  | - | 
| **builtin_logging_enabled** | bool  | - | 
| **client_certificate_enabled** | bool  | - | 
| **client_certificate_mode** | string  | - | 
| **client_certificate_exclusion_paths** | string  | - | 
| **connection_string** | block  | - | 
| **content_share_force_disabled** | bool  | - | 
| **daily_memory_time_quota** | string  | - | 
| **enabled** | bool  | - | 
| **ftp_publish_basic_authentication_enabled** | bool  | - | 
| **functions_extension_version** | string  | - | 
| **https_only** | string  | - | 
| **public_network_access_enabled** | bool  | - | 
| **identity** | block  | - | 
| **key_vault_reference_identity_id** | string  | - | 
| **service_plan_id** | string  | - | 
| **storage_account_access_key** | string  | - | 
| **storage_account_name** | string  | - | 
| **storage_account** | block  | - | 
| **storage_uses_managed_identity** | string  | - | 
| **storage_key_vault_secret_id** | string  | - | 
| **tags** | map  | - | 
| **virtual_network_subnet_id** | string  | - | 
| **webdeploy_publish_basic_authentication_enabled** | bool  | - | 
| **id** | string  | The ID of the Linux Function App Slot | 
| **custom_domain_verification_id** | string  | The identifier used by App Service to perform domain ownership verification via DNS TXT record. | 
| **default_hostname** | string  | The default hostname of the Linux Function App Slot. | 
| **hosting_environment_id** | string  | The ID of the App Service Environment used by Function App Slot. | 
| **identity** | block  | An `identity` block. | 
| **kind** | string  | The Kind value for this Linux Function App Slot. | 
| **outbound_ip_address_list** | list  | A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]` | 
| **outbound_ip_addresses** | string  | A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`. | 
| **possible_outbound_ip_address_list** | list  | A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`. | 
| **possible_outbound_ip_addresses** | string  | A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`. For example `["52.23.25.3", "52.143.43.12","52.143.43.17"]`. | 
| **site_credential** | block  | A `site_credential` block. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 
| **name** | string  | The Site Credentials Username used for publishing. | 
| **password** | string  | The Site Credentials Password used for publishing. | 