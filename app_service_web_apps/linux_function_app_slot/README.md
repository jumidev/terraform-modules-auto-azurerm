# azurerm_linux_function_app_slot

Manages a Linux Function App Slot.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/linux_function_app_slot" 
}

inputs = {
   name = "name of linux_function_app_slot" 
   function_app_id = "function_app_id of linux_function_app_slot" 
   site_config = {
      example_site_config = {
         api_management_api_id = "..."   
      }
  
   }
 
}

tfstate_inputs = {
   site_config.example_site_config.api_management_api_id = "path/to/api_management_api_component:id" 
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
| **name** | string |  Specifies the name of the Function App Slot. Changing this forces a new resource to be created. | 
| **function_app_id** | string |  The ID of the Linux Function App this Slot is a member of. Changing this forces a new resource to be created. | 
| **site_config** | [block](#site_config-block-structure) |  a `site_config` block as detailed below. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **app_settings** | string |  -  |  -  |  A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values. | 
| **auth_settings** | [block](#auth_settings-block-structure) |  -  |  -  |  an `auth_settings` block as detailed below. | 
| **auth_settings_v2** | [block](#auth_settings_v2-block-structure) |  -  |  -  |  an `auth_settings_v2` block as detailed below. | 
| **backup** | [block](#backup-block-structure) |  -  |  -  |  a `backup` block as detailed below. | 
| **builtin_logging_enabled** | bool |  `True`  |  -  |  Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`. | 
| **client_certificate_enabled** | bool |  -  |  -  |  Should the Function App Slot use Client Certificates. | 
| **client_certificate_mode** | string |  `Optional`  |  `Required`, `Optional`, `OptionalInteractiveUser`  |  The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`. | 
| **client_certificate_exclusion_paths** | string |  -  |  -  |  Paths to exclude when using client certificates, separated by ; | 
| **connection_string** | [block](#connection_string-block-structure) |  -  |  -  |  a `connection_string` block as detailed below. | 
| **content_share_force_disabled** | bool |  -  |  -  |  Force disable the content share settings. | 
| **daily_memory_time_quota** | string |  `0`  |  -  |  The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`. | 
| **enabled** | bool |  `True`  |  -  |  Is the Linux Function App Slot enabled. Defaults to `true`. | 
| **ftp_publish_basic_authentication_enabled** | bool |  -  |  -  |  Are the default FTP Basic Authentication publishing credentials enabled. | 
| **functions_extension_version** | string |  `~4`  |  -  |  The runtime version associated with the Function App Slot. Defaults to `~4`. | 
| **https_only** | string |  -  |  -  |  Can the Function App Slot only be accessed via HTTPS? | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Should public network access be enabled for the Function App. Defaults to `true`. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block as detailed below. | 
| **key_vault_reference_identity_id** | string |  -  |  -  |  The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **service_plan_id** | string |  -  |  -  |  The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Function App will be used. | 
| **storage_account_access_key** | string |  -  |  -  |  The access key which will be used to access the storage account for the Function App Slot. | 
| **storage_account_name** | string |  -  |  -  |  The backend storage account name which will be used by this Function App Slot. | 
| **storage_account** | [block](#storage_account-block-structure) |  -  |  -  |  One or more `storage_account` blocks. | 
| **storage_uses_managed_identity** | string |  -  |  -  |  Should the Function App Slot use its Managed Identity to access storage. | 
| **storage_key_vault_secret_id** | string |  -  |  -  |  The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Linux Function App. | 
| **virtual_network_subnet_id** | string |  -  |  -  |  The subnet id which will be used by this Function App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration). | 
| **webdeploy_publish_basic_authentication_enabled** | bool |  `True`  |  -  |  Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to`true`. | 

### `site_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `always_on` | bool | No | False | If this Linux Web App is Always On enabled. Defaults to 'false'. |
| `api_definition_url` | string | No | - | The URL of the API definition that describes this Linux Function App. |
| `api_management_api_id` | string | No | - | The ID of the API Management API for this Linux Function App. |
| `app_command_line` | string | No | - | The program and any arguments used to launch this app via the command line. (Example 'node myapp.js'). |
| `app_scale_limit` | int | No | - | The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan. |
| `app_service_logs` | [block](#site_config-block-structure) | No | - | an 'app_service_logs' block as detailed below. |
| `application_insights_connection_string` | string | No | - | The Connection String for linking the Linux Function App to Application Insights. |
| `application_insights_key` | string | No | - | The Instrumentation Key for connecting the Linux Function App to Application Insights. |
| `application_stack` | [block](#site_config-block-structure) | No | - | an 'application_stack' block as detailed below. |
| `auto_swap_slot_name` | string | No | - | The name of the slot to automatically swap with when this slot is successfully deployed. |
| `container_registry_managed_identity_client_id` | string | No | - | The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry. |
| `container_registry_use_managed_identity` | string | No | - | Should connections for Azure Container Registry use Managed Identity. |
| `cors` | [block](#site_config-block-structure) | No | - | a 'cors' block as detailed below. |
| `default_documents` | string | No | - | Specifies a list of Default Documents for the Linux Web App. |
| `detailed_error_logging_enabled` | bool | No | - | Is detailed error logging enabled |
| `elastic_instance_minimum` | int | No | - | The number of minimum instances for this Linux Function App. Only affects apps on Elastic Premium plans. |
| `ftps_state` | string | No | Disabled | State of FTP / FTPS service for this function app. Possible values include: 'AllAllowed', 'FtpsOnly' and 'Disabled'. Defaults to 'Disabled'. |
| `health_check_eviction_time_in_min` | string | No | 0 | The amount of time in minutes that a node is unhealthy before being removed from the load balancer. Possible values are between '2' and '10'. Defaults to '0'. Only valid in conjunction with 'health_check_path'. |
| `health_check_path` | string | No | - | The path to be checked for this function app health. |
| `http2_enabled` | bool | No | False | Specifies if the HTTP2 protocol should be enabled. Defaults to 'false'. |
| `ip_restriction` | [block](#site_config-block-structure) | No | - | an 'ip_restriction' block as detailed below. |
| `linux_fx_version` | string | No | - | The Linux FX Version |
| `load_balancing_mode` | string | No | LeastRequests | The Site load balancing mode. Possible values include: 'WeightedRoundRobin', 'LeastRequests', 'LeastResponseTime', 'WeightedTotalTraffic', 'RequestHash', 'PerSiteRoundRobin'. Defaults to 'LeastRequests' if omitted. |
| `managed_pipeline_mode` | string | No | Integrated | The Managed Pipeline mode. Possible values include: 'Integrated', 'Classic'. Defaults to 'Integrated'. |
| `minimum_tls_version` | string | No | 1.2 | The configures the minimum version of TLS required for SSL requests. Possible values include: '1.0', '1.1', and '1.2'. Defaults to '1.2'. |
| `pre_warmed_instance_count` | int | No | - | The number of pre-warmed instances for this function app. Only affects apps on an Elastic Premium plan. |
| `remote_debugging_enabled` | bool | No | False | Should Remote Debugging be enabled. Defaults to 'false'. |
| `remote_debugging_version` | string | No | - | The Remote Debugging Version. Possible values include 'VS2017', 'VS2019', and 'VS2022' |
| `runtime_scale_monitoring_enabled` | bool | No | - | Should Functions Runtime Scale Monitoring be enabled. |
| `scm_ip_restriction` | [block](#site_config-block-structure) | No | - | a 'scm_ip_restriction' block as detailed below. |
| `scm_minimum_tls_version` | string | No | 1.2 | Configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: '1.0', '1.1', and '1.2'. Defaults to '1.2'. |
| `scm_type` | string | No | - | The SCM Type in use by the Linux Function App. |
| `scm_use_main_ip_restriction` | string | No | - | Should the Linux Function App 'ip_restriction' configuration be used for the SCM also. |
| `use_32_bit_worker` | bool | No | - | Should the Linux Web App use a 32-bit worker. |
| `vnet_route_all_enabled` | bool | No | False | Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to 'false'. |
| `websockets_enabled` | bool | No | False | Should Web Sockets be enabled. Defaults to 'false'. |
| `worker_count` | int | No | - | The number of Workers for this Linux Function App. |

### `docker` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `registry_url` | string | Yes | - | The URL of the docker registry. |
| `image_name` | string | Yes | - | The name of the Docker image to use. |
| `image_tag` | string | Yes | - | The image tag of the image to use. |
| `registry_username` | string | No | - | The username to use for connections to the registry. |
| `registry_password` | string | No | - | The password for the account to use to connect to the registry. |

### `cors` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_origins` | string | No | - | Specifies a list of origins that should be allowed to make cross-origin calls. |
| `support_credentials` | bool | No | False | Are credentials allowed in CORS requests? Defaults to 'false'. |

### `custom_oidc_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
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

### `connection_string` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Type of database. Possible values include: 'APIHub', 'Custom', 'DocDb', 'EventHub', 'MySQL', 'NotificationHub', 'PostgreSQL', 'RedisCache', 'ServiceBus', 'SQLAzure', and 'SQLServer'. |
| `value` | string | Yes | - | The connection string value. |

### `github` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The ID of the GitHub app used for login. |
| `client_secret` | string | No | - | The Client Secret of the GitHub app used for GitHub login. Cannot be specified with 'client_secret_setting_name'. |
| `client_secret_setting_name` | string | No | - | The app setting name that contains the 'client_secret' value used for GitHub login. Cannot be specified with 'client_secret'. |
| `oauth_scopes` | string | No | - | Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub login authentication. |

### `microsoft_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OAuth 2.0 client ID that was created for the app used for authentication. |
| `client_secret_setting_name` | string | Yes | - | The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. |
| `allowed_audiences` | string | No | - | Specifies a list of Allowed Audiences that will be requested as part of Microsoft Sign-In authentication. |
| `login_scopes` | string | No | - | The list of Login scopes that should be requested as part of Microsoft Account authentication. |

### `github_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The ID of the GitHub app used for login.. |
| `client_secret_setting_name` | string | Yes | - | The app setting name that contains the 'client_secret' value used for GitHub Login. |
| `login_scopes` | string | No | - | The list of OAuth 2.0 scopes that should be requested as part of GitHub Login authentication. |

### `microsoft` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OAuth 2.0 client ID that was created for the app used for authentication. |
| `client_secret` | string | No | - | The OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with 'client_secret_setting_name'. |
| `client_secret_setting_name` | string | No | - | The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with 'client_secret'. |
| `oauth_scopes` | string | No | - | Specifies a list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. If not specified, 'wl.basic' is used as the default scope. |

### `active_directory` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The ID of the Client to use to authenticate with Azure Active Directory. |
| `allowed_audiences` | string | No | - | Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory. |
| `client_secret` | string | No | - | The Client Secret for the Client ID. Cannot be used with 'client_secret_setting_name'. |
| `client_secret_setting_name` | string | No | - | The App Setting name that contains the client secret of the Client. Cannot be used with 'client_secret'. |

### `auth_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Should the Authentication / Authorization feature be enabled? |
| `active_directory` | [block](#auth_settings-block-structure) | No | - | an 'active_directory' block as detailed below. |
| `additional_login_parameters` | string | No | - | Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in. |
| `allowed_external_redirect_urls` | string | No | - | Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Windows Web App. |
| `default_provider` | string | No | - | The default authentication provider to use when multiple providers are configured. Possible values include: 'AzureActiveDirectory', 'Facebook', 'Google', 'MicrosoftAccount', 'Twitter', 'Github'. |
| `facebook` | [block](#auth_settings-block-structure) | No | - | a 'facebook' block as detailed below. |
| `github` | [block](#auth_settings-block-structure) | No | - | a 'github' block as detailed below. |
| `google` | [block](#auth_settings-block-structure) | No | - | a 'google' block as detailed below. |
| `issuer` | string | No | - | The OpenID Connect Issuer URI that represents the entity which issues access tokens. |
| `microsoft` | [block](#auth_settings-block-structure) | No | - | a 'microsoft' block as detailed below. |
| `runtime_version` | string | No | - | The RuntimeVersion of the Authentication / Authorization feature in use. |
| `token_refresh_extension_hours` | int | No | 72 | The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72' hours. |
| `token_store_enabled` | bool | No | False | Should the Linux Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to 'false'. |
| `twitter` | [block](#auth_settings-block-structure) | No | - | a 'twitter' block as detailed below. |
| `unauthenticated_client_action` | string | No | - | The action to take when an unauthenticated client attempts to access the app. Possible values include: 'RedirectToLoginPage', 'AllowAnonymous'. |

### `headers` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `x_azure_fdid` | string | No | - | Specifies a list of Azure Front Door IDs. |
| `x_fd_health_probe` | string | No | - | Specifies if a Front Door Health Probe should be expected. The only possible value is '1'. |
| `x_forwarded_for` | string | No | - | Specifies a list of addresses for which matching should be applied. Omitting this value means allow any. |
| `x_forwarded_host` | string | No | - | Specifies a list of Hosts for which matching should be applied. |

### `google_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OpenID Connect Client ID for the Google web application. |
| `client_secret_setting_name` | string | Yes | - | The app setting name that contains the 'client_secret' value used for Google Login. |
| `allowed_audiences` | string | No | - | Specifies a list of Allowed Audiences that should be requested as part of Google Sign-In authentication. |
| `login_scopes` | string | No | - | The list of OAuth 2.0 scopes that should be requested as part of Google Sign-In authentication. |

### `ip_restriction` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | string | No | Allow | The action to take. Possible values are 'Allow' or 'Deny'. Defaults to 'Allow'. |
| `headers` | [block](#ip_restriction-block-structure) | No | - | a 'headers' block as detailed below. |
| `ip_address` | string | No | - | The CIDR notation of the IP or IP Range to match. For example: '10.0.0.0/24' or '192.168.10.1/32' |
| `priority` | string | No | 65000 | The priority value of this 'ip_restriction'. Defaults to '65000'. |
| `service_tag` | string | No | - | The Service Tag used for this IP Restriction. |
| `virtual_network_subnet_id` | string | No | - | The Virtual Network Subnet ID used for this IP Restriction. |

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
| `apple_v2` | [block](#auth_settings_v2-block-structure) | No | - | An 'apple_v2' block. |
| `active_directory_v2` | [block](#auth_settings_v2-block-structure) | No | - | An 'active_directory_v2' block. |
| `azure_static_web_app_v2` | [block](#auth_settings_v2-block-structure) | No | - | An 'azure_static_web_app_v2' block. |
| `custom_oidc_v2` | [block](#auth_settings_v2-block-structure) | No | - | Zero or more 'custom_oidc_v2' blocks. |
| `facebook_v2` | [block](#auth_settings_v2-block-structure) | No | - | A 'facebook_v2' block. |
| `github_v2` | [block](#auth_settings_v2-block-structure) | No | - | A 'github_v2' block. |
| `google_v2` | [block](#auth_settings_v2-block-structure) | No | - | A 'google_v2' block. |
| `microsoft_v2` | [block](#auth_settings_v2-block-structure) | No | - | A 'microsoft_v2' block. |
| `twitter_v2` | [block](#auth_settings_v2-block-structure) | No | - | A 'twitter_v2' block. |
| `login` | [block](#auth_settings_v2-block-structure) | Yes | - | A 'login' block. |

### `twitter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `consumer_key` | string | Yes | - | The OAuth 1.0a consumer key of the Twitter application used for sign-in. |
| `consumer_secret` | string | No | - | The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with 'consumer_secret_setting_name'. |
| `consumer_secret_setting_name` | string | No | - | The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with 'consumer_secret'. |

### `app_service_logs` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disk_quota_mb` | string | No | 35 | The amount of disk space to use for logs. Valid values are between '25' and '100'. Defaults to '35'. |
| `retention_period_days` | string | No | - | The retention period for logs in days. Valid values are between '0' and '99999'.(never delete). |

### `facebook` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `app_id` | string | Yes | - | The App ID of the Facebook app used for login. |
| `app_secret` | string | No | - | The App Secret of the Facebook app used for Facebook login. Cannot be specified with 'app_secret_setting_name'. |
| `app_secret_setting_name` | string | No | - | The app setting name that contains the 'app_secret' value used for Facebook login. Cannot be specified with 'app_secret'. |
| `oauth_scopes` | string | No | - | Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Linux Function App Slot. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Linux Function App Slot. |

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

### `storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `access_key` | string | Yes | - | The Access key for the storage account. |
| `account_name` | string | Yes | - | The Name of the Storage Account. |
| `share_name` | string | Yes | - | The Name of the File Share or Container Name for Blob storage. |
| `type` | string | Yes | - | The Azure Storage Type. Possible values include 'AzureFiles' and 'AzureBlob'. |
| `mount_path` | string | No | - | The path at which to mount the storage share. |

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `frequency_interval` | string | Yes | - | How often the backup should be executed (e.g. for weekly backup, this should be set to '7' and 'frequency_unit' should be set to 'Day'). |
| `frequency_unit` | string | Yes | - | The unit of time for how often the backup should take place. Possible values include: 'Day' and 'Hour'. |
| `keep_at_least_one_backup` | bool | No | False | Should the service keep at least one backup, regardless of age of backup. Defaults to 'false'. |
| `retention_period_days` | int | No | 30 | After how many days backups should be deleted. Defaults to '30'. |
| `start_time` | string | No | - | When the schedule should start working in RFC-3339 format. |
| `last_execution_time` | string | No | - | The time the backup was last attempted. |

### `twitter_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `consumer_key` | string | Yes | - | The OAuth 1.0a consumer key of the Twitter application used for sign-in. |
| `consumer_secret_setting_name` | string | Yes | - | The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. |

### `backup` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `schedule` | [block](#backup-block-structure) | Yes | - | a 'schedule' block as detailed below. |
| `storage_account_url` | string | Yes | - | The SAS URL to the container. |
| `enabled` | bool | No | True | Should this backup job be enabled? Defaults to 'true'. |

### `login` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `logout_endpoint` | string | No | - | The endpoint to which logout requests should be made. |
| `token_store_enabled` | bool | No | False | Should the Token Store configuration Enabled. Defaults to 'false' |
| `token_refresh_extension_time` | int | No | 72 | The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72' hours. |
| `token_store_path` | string | No | - | The directory path in the App Filesystem in which the tokens will be stored. |
| `token_store_sas_setting_name` | string | No | - | The name of the app setting which contains the SAS URL of the blob storage containing the tokens. |
| `preserve_url_fragments_for_logins` | bool | No | False | Should the fragments from the request be preserved after the login request is made. Defaults to 'false'. |
| `allowed_external_redirect_urls` | string | No | - | External URLs that can be redirected to as part of logging in or logging out of the app. This is an advanced setting typically only needed by Windows Store application backends. |
| `cookie_expiration_convention` | string | No | FixedTime | The method by which cookies expire. Possible values include: 'FixedTime', and 'IdentityProviderDerived'. Defaults to 'FixedTime'. |
| `cookie_expiration_time` | string | No | 08:00:00 | The time after the request is made when the session cookie should expire. Defaults to '08:00:00'. |
| `validate_nonce` | bool | No | True | Should the nonce be validated while completing the login flow. Defaults to 'true'. |
| `nonce_expiration_time` | string | No | 00:05:00 | The time after the request is made when the nonce should expire. Defaults to '00:05:00'. |

### `azure_static_web_app_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The ID of the Client to use to authenticate with Azure Static Web App Authentication. |

### `scm_ip_restriction` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | string | No | Allow | The action to take. Possible values are 'Allow' or 'Deny'. Defaults to 'Allow'. |
| `headers` | [block](#scm_ip_restriction-block-structure) | No | - | a 'headers' block as detailed below. |
| `ip_address` | string | No | - | The CIDR notation of the IP or IP Range to match. For example: '10.0.0.0/24' or '192.168.10.1/32' |
| `priority` | string | No | 65000 | The priority value of this 'ip_restriction'. Defaults to '65000'. |
| `service_tag` | string | No | - | The Service Tag used for this IP Restriction. |
| `virtual_network_subnet_id` | string | No | - | The Virtual Network Subnet ID used for this IP Restriction.ENDEXPERIMENT |

### `application_stack` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `docker` | [block](#application_stack-block-structure) | No | - | a 'docker' block as detailed below. |
| `dotnet_version` | string | No | - | The version of .Net. Possible values are '3.1', '6.0', '7.0' and '8.0'. |
| `use_dotnet_isolated_runtime` | bool | No | False | Should the DotNet process use an isolated runtime. Defaults to 'false'. |
| `java_version` | string | No | - | The version of Java to use. Possible values are '8', '11' & '17' (In-Preview). |
| `node_version` | string | No | - | The version of Node to use. Possible values include '12', '14', '16' and '18' |
| `powershell_core_version` | string | No | - | The version of PowerShell Core to use. Possibles values are '7' , and '7.2'. |
| `python_version` | string | No | - | The version of Python to use. Possible values are '3.11', '3.10', '3.9', '3.8' and '3.7'. |
| `use_custom_runtime` | bool | No | - | Should the Linux Function App use a custom runtime? |

### `facebook_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `app_id` | string | Yes | - | The App ID of the Facebook app used for login. |
| `app_secret_setting_name` | string | Yes | - | The app setting name that contains the 'app_secret' value used for Facebook Login. |
| `graph_api_version` | string | No | - | The version of the Facebook API to be used while logging in. |
| `login_scopes` | string | No | - | The list of scopes that should be requested as part of Facebook Login authentication. |

### `apple_v2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OpenID Connect Client ID for the Apple web application. |
| `client_secret_setting_name` | string | Yes | - | The app setting name that contains the 'client_secret' value used for Apple Login. |
| `login_scopes` | list | No | - | A list of Login Scopes provided by this Authentication Provider. |

### `google` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OpenID Connect Client ID for the Google web application. |
| `client_secret` | string | No | - | The client secret associated with the Google web application. Cannot be specified with 'client_secret_setting_name'. |
| `client_secret_setting_name` | string | No | - | The app setting name that contains the 'client_secret' value used for Google login. Cannot be specified with 'client_secret'. |
| `oauth_scopes` | string | No | - | Specifies a list of OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. If not specified, 'openid', 'profile', and 'email' are used as default scopes. |



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
| **password** | string | Yes  | The Site Credentials Password used for publishing. | 

Additionally, all variables are provided as outputs.
