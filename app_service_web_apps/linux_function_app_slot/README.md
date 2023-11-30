# azurerm_linux_function_app_slot

Manages a Linux Function App Slot.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/linux_function_app_slot" 
}

inputs = {
   name = "name of linux_function_app_slot" 
   function_app_id = "function_app_id of linux_function_app_slot" 
   site_config = "site_config of linux_function_app_slot" 
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
| **var.name** | string | True | -  |  -  |  Specifies the name of the Function App Slot. Changing this forces a new resource to be created. | 
| **var.function_app_id** | string | True | -  |  -  |  The ID of the Linux Function App this Slot is a member of. Changing this forces a new resource to be created. | 
| **var.site_config** | block | True | -  |  -  |  a `site_config` block as detailed below. | 
| `site_config` block structure: || 
|   always_on (bool): If this Linux Web App is Always On enabled. Defaults to 'false'. ||
|   api_definition_url (string): The URL of the API definition that describes this Linux Function App. ||
|   api_management_api_id (string): The ID of the API Management API for this Linux Function App. ||
|   app_command_line (string): The program and any arguments used to launch this app via the command line. (Example 'node myapp.js'). ||
|   app_scale_limit (int): The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan. ||
|   app_service_logs (block): an 'app_service_logs' block as detailed below. ||
|   application_insights_connection_string (string): The Connection String for linking the Linux Function App to Application Insights. ||
|   application_insights_key (string): The Instrumentation Key for connecting the Linux Function App to Application Insights. ||
|   application_stack (block): an 'application_stack' block as detailed below. ||
|   auto_swap_slot_name (string): The name of the slot to automatically swap with when this slot is successfully deployed. ||
|   container_registry_managed_identity_client_id (string): The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry. ||
|   container_registry_use_managed_identity (string): Should connections for Azure Container Registry use Managed Identity. ||
|   cors (block): a 'cors' block as detailed below. ||
|   default_documents (string): Specifies a list of Default Documents for the Linux Web App. ||
|   detailed_error_logging_enabled (bool): Is detailed error logging enabled ||
|   elastic_instance_minimum (int): The number of minimum instances for this Linux Function App. Only affects apps on Elastic Premium plans. ||
|   ftps_state (string): State of FTP / FTPS service for this function app. Possible values include: 'AllAllowed', 'FtpsOnly' and 'Disabled'. Defaults to 'Disabled'. ||
|   health_check_eviction_time_in_min (string): The amount of time in minutes that a node is unhealthy before being removed from the load balancer. Possible values are between '2' and '10'. Defaults to '0'. Only valid in conjunction with 'health_check_path'. ||
|   health_check_path (string): The path to be checked for this function app health. ||
|   http2_enabled (bool): Specifies if the HTTP2 protocol should be enabled. Defaults to 'false'. ||
|   ip_restriction (block): an 'ip_restriction' block as detailed below. ||
|   linux_fx_version (string): The Linux FX Version ||
|   load_balancing_mode (string): The Site load balancing mode. Possible values include: 'WeightedRoundRobin', 'LeastRequests', 'LeastResponseTime', 'WeightedTotalTraffic', 'RequestHash', 'PerSiteRoundRobin'. Defaults to 'LeastRequests' if omitted. ||
|   managed_pipeline_mode (string): The Managed Pipeline mode. Possible values include: 'Integrated', 'Classic'. Defaults to 'Integrated'. ||
|   minimum_tls_version (string): The configures the minimum version of TLS required for SSL requests. Possible values include: '1.0', '1.1', and '1.2'. Defaults to '1.2'. ||
|   pre_warmed_instance_count (int): The number of pre-warmed instances for this function app. Only affects apps on an Elastic Premium plan. ||
|   remote_debugging_enabled (bool): Should Remote Debugging be enabled. Defaults to 'false'. ||
|   remote_debugging_version (string): The Remote Debugging Version. Possible values include 'VS2017', 'VS2019', and 'VS2022' ||
|   runtime_scale_monitoring_enabled (bool): Should Functions Runtime Scale Monitoring be enabled. ||
|   scm_ip_restriction (block): a 'scm_ip_restriction' block as detailed below. ||
|   scm_minimum_tls_version (string): Configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: '1.0', '1.1', and '1.2'. Defaults to '1.2'. ||
|   scm_type (string): The SCM Type in use by the Linux Function App. ||
|   scm_use_main_ip_restriction (string): Should the Linux Function App 'ip_restriction' configuration be used for the SCM also. ||
|   use_32_bit_worker (bool): Should the Linux Web App use a 32-bit worker. ||
|   vnet_route_all_enabled (bool): Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to 'false'. ||
|   websockets_enabled (bool): Should Web Sockets be enabled. Defaults to 'false'. ||
|   worker_count (int): The number of Workers for this Linux Function App. ||
| **var.app_settings** | string | False | -  |  -  |  A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values. | 
| **var.auth_settings** | block | False | -  |  -  |  an `auth_settings` block as detailed below. | 
| `auth_settings` block structure: || 
|   enabled (bool): (REQUIRED) Should the Authentication / Authorization feature be enabled? ||
|   active_directory (block): an 'active_directory' block as detailed below. ||
|   additional_login_parameters (string): Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in. ||
|   allowed_external_redirect_urls (string): Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Windows Web App. ||
|   default_provider (string): The default authentication provider to use when multiple providers are configured. Possible values include: 'AzureActiveDirectory', 'Facebook', 'Google', 'MicrosoftAccount', 'Twitter', 'Github'. ||
|   facebook (block): a 'facebook' block as detailed below. ||
|   github (block): a 'github' block as detailed below. ||
|   google (block): a 'google' block as detailed below. ||
|   issuer (string): The OpenID Connect Issuer URI that represents the entity which issues access tokens. ||
|   microsoft (block): a 'microsoft' block as detailed below. ||
|   runtime_version (string): The RuntimeVersion of the Authentication / Authorization feature in use. ||
|   token_refresh_extension_hours (int): The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72' hours. ||
|   token_store_enabled (bool): Should the Linux Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to 'false'. ||
|   twitter (block): a 'twitter' block as detailed below. ||
|   unauthenticated_client_action (string): The action to take when an unauthenticated client attempts to access the app. Possible values include: 'RedirectToLoginPage', 'AllowAnonymous'. ||
| **var.auth_settings_v2** | block | False | -  |  -  |  an `auth_settings_v2` block as detailed below. | 
| `auth_settings_v2` block structure: || 
|   auth_enabled (bool): Should the AuthV2 Settings be enabled. Defaults to 'false'. ||
|   runtime_version (string): The Runtime Version of the Authentication and Authorisation feature of this App. Defaults to '~1'. ||
|   config_file_path (string): The path to the App Auth settings. ||
|   require_authentication (string): Should the authentication flow be used for all requests. ||
|   unauthenticated_action (string): The action to take for requests made without authentication. Possible values include 'RedirectToLoginPage', 'AllowAnonymous', 'Return401', and 'Return403'. Defaults to 'RedirectToLoginPage'. ||
|   default_provider (string): The Default Authentication Provider to use when the 'unauthenticated_action' is set to 'RedirectToLoginPage'. Possible values include: 'apple', 'azureactivedirectory', 'facebook', 'github', 'google', 'twitter' and the 'name' of your 'custom_oidc_v2' provider. ||
|   excluded_paths (string): The paths which should be excluded from the 'unauthenticated_action' when it is set to 'RedirectToLoginPage'. ||
|   require_https (bool): Should HTTPS be required on connections? Defaults to 'true'. ||
|   http_route_api_prefix (string): The prefix that should precede all the authentication and authorisation paths. Defaults to '/.auth'. ||
|   forward_proxy_convention (string): The convention used to determine the url of the request made. Possible values include 'NoProxy', 'Standard', 'Custom'. Defaults to 'NoProxy'. ||
|   forward_proxy_custom_host_header_name (string): The name of the custom header containing the host of the request. ||
|   forward_proxy_custom_scheme_header_name (string): The name of the custom header containing the scheme of the request. ||
|   apple_v2 (block): An 'apple_v2' block. ||
|   active_directory_v2 (block): An 'active_directory_v2' block. ||
|   azure_static_web_app_v2 (block): An 'azure_static_web_app_v2' block. ||
|   custom_oidc_v2 (block): Zero or more 'custom_oidc_v2' blocks. ||
|   facebook_v2 (block): A 'facebook_v2' block. ||
|   github_v2 (block): A 'github_v2' block. ||
|   google_v2 (block): A 'google_v2' block. ||
|   microsoft_v2 (block): A 'microsoft_v2' block. ||
|   twitter_v2 (block): A 'twitter_v2' block. ||
|   login (block): (REQUIRED) A 'login' block. ||
| **var.backup** | block | False | -  |  -  |  a `backup` block as detailed below. | 
| `backup` block structure: || 
|   name (string): (REQUIRED) The name which should be used for this Backup. ||
|   schedule (block): (REQUIRED) a 'schedule' block as detailed below. ||
|   storage_account_url (string): (REQUIRED) The SAS URL to the container. ||
|   enabled (bool): Should this backup job be enabled? Defaults to 'true'. ||
| **var.builtin_logging_enabled** | bool | False | `True`  |  -  |  Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`. | 
| **var.client_certificate_enabled** | bool | False | -  |  -  |  Should the Function App Slot use Client Certificates. | 
| **var.client_certificate_mode** | string | False | `Optional`  |  `Required`, `Optional`, `OptionalInteractiveUser`  |  The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`. | 
| **var.client_certificate_exclusion_paths** | string | False | -  |  -  |  Paths to exclude when using client certificates, separated by ; | 
| **var.connection_string** | block | False | -  |  -  |  a `connection_string` block as detailed below. | 
| `connection_string` block structure: || 
|   name (string): (REQUIRED) The name which should be used for this Connection. ||
|   type (string): (REQUIRED) Type of database. Possible values include: 'APIHub', 'Custom', 'DocDb', 'EventHub', 'MySQL', 'NotificationHub', 'PostgreSQL', 'RedisCache', 'ServiceBus', 'SQLAzure', and 'SQLServer'. ||
|   value (string): (REQUIRED) The connection string value. ||
| **var.content_share_force_disabled** | bool | False | -  |  -  |  Force disable the content share settings. | 
| **var.daily_memory_time_quota** | string | False | `0`  |  -  |  The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is the Linux Function App Slot enabled. Defaults to `true`. | 
| **var.ftp_publish_basic_authentication_enabled** | bool | False | -  |  -  |  Are the default FTP Basic Authentication publishing credentials enabled. | 
| **var.functions_extension_version** | string | False | `~4`  |  -  |  The runtime version associated with the Function App Slot. Defaults to `~4`. | 
| **var.https_only** | string | False | -  |  -  |  Can the Function App Slot only be accessed via HTTPS? | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Should public network access be enabled for the Function App. Defaults to `true`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block as detailed below. | 
| `identity` block structure: || 
|   type (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Linux Function App Slot. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). ||
|   identity_ids (list): A list of User Assigned Managed Identity IDs to be assigned to this Linux Function App Slot. ||
| **var.key_vault_reference_identity_id** | string | False | -  |  -  |  The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **var.service_plan_id** | string | False | -  |  -  |  The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Function App will be used. | 
| **var.storage_account_access_key** | string | False | -  |  -  |  The access key which will be used to access the storage account for the Function App Slot. | 
| **var.storage_account_name** | string | False | -  |  -  |  The backend storage account name which will be used by this Function App Slot. | 
| **var.storage_account** | block | False | -  |  -  |  One or more `storage_account` blocks. | 
| `storage_account` block structure: || 
|   access_key (string): (REQUIRED) The Access key for the storage account. ||
|   account_name (string): (REQUIRED) The Name of the Storage Account. ||
|   name (string): (REQUIRED) The name which should be used for this Storage Account. ||
|   share_name (string): (REQUIRED) The Name of the File Share or Container Name for Blob storage. ||
|   type (string): (REQUIRED) The Azure Storage Type. Possible values include 'AzureFiles' and 'AzureBlob'. ||
|   mount_path (string): The path at which to mount the storage share. ||
| **var.storage_uses_managed_identity** | string | False | -  |  -  |  Should the Function App Slot use its Managed Identity to access storage. | 
| **var.storage_key_vault_secret_id** | string | False | -  |  -  |  The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Linux Function App. | 
| **var.virtual_network_subnet_id** | string | False | -  |  -  |  The subnet id which will be used by this Function App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration). | 
| **var.webdeploy_publish_basic_authentication_enabled** | bool | False | `True`  |  -  |  Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to`true`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Linux Function App Slot | 
| **custom_domain_verification_id** | string | No  | The identifier used by App Service to perform domain ownership verification via DNS TXT record. | 
| **default_hostname** | string | No  | The default hostname of the Linux Function App Slot. | 
| **hosting_environment_id** | string | No  | The ID of the App Service Environment used by Function App Slot. | 
| **identity** | block | No  | An `identity` block. | 
| **kind** | string | No  | The Kind value for this Linux Function App Slot. | 
| **outbound_ip_address_list** | list | No  | A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]` | 
| **outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`. | 
| **possible_outbound_ip_address_list** | list | No  | A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`. | 
| **possible_outbound_ip_addresses** | string | No  | A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`. For example `["52.23.25.3", "52.143.43.12","52.143.43.17"]`. | 
| **site_credential** | block | No  | A `site_credential` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 
| **name** | string | No  | The Site Credentials Username used for publishing. | 
| **password** | string | No  | The Site Credentials Password used for publishing. | 

Additionally, all variables are provided as outputs.
