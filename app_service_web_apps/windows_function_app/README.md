# azurerm_windows_function_app

Manages a Windows Function App.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/windows_function_app" 
}

inputs = {
   location = "${location}" 
   name = "name of windows_function_app" 
   resource_group_name = "${resource_group}" 
   service_plan_id = "service_plan_id of windows_function_app" 
   site_config = "site_config of windows_function_app" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.location** | string | True | -  |  -  |  The Azure Region where the Windows Function App should exist. Changing this forces a new Windows Function App to be created. | 
| **var.name** | string | True | -  |  -  |  The name which should be used for this Windows Function App. Changing this forces a new Windows Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions) | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Windows Function App should exist. Changing this forces a new Windows Function App to be created. | 
| **var.service_plan_id** | string | True | -  |  -  |  The ID of the App Service Plan within which to create this Function App. | 
| **var.site_config** | block | True | -  |  -  |  A `site_config` block. | 
| **var.app_settings** | string | False | -  |  -  |  A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values. | 
| **var.auth_settings** | block | False | -  |  -  |  A `auth_settings` block. | 
| **var.auth_settings_v2** | block | False | -  |  -  |  A `auth_settings_v2` block. | 
| **var.backup** | block | False | -  |  -  |  A `backup` block. | 
| **var.builtin_logging_enabled** | bool | False | `True`  |  -  |  Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`. | 
| **var.client_certificate_enabled** | bool | False | -  |  -  |  Should the function app use Client Certificates. | 
| **var.client_certificate_mode** | string | False | `Optional`  |  `Required`, `Optional`, `OptionalInteractiveUser`  |  The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`. | 
| **var.client_certificate_exclusion_paths** | string | False | -  |  -  |  Paths to exclude when using client certificates, separated by ; | 
| **var.connection_string** | block | False | -  |  -  |  One or more `connection_string` blocks. | 
| **var.content_share_force_disabled** | bool | False | `False`  |  -  |  Should Content Share Settings be disabled. Defaults to `false`. | 
| **var.daily_memory_time_quota** | string | False | `0`  |  -  |  The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. Defaults to `0`. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is the Function App enabled? Defaults to `true`. | 
| **var.ftp_publish_basic_authentication_enabled** | bool | False | `True`  |  -  |  Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`. | 
| **var.functions_extension_version** | string | False | `~4`  |  -  |  The runtime version associated with the Function App. Defaults to `~4`. | 
| **var.https_only** | bool | False | `False`  |  -  |  Can the Function App only be accessed via HTTPS? Defaults to `false`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Should public network access be enabled for the Function App. Defaults to `true`. | 
| **var.identity** | block | False | -  |  -  |  A `identity` block. | 
| **var.key_vault_reference_identity_id** | string | False | -  |  -  |  The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **var.storage_account** | block | False | -  |  -  |  One or more `storage_account` blocks. | 
| **var.sticky_settings** | block | False | -  |  -  |  A `sticky_settings` block. | 
| **var.storage_account_access_key** | string | False | -  |  -  |  The access key which will be used to access the backend storage account for the Function App. Conflicts with `storage_uses_managed_identity`. | 
| **var.storage_account_name** | string | False | -  |  -  |  The backend storage account name which will be used by this Function App. | 
| **var.storage_uses_managed_identity** | string | False | -  |  -  |  Should the Function App use Managed Identity to access the storage account. Conflicts with `storage_account_access_key`. | 
| **var.storage_key_vault_secret_id** | string | False | -  |  -  |  The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Windows Function App. | 
| **var.virtual_network_subnet_id** | string | False | -  |  -  |  The subnet id which will be used by this Function App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration). | 
| **var.webdeploy_publish_basic_authentication_enabled** | bool | False | `True`  |  -  |  Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to`true`. | 
| **var.zip_deploy_file** | string | False | -  |  -  |  The local path and filename of the Zip packaged application to deploy to this Windows Function App. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Windows Function App. | 
| **custom_domain_verification_id** | string | No  | The identifier used by App Service to perform domain ownership verification via DNS TXT record. | 
| **default_hostname** | string | No  | The default hostname of the Windows Function App. | 
| **hosting_environment_id** | string | No  | The ID of the App Service Environment used by Function App. | 
| **identity** | block | No  | An `identity` block. | 
| **kind** | string | No  | The Kind value for this Windows Function App. | 
| **outbound_ip_address_list** | list | No  | A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]` | 
| **outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`. | 
| **possible_outbound_ip_address_list** | list | No  | A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`. | 
| **possible_outbound_ip_addresses** | string | No  | A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`. | 
| **site_credential** | block | No  | A `site_credential` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 
| **name** | string | No  | The Site Credentials Username used for publishing. | 
| **password** | string | No  | The Site Credentials Password used for publishing. | 

Additionally, all variables are provided as outputs.
