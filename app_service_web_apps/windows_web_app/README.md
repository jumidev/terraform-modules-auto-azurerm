# azurerm_windows_web_app

Manages a Windows Web App.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "app_service_web_apps/windows_web_app"   
}

inputs = {
   location = "${location}"   
   name = "The name which should be used for this Windows Web App..."   
   resource_group_name = "${resource_group}"   
   # service_plan_id → set in tfstate_inputs
   site_config = {
      # api_management_api_id → (optional) set in tfstate_inputs
   }
   
}

tfstate_inputs = {
   service_plan_id = "path/to/service_plan_component:id"   
   site_config.api_management_api_id = "path/to/api_management_api_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **location** | string |  The Azure Region where the Windows Web App should exist. Changing this forces a new Windows Web App to be created. | 
| **name** | string |  The name which should be used for this Windows Web App. Changing this forces a new Windows Web App to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Windows Web App should exist. Changing this forces a new Windows Web App to be created. | 
| **service_plan_id** | string |  The ID of the Service Plan that this Windows App Service will be created in. | 
| **site_config** | [block](#site_config-block-structure) |  A `site_config` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **app_settings** | string |  -  |  -  |  A map of key-value pairs of App Settings. | 
| **auth_settings** | [block](#auth_settings-block-structure) |  -  |  -  |  An `auth_settings` block. | 
| **auth_settings_v2** | [block](#auth_settings_v2-block-structure) |  -  |  -  |  An `auth_settings_v2` block. | 
| **backup** | [block](#backup-block-structure) |  -  |  -  |  A `backup` block. | 
| **client_affinity_enabled** | bool |  -  |  -  |  Should Client Affinity be enabled? | 
| **client_certificate_enabled** | bool |  -  |  -  |  Should Client Certificates be enabled? | 
| **client_certificate_mode** | string |  `Required`  |  `Required`, `Optional`, `OptionalInteractiveUser`  |  The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_cert_enabled` is `false`. Defaults to `Required`. | 
| **client_certificate_exclusion_paths** | string |  -  |  -  |  Paths to exclude when using client certificates, separated by ; | 
| **connection_string** | [block](#connection_string-block-structure) |  -  |  -  |  One or more `connection_string` blocks. | 
| **enabled** | bool |  `True`  |  -  |  Should the Windows Web App be enabled? Defaults to `true`. | 
| **ftp_publish_basic_authentication_enabled** | bool |  `True`  |  -  |  Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`. | 
| **https_only** | string |  -  |  -  |  Should the Windows Web App require HTTPS connections. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Should public network access be enabled for the Web App. Defaults to `true`. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **key_vault_reference_identity_id** | string |  -  |  -  |  The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **logs** | [block](#logs-block-structure) |  -  |  -  |  A `logs` block. | 
| **sticky_settings** | [block](#sticky_settings-block-structure) |  -  |  -  |  A `sticky_settings` block. | 
| **storage_account** | [block](#storage_account-block-structure) |  -  |  -  |  One or more `storage_account` blocks. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Windows Web App. | 
| **virtual_network_subnet_id** | string |  -  |  -  |  The subnet id which will be used by this Web App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration). | 
| **webdeploy_publish_basic_authentication_enabled** | bool |  `True`  |  -  |  Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to`true`. | 
| **zip_deploy_file** | string |  -  |  -  |  The local path and filename of the Zip packaged application to deploy to this Windows Web App. | 

### `application_logs` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `azure_blob_storage` | [block](#azure_blob_storage-block-structure) | No | - | An 'azure_blob_storage' block. |
| `file_system_level` | string | Yes | - | Log level. Possible values include: 'Verbose', 'Information', 'Warning', and 'Error'. |

### `virtual_application` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `physical_path` | string | Yes | - | The physical path for the Virtual Application. |
| `preload` | string | Yes | - | Should pre-loading be enabled. |
| `virtual_directory` | [block](#virtual_directory-block-structure) | No | - | One or more 'virtual_directory' blocks. |
| `virtual_path` | string | Yes | - | The Virtual Path for the Virtual Application. |

### `sticky_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `app_setting_names` | list | No | - | A list of 'app_setting' names that the Windows Web App will not swap between Slots when a swap operation is triggered. |
| `connection_string_names` | list | No | - | A list of 'connection_string' names that the Windows Web App will not swap between Slots when a swap operation is triggered. |

### `google` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OpenID Connect Client ID for the Google web application. |
| `client_secret` | string | No | - | The client secret associated with the Google web application. Cannot be specified with 'client_secret_setting_name'. |
| `client_secret_setting_name` | string | No | - | The app setting name that contains the 'client_secret' value used for Google login. Cannot be specified with 'client_secret'. |
| `oauth_scopes` | string | No | - | Specifies a list of OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. If not specified, 'openid', 'profile', and 'email' are used as default scopes. |

### `facebook_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `app_id` | string | Yes | - | The App ID of the Facebook app used for login. |
| `app_secret_setting_name` | string | Yes | - | The app setting name that contains the 'app_secret' value used for Facebook Login. |
| `graph_api_version` | string | No | - | The version of the Facebook API to be used while logging in. |
| `login_scopes` | string | No | - | The list of scopes that should be requested as part of Facebook Login authentication. |

### `requests` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `count` | number | Yes | - | The number of requests in the specified 'interval' to trigger this rule. |
| `interval` | string | Yes | - | The interval in 'hh:mm:ss'. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Windows Web App. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Windows Web App. |

### `file_system` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `retention_in_days` | number | Yes | - | The retention period in days. A values of '0' means no retention. |
| `retention_in_mb` | number | Yes | - | The maximum size in megabytes that log files can use. |

### `action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action_type` | string | Yes | - | Predefined action to be taken to an Auto Heal trigger. Possible values include: 'Recycle', 'LogEvent', and 'CustomAction'. |
| `custom_action` | [block](#custom_action-block-structure) | No | - | A 'custom_action' block. |
| `minimum_process_execution_time` | string | No | - | The minimum amount of time in 'hh:mm:ss' the Windows Web App must have been running before the defined action will be run in the event of a trigger. |

### `cors` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_origins` | string | No | - | Specifies a list of origins that should be allowed to make cross-origin calls. |
| `support_credentials` | bool | No | False | Whether CORS requests with credentials are allowed. Defaults to 'false' |

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `frequency_interval` | string | Yes | - | How often the backup should be executed (e.g. for weekly backup, this should be set to '7' and 'frequency_unit' should be set to 'Day'). |
| `frequency_unit` | string | Yes | - | The unit of time for how often the backup should take place. Possible values include: 'Day', 'Hour' |
| `keep_at_least_one_backup` | bool | No | False | Should the service keep at least one backup, regardless of age of backup. Defaults to 'false'. |
| `retention_period_days` | number | No | 30 | After how many days backups should be deleted. Defaults to '30'. |
| `start_time` | string | No | - | When the schedule should start working in RFC-3339 format. |

### `login` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `logout_endpoint` | string | No | - | The endpoint to which logout requests should be made. |
| `token_store_enabled` | bool | No | False | Should the Token Store configuration Enabled. Defaults to 'false' |
| `token_refresh_extension_time` | string | No | 72 | The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72' hours. |
| `token_store_path` | string | No | - | The directory path in the App Filesystem in which the tokens will be stored. |
| `token_store_sas_setting_name` | string | No | - | The name of the app setting which contains the SAS URL of the blob storage containing the tokens. |
| `preserve_url_fragments_for_logins` | bool | No | False | Should the fragments from the request be preserved after the login request is made. Defaults to 'false'. |
| `allowed_external_redirect_urls` | string | No | - | External URLs that can be redirected to as part of logging in or logging out of the app. This is an advanced setting typically only needed by Windows Store application backends. |
| `cookie_expiration_convention` | string | No | FixedTime | The method by which cookies expire. Possible values include: 'FixedTime', and 'IdentityProviderDerived'. Defaults to 'FixedTime'. |
| `cookie_expiration_time` | string | No | 08:00:00 | The time after the request is made when the session cookie should expire. Defaults to '08:00:00'. |
| `validate_nonce` | bool | No | True | Should the nonce be validated while completing the login flow. Defaults to 'true'. |
| `nonce_expiration_time` | string | No | 00:05:00 | The time after the request is made when the nonce should expire. Defaults to '00:05:00'. |

### `backup` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this Backup. |
| `schedule` | [block](#schedule-block-structure) | Yes | - | A 'schedule' block. |
| `storage_account_url` | string | Yes | - | The SAS URL to the container. |
| `enabled` | bool | No | True | Should this backup job be enabled? Defaults to 'true'. |

### `active_directory_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The ID of the Client to use to authenticate with Azure Active Directory. |
| `tenant_auth_endpoint` | string | Yes | - | The Azure Tenant Endpoint for the Authenticating Tenant. e.g. 'https://login.microsoftonline.com/v2.0/{tenant-guid}/' |
| `client_secret_setting_name` | string | No | - | The App Setting name that contains the client secret of the Client. |
| `client_secret_certificate_thumbprint` | string | No | - | The thumbprint of the certificate used for signing purposes. |
| `jwt_allowed_groups` | list | No | - | A list of Allowed Groups in the JWT Claim. |
| `jwt_allowed_client_applications` | list | No | - | A list of Allowed Client Applications in the JWT Claim. |
| `www_authentication_disabled` | bool | No | False | Should the www-authenticate provider should be omitted from the request? Defaults to 'false'. |
| `allowed_groups` | string | No | - | The list of allowed Group Names for the Default Authorisation Policy. |
| `allowed_identities` | string | No | - | The list of allowed Identities for the Default Authorisation Policy. |
| `allowed_applications` | string | No | - | The list of allowed Applications for the Default Authorisation Policy. |
| `login_parameters` | string | No | - | A map of key-value pairs to send to the Authorisation Endpoint when a user logs in. |
| `allowed_audiences` | string | No | - | Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory. |

### `custom_oidc_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Custom OIDC Authentication Provider. |
| `client_id` | string | Yes | - | The ID of the Client to use to authenticate with the Custom OIDC. |
| `openid_configuration_endpoint` | string | Yes | - | The app setting name that contains the 'client_secret' value used for the Custom OIDC Login. |
| `name_claim_type` | string | No | - | The name of the claim that contains the users name. |
| `scopes` | string | No | - | The list of the scopes that should be requested while authenticating. |
| `client_credential_method` | string | No | - | The Client Credential Method used. |
| `client_secret_setting_name` | string | No | - | The App Setting name that contains the secret for this Custom OIDC Client. This is generated from 'name' above and suffixed with '_PROVIDER_AUTHENTICATION_SECRET'. |
| `authorisation_endpoint` | string | No | - | The endpoint to make the Authorisation Request as supplied by 'openid_configuration_endpoint' response. |
| `token_endpoint` | string | No | - | The endpoint used to request a Token as supplied by 'openid_configuration_endpoint' response. |
| `issuer_endpoint` | string | No | - | The endpoint that issued the Token as supplied by 'openid_configuration_endpoint' response. |
| `certification_uri` | string | No | - | The endpoint that provides the keys necessary to validate the token as supplied by 'openid_configuration_endpoint' response. |

### `auto_heal_setting` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | [block](#action-block-structure) | Yes | - | An 'action' block. |
| `trigger` | [block](#trigger-block-structure) | Yes | - | A 'trigger' block. |

### `logs` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `application_logs` | [block](#application_logs-block-structure) | No | - | A 'application_logs' block. |
| `detailed_error_messages` | string | No | - | Should detailed error messages be enabled. |
| `failed_request_tracing` | string | No | - | Should tracing be enabled for failed requests. |
| `http_logs` | [block](#http_logs-block-structure) | No | - | A 'http_logs' block. |

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
| `apple_v2` | [block](#apple_v2-block-structure) | No | - | An 'apple_v2' block. |
| `active_directory_v2` | [block](#active_directory_v2-block-structure) | No | - | An 'active_directory_v2' block. |
| `azure_static_web_app_v2` | [block](#azure_static_web_app_v2-block-structure) | No | - | An 'azure_static_web_app_v2' block. |
| `custom_oidc_v2` | [block](#custom_oidc_v2-block-structure) | No | - | Zero or more 'custom_oidc_v2' blocks. |
| `facebook_v2` | [block](#facebook_v2-block-structure) | No | - | A 'facebook_v2' block. |
| `github_v2` | [block](#github_v2-block-structure) | No | - | A 'github_v2' block. |
| `google_v2` | [block](#google_v2-block-structure) | No | - | A 'google_v2' block. |
| `microsoft_v2` | [block](#microsoft_v2-block-structure) | No | - | A 'microsoft_v2' block. |
| `twitter_v2` | [block](#twitter_v2-block-structure) | No | - | A 'twitter_v2' block. |
| `login` | [block](#login-block-structure) | Yes | - | A 'login' block. |

### `storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `access_key` | string | Yes | - | The Access key for the storage account. |
| `account_name` | string | Yes | - | The Name of the Storage Account. |
| `name` | string | Yes | - | The name which should be used for this TODO. |
| `share_name` | string | Yes | - | The Name of the File Share or Container Name for Blob storage. |
| `type` | string | Yes | - | The Azure Storage Type. Possible values include 'AzureFiles' and 'AzureBlob' |
| `mount_path` | string | No | - | The path at which to mount the storage share. |

### `site_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `always_on` | bool | No | True | If this Windows Web App is Always On enabled. Defaults to 'true'. |
| `api_definition_url` | string | No | - | The URL to the API Definition for this Windows Web App. |
| `api_management_api_id` | string | No | - | The API Management API ID this Windows Web App Slot is associated with. |
| `app_command_line` | string | No | - | The App command line to launch. |
| `application_stack` | [block](#application_stack-block-structure) | No | - | A 'application_stack' block. |
| `auto_heal_enabled` | bool | No | - | Should Auto heal rules be enabled. Required with 'auto_heal_setting'. |
| `auto_heal_setting` | [block](#auto_heal_setting-block-structure) | No | - | A 'auto_heal_setting' block. Required with 'auto_heal'. |
| `container_registry_managed_identity_client_id` | string | No | - | The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry. |
| `container_registry_use_managed_identity` | string | No | - | Should connections for Azure Container Registry use Managed Identity. |
| `cors` | [block](#cors-block-structure) | No | - | A 'cors' block. |
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
| `virtual_application` | [block](#virtual_application-block-structure) | No | - | One or more 'virtual_application' blocks. |
| `vnet_route_all_enabled` | bool | No | False | Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to 'false'. |
| `websockets_enabled` | bool | No | False | Should Web Sockets be enabled. Defaults to 'false'. |
| `worker_count` | number | No | - | The number of Workers for this Windows App Service. |

### `apple_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OpenID Connect Client ID for the Apple web application. |
| `client_secret_setting_name` | string | Yes | - | The app setting name that contains the 'client_secret' value used for Apple Login. |
| `login_scopes` | list | No | - | A list of Login Scopes provided by this Authentication Provider. |

### `azure_blob_storage` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `level` | string | Yes | - | The level at which to log. Possible values include 'Error', 'Warning', 'Information', 'Verbose' and 'Off'. **NOTE:** this field is not available for 'http_logs' |
| `retention_in_days` | number | Yes | - | The time in days after which to remove blobs. A value of '0' means no retention. |
| `sas_url` | string | Yes | - | SAS url to an Azure blob container with read/write/list/delete permissions. |

### `trigger` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `private_memory_kb` | string | No | - | The amount of Private Memory to be consumed for this rule to trigger. Possible values are between '102400' and '13631488'. |
| `requests` | [block](#requests-block-structure) | No | - | A 'requests' block. |
| `slow_request` | list | No | - | One or more 'slow_request' blocks. |
| `status_code` | list | No | - | One or more 'status_code' blocks. |

### `custom_action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `executable` | string | Yes | - | The executable to run for the 'custom_action'. |
| `parameters` | string | No | - | The parameters to pass to the specified 'executable'. |

### `auth_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Should the Authentication / Authorization feature is enabled for the Windows Web App be enabled? |
| `active_directory` | [block](#active_directory-block-structure) | No | - | An 'active_directory' block. |
| `additional_login_parameters` | string | No | - | Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in. |
| `allowed_external_redirect_urls` | string | No | - | Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Windows Web App. |
| `default_provider` | string | No | - | The default authentication provider to use when multiple providers are configured. Possible values include: 'AzureActiveDirectory', 'Facebook', 'Google', 'MicrosoftAccount', 'Twitter', 'Github' |
| `facebook` | [block](#facebook-block-structure) | No | - | A 'facebook' block. |
| `github` | [block](#github-block-structure) | No | - | A 'github' block. |
| `google` | [block](#google-block-structure) | No | - | A 'google' block. |
| `issuer` | string | No | - | The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Windows Web App. |
| `microsoft` | [block](#microsoft-block-structure) | No | - | A 'microsoft' block. |
| `runtime_version` | string | No | - | The RuntimeVersion of the Authentication / Authorization feature in use for the Windows Web App. |
| `token_refresh_extension_hours` | string | No | 72 | The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72' hours. |
| `token_store_enabled` | bool | No | False | Should the Windows Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to 'false'. |
| `twitter` | [block](#twitter-block-structure) | No | - | A 'twitter' block. |
| `unauthenticated_client_action` | string | No | - | The action to take when an unauthenticated client attempts to access the app. Possible values include: 'RedirectToLoginPage', 'AllowAnonymous'. |

### `github_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The ID of the GitHub app used for login.. |
| `client_secret_setting_name` | string | Yes | - | The app setting name that contains the 'client_secret' value used for GitHub Login. |
| `login_scopes` | string | No | - | The list of OAuth 2.0 scopes that should be requested as part of GitHub Login authentication. |

### `facebook` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `app_id` | string | Yes | - | The App ID of the Facebook app used for login. |
| `app_secret` | string | No | - | The App Secret of the Facebook app used for Facebook login. Cannot be specified with 'app_secret_setting_name'. |
| `app_secret_setting_name` | string | No | - | The app setting name that contains the 'app_secret' value used for Facebook login. Cannot be specified with 'app_secret'. |
| `oauth_scopes` | string | No | - | Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication. |

### `github` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The ID of the GitHub app used for login. |
| `client_secret` | string | No | - | The Client Secret of the GitHub app used for GitHub login. Cannot be specified with 'client_secret_setting_name'. |
| `client_secret_setting_name` | string | No | - | The app setting name that contains the 'client_secret' value used for GitHub login. Cannot be specified with 'client_secret'. |
| `oauth_scopes` | string | No | - | Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub login authentication. |

### `virtual_directory` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `physical_path` | string | No | - | The physical path for the Virtual Application. |
| `virtual_path` | string | No | - | The Virtual Path for the Virtual Application. |

### `google_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OpenID Connect Client ID for the Google web application. |
| `client_secret_setting_name` | string | Yes | - | The app setting name that contains the 'client_secret' value used for Google Login. |
| `allowed_audiences` | string | No | - | Specifies a list of Allowed Audiences that should be requested as part of Google Sign-In authentication. |
| `login_scopes` | string | No | - | The list of OAuth 2.0 scopes that should be requested as part of Google Sign-In authentication. |

### `connection_string` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Connection String. |
| `type` | string | Yes | - | Type of database. Possible values include: 'APIHub', 'Custom', 'DocDb', 'EventHub', 'MySQL', 'NotificationHub', 'PostgreSQL', 'RedisCache', 'ServiceBus', 'SQLAzure', and 'SQLServer'. |
| `value` | string | Yes | - | The connection string value. |

### `microsoft` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OAuth 2.0 client ID that was created for the app used for authentication. |
| `client_secret` | string | No | - | The OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with 'client_secret_setting_name'. |
| `client_secret_setting_name` | string | No | - | The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with 'client_secret'. |
| `oauth_scopes` | string | No | - | Specifies a list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. If not specified, 'wl.basic' is used as the default scope. |

### `twitter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `consumer_key` | string | Yes | - | The OAuth 1.0a consumer key of the Twitter application used for sign-in. |
| `consumer_secret` | string | No | - | The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with 'consumer_secret_setting_name'. |
| `consumer_secret_setting_name` | string | No | - | The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with 'consumer_secret'. |

### `active_directory` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The ID of the Client to use to authenticate with Azure Active Directory. |
| `allowed_audiences` | string | No | - | Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory. |
| `client_secret` | string | No | - | The Client Secret for the Client ID. Cannot be used with 'client_secret_setting_name'. |
| `client_secret_setting_name` | string | No | - | The App Setting name that contains the client secret of the Client. Cannot be used with 'client_secret'. |

### `azure_static_web_app_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The ID of the Client to use to authenticate with Azure Static Web App Authentication. |

### `microsoft_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OAuth 2.0 client ID that was created for the app used for authentication. |
| `client_secret_setting_name` | string | Yes | - | The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. |
| `allowed_audiences` | string | No | - | Specifies a list of Allowed Audiences that will be requested as part of Microsoft Sign-In authentication. |
| `login_scopes` | string | No | - | The list of Login scopes that should be requested as part of Microsoft Account authentication. |

### `http_logs` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `azure_blob_storage` | [block](#azure_blob_storage-block-structure) | No | - | A 'azure_blob_storage_http' block. |
| `file_system` | [block](#file_system-block-structure) | No | - | A 'file_system' block. |

### `application_stack` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `current_stack` | string | No | - | The Application Stack for the Windows Web App. Possible values include 'dotnet', 'dotnetcore', 'node', 'python', 'php', and 'java'. |
| `docker_image_name` | string | No | - | The docker image, including tag, to be used. e.g. 'azure-app-service/windows/parkingpage:latest'. |
| `docker_registry_url` | string | No | - | The URL of the container registry where the 'docker_image_name' is located. e.g. 'https://index.docker.io' or 'https://mcr.microsoft.com'. This value is required with 'docker_image_name'. |
| `docker_registry_username` | string | No | - | The User Name to use for authentication against the registry to pull the image. |
| `docker_registry_password` | string | No | - | The User Name to use for authentication against the registry to pull the image. |
| `docker_container_name` | string | No | - | The name of the container to be used. This value is required with 'docker_container_tag'. |
| `docker_container_tag` | string | No | - | The tag of the container to be used. This value is required with 'docker_container_name'. |
| `dotnet_version` | string | No | - | The version of .NET to use when 'current_stack' is set to 'dotnet'. Possible values include 'v2.0','v3.0', 'v4.0', 'v5.0', 'v6.0', 'v7.0' and 'v8.0'. |
| `dotnet_core_version` | string | No | - | The version of .NET to use when 'current_stack' is set to 'dotnetcore'. Possible values include 'v4.0'. |
| `tomcat_version` | string | No | - | The version of Tomcat the Java App should use. Conflicts with 'java_embedded_server_enabled' |
| `java_embedded_server_enabled` | bool | No | - | Should the Java Embedded Server (Java SE) be used to run the app. |
| `java_version` | string | No | - | The version of Java to use when 'current_stack' is set to 'java'. |
| `node_version` | string | No | - | The version of node to use when 'current_stack' is set to 'node'. Possible values are '~12', '~14', '~16', and '~18'. |
| `php_version` | string | No | - | The version of PHP to use when 'current_stack' is set to 'php'. Possible values are '7.1', '7.4' and 'Off'. |
| `python` | bool | No | False | Specifies whether this is a Python app. Defaults to 'false'. |

### `twitter_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `consumer_key` | string | Yes | - | The OAuth 1.0a consumer key of the Twitter application used for sign-in. |
| `consumer_secret_setting_name` | string | Yes | - | The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. |



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
| **password** | string | Yes  | The Site Credentials Password used for publishing. | 

Additionally, all variables are provided as outputs.
