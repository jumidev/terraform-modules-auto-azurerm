# azurerm_windows_web_app

Manages a Windows Web App.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/windows_web_app" 
}

inputs = {
   location = "${location}" 
   name = "name of windows_web_app" 
   resource_group_name = "${resource_group}" 
   service_plan_id = "service_plan_id of windows_web_app" 
   site_config = {
      example_site_config = {
         api_management_api_id = "TODO link to api_management.api_management_api.id"   
      }
  
   }
 
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
| **var.location** | string | True | -  |  -  |  The Azure Region where the Windows Web App should exist. Changing this forces a new Windows Web App to be created. | 
| **var.name** | string | True | -  |  -  |  The name which should be used for this Windows Web App. Changing this forces a new Windows Web App to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Windows Web App should exist. Changing this forces a new Windows Web App to be created. | 
| **var.service_plan_id** | string | True | -  |  -  |  The ID of the Service Plan that this Windows App Service will be created in. | 
| **var.site_config** | block | True | -  |  -  |  A `site_config` block. | 
| **var.app_settings** | string | False | -  |  -  |  A map of key-value pairs of App Settings. | 
| **var.auth_settings** | block | False | -  |  -  |  An `auth_settings` block. | 
| **var.auth_settings_v2** | block | False | -  |  -  |  An `auth_settings_v2` block. | 
| **var.backup** | block | False | -  |  -  |  A `backup` block. | 
| **var.client_affinity_enabled** | bool | False | -  |  -  |  Should Client Affinity be enabled? | 
| **var.client_certificate_enabled** | bool | False | -  |  -  |  Should Client Certificates be enabled? | 
| **var.client_certificate_mode** | string | False | `Required`  |  `Required`, `Optional`, `OptionalInteractiveUser`  |  The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_cert_enabled` is `false`. Defaults to `Required`. | 
| **var.client_certificate_exclusion_paths** | string | False | -  |  -  |  Paths to exclude when using client certificates, separated by ; | 
| **var.connection_string** | block | False | -  |  -  |  One or more `connection_string` blocks. | 
| **var.enabled** | bool | False | `True`  |  -  |  Should the Windows Web App be enabled? Defaults to `true`. | 
| **var.ftp_publish_basic_authentication_enabled** | bool | False | `True`  |  -  |  Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`. | 
| **var.https_only** | string | False | -  |  -  |  Should the Windows Web App require HTTPS connections. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Should public network access be enabled for the Web App. Defaults to `true`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.key_vault_reference_identity_id** | string | False | -  |  -  |  The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **var.logs** | block | False | -  |  -  |  A `logs` block. | 
| **var.sticky_settings** | block | False | -  |  -  |  A `sticky_settings` block. | 
| **var.storage_account** | block | False | -  |  -  |  One or more `storage_account` blocks. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Windows Web App. | 
| **var.virtual_network_subnet_id** | string | False | -  |  -  |  The subnet id which will be used by this Web App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration). | 
| **var.webdeploy_publish_basic_authentication_enabled** | bool | False | `True`  |  -  |  Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to`true`. | 
| **var.zip_deploy_file** | string | False | -  |  -  |  The local path and filename of the Zip packaged application to deploy to this Windows Web App. | 

### `site_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `always_on` | bool | No | True | If this Windows Web App is Always On enabled. Defaults to 'true'. |
| `api_definition_url` | string | No | - | The URL to the API Definition for this Windows Web App. |
| `api_management_api_id` | string | No | - | The API Management API ID this Windows Web App Slot is associated with. |
| `app_command_line` | string | No | - | The App command line to launch. |
| `application_stack` | block | No | - | A 'application_stack' block. |
| `auto_heal_enabled` | bool | No | - | Should Auto heal rules be enabled. Required with 'auto_heal_setting'. |
| `auto_heal_setting` | block | No | - | A 'auto_heal_setting' block. Required with 'auto_heal'. |
| `container_registry_managed_identity_client_id` | string | No | - | The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry. |
| `container_registry_use_managed_identity` | string | No | - | Should connections for Azure Container Registry use Managed Identity. |
| `cors` | block | No | - | A 'cors' block. |
| `default_documents` | string | No | - | Specifies a list of Default Documents for the Windows Web App. |
| `ftps_state` | string | No | Disabled | The State of FTP / FTPS service. Possible values include: 'AllAllowed', 'FtpsOnly', 'Disabled'. Defaults to 'Disabled'. |
| `health_check_path` | string | No | - | The path to the Health Check. |
| `health_check_eviction_time_in_min` | string | No | - | The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between '2' and '10'. Only valid in conjunction with 'health_check_path'. |
| `http2_enabled` | bool | No | - | Should the HTTP2 be enabled? |
| `ip_restriction` | list | No | - | One or more 'ip_restriction' blocks. |
| `load_balancing_mode` | string | No | LeastRequests | The Site load balancing. Possible values include: 'WeightedRoundRobin', 'LeastRequests', 'LeastResponseTime', 'WeightedTotalTraffic', 'RequestHash', 'PerSiteRoundRobin'. Defaults to 'LeastRequests' if omitted. |
| `local_mysql_enabled` | bool | No | False | Use Local MySQL. Defaults to 'false'. |
| `managed_pipeline_mode` | string | No | Integrated | Managed pipeline mode. Possible values include: 'Integrated', 'Classic'. Defaults to 'Integrated'. |
| `minimum_tls_version` | string | No | 1.2 | The configures the minimum version of TLS required for SSL requests. Possible values include: '1.0', '1.1', and '1.2'. Defaults to '1.2'. |
| `remote_debugging_enabled` | bool | No | False | Should Remote Debugging be enabled. Defaults to 'false'. |
| `remote_debugging_version` | string | No | - | The Remote Debugging Version. Possible values include 'VS2017' and 'VS2019' |
| `scm_ip_restriction` | list | No | - | One or more 'scm_ip_restriction' blocks. |
| `scm_minimum_tls_version` | string | No | 1.2 | The configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: '1.0', '1.1', and '1.2'. Defaults to '1.2'. |
| `scm_use_main_ip_restriction` | string | No | - | Should the Windows Web App 'ip_restriction' configuration be used for the SCM also. |
| `use_32_bit_worker` | bool | No | True | Should the Windows Web App use a 32-bit worker. Defaults to 'true'. |
| `virtual_application` | block | No | - | One or more 'virtual_application' blocks. |
| `vnet_route_all_enabled` | bool | No | False | Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to 'false'. |
| `websockets_enabled` | bool | No | False | Should Web Sockets be enabled. Defaults to 'false'. |
| `worker_count` | int | No | - | The number of Workers for this Windows App Service. |

### `auth_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Should the Authentication / Authorization feature is enabled for the Windows Web App be enabled? |
| `active_directory` | block | No | - | An 'active_directory' block. |
| `additional_login_parameters` | string | No | - | Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in. |
| `allowed_external_redirect_urls` | string | No | - | Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Windows Web App. |
| `default_provider` | string | No | - | The default authentication provider to use when multiple providers are configured. Possible values include: 'AzureActiveDirectory', 'Facebook', 'Google', 'MicrosoftAccount', 'Twitter', 'Github' |
| `facebook` | block | No | - | A 'facebook' block. |
| `github` | block | No | - | A 'github' block. |
| `google` | block | No | - | A 'google' block. |
| `issuer` | string | No | - | The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Windows Web App. |
| `microsoft` | block | No | - | A 'microsoft' block. |
| `runtime_version` | string | No | - | The RuntimeVersion of the Authentication / Authorization feature in use for the Windows Web App. |
| `token_refresh_extension_hours` | int | No | 72 | The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72' hours. |
| `token_store_enabled` | bool | No | False | Should the Windows Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to 'false'. |
| `twitter` | block | No | - | A 'twitter' block. |
| `unauthenticated_client_action` | string | No | - | The action to take when an unauthenticated client attempts to access the app. Possible values include: 'RedirectToLoginPage', 'AllowAnonymous'. |

### `auth_settings_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `auth_enabled` | bool | No | False | Should the AuthV2 Settings be enabled. Defaults to 'false'. |
| `runtime_version` | string | No | ~1 | The Runtime Version of the Authentication and Authorisation feature of this App. Defaults to '~1'. |
| `config_file_path` | string | No | - | The path to the App Auth settings. |
| `require_authentication` | string | No | - | Should the authentication flow be used for all requests. |
| `unauthenticated_action` | string | No | RedirectToLoginPage | The action to take for requests made without authentication. Possible values include 'RedirectToLoginPage', 'AllowAnonymous', 'Return401', and 'Return403'. Defaults to 'RedirectToLoginPage'. |
| `default_provider` | string | No | - | The Default Authentication Provider to use when the 'unauthenticated_action' is set to 'RedirectToLoginPage'. Possible values include: 'apple', 'azureactivedirectory', 'facebook', 'github', 'google', 'twitter' and the 'name' of your 'custom_oidc_v2' provider. |
| `excluded_paths` | string | No | - | The paths which should be excluded from the 'unauthenticated_action' when it is set to 'RedirectToLoginPage'. |
| `require_https` | bool | No | True | Should HTTPS be required on connections? Defaults to 'true'. |
| `http_route_api_prefix` | string | No | /.auth | The prefix that should precede all the authentication and authorisation paths. Defaults to '/.auth'. |
| `forward_proxy_convention` | string | No | NoProxy | The convention used to determine the url of the request made. Possible values include 'NoProxy', 'Standard', 'Custom'. Defaults to 'NoProxy'. |
| `forward_proxy_custom_host_header_name` | string | No | - | The name of the custom header containing the host of the request. |
| `forward_proxy_custom_scheme_header_name` | string | No | - | The name of the custom header containing the scheme of the request. |
| `apple_v2` | block | No | - | An 'apple_v2' block. |
| `active_directory_v2` | block | No | - | An 'active_directory_v2' block. |
| `azure_static_web_app_v2` | block | No | - | An 'azure_static_web_app_v2' block. |
| `custom_oidc_v2` | block | No | - | Zero or more 'custom_oidc_v2' blocks. |
| `facebook_v2` | block | No | - | A 'facebook_v2' block. |
| `github_v2` | block | No | - | A 'github_v2' block. |
| `google_v2` | block | No | - | A 'google_v2' block. |
| `microsoft_v2` | block | No | - | A 'microsoft_v2' block. |
| `twitter_v2` | block | No | - | A 'twitter_v2' block. |
| `login` | block | Yes | - | A 'login' block. |

### `backup` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `schedule` | block | Yes | - | A 'schedule' block. |
| `storage_account_url` | string | Yes | - | The SAS URL to the container. |
| `enabled` | bool | No | True | Should this backup job be enabled? Defaults to 'true'. |

### `connection_string` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Type of database. Possible values include: 'APIHub', 'Custom', 'DocDb', 'EventHub', 'MySQL', 'NotificationHub', 'PostgreSQL', 'RedisCache', 'ServiceBus', 'SQLAzure', and 'SQLServer'. |
| `value` | string | Yes | - | The connection string value. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Windows Web App. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Windows Web App. |

### `logs` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `application_logs` | block | No | - | A 'application_logs' block. |
| `detailed_error_messages` | string | No | - | Should detailed error messages be enabled. |
| `failed_request_tracing` | string | No | - | Should tracing be enabled for failed requests. |
| `http_logs` | block | No | - | A 'http_logs' block. |

### `sticky_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `app_setting_names` | list | No | - | A list of 'app_setting' names that the Windows Web App will not swap between Slots when a swap operation is triggered. |
| `connection_string_names` | list | No | - | A list of 'connection_string' names that the Windows Web App will not swap between Slots when a swap operation is triggered. |

### `storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `access_key` | string | Yes | - | The Access key for the storage account. |
| `account_name` | string | Yes | - | The Name of the Storage Account. |
| `share_name` | string | Yes | - | The Name of the File Share or Container Name for Blob storage. |
| `type` | string | Yes | - | The Azure Storage Type. Possible values include 'AzureFiles' and 'AzureBlob' |
| `mount_path` | string | No | - | The path at which to mount the storage share. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Windows Web App. | 
| **custom_domain_verification_id** | string | No  | The identifier used by App Service to perform domain ownership verification via DNS TXT record. | 
| **hosting_environment_id** | string | No  | The ID of the App Service Environment used by App Service. | 
| **default_hostname** | string | No  | The default hostname of the Windows Web App. | 
| **identity** | block | No  | An `identity` block. | 
| **kind** | string | No  | The Kind value for this Windows Web App. | 
| **outbound_ip_address_list** | list | No  | A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]` | 
| **outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`. | 
| **possible_outbound_ip_address_list** | list | No  | A list of possible outbound ip address. | 
| **possible_outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`. | 
| **site_credential** | block | No  | A `site_credential` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 
| **name** | string | No  | The Site Credentials Username used for publishing. | 
| **password** | string | No  | The Site Credentials Password used for publishing. | 

Additionally, all variables are provided as outputs.
