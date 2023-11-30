# azurerm_function_app

Manages a Function App.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_linux_function_app`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_function_app) and [`azurerm_windows_function_app`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_function_app) resources instead.~> **Note:** To connect an Azure Function App and a subnet within the same region `azurerm_app_service_virtual_network_swift_connection` can be used.For an example, check the `azurerm_app_service_virtual_network_swift_connection` documentation.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/function_app" 
}

inputs = {
   name = "name of function_app" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   app_service_plan_id = "app_service_plan_id of function_app" 
   storage_account_name = "storage_account_name of function_app" 
   storage_account_access_key = "storage_account_access_key of function_app" 
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
| **var.name** | string |  Specifies the name of the Function App. Changing this forces a new resource to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/azure/azure-resource-manager/management/resource-name-rules#microsoftweb). | 
| **var.resource_group_name** | string |  The name of the resource group in which to create the Function App. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.app_service_plan_id** | string |  The ID of the App Service Plan within which to create this Function App. | 
| **var.storage_account_name** | string |  The backend storage account name which will be used by this Function App (such as the dashboard, logs). Changing this forces a new resource to be created. | 
| **var.storage_account_access_key** | string |  The access key which will be used to access the backend storage account for the Function App. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.app_settings** | string |  -  |  -  |  A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values. | 
| **var.auth_settings** | [block](#auth_settings-block-structure) |  -  |  -  |  A `auth_settings` block. | 
| **var.connection_string** | [block](#connection_string-block-structure) |  -  |  -  |  An `connection_string` block. | 
| **var.client_cert_mode** | string |  -  |  `Required`, `Optional`  |  The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required` and `Optional`. | 
| **var.daily_memory_time_quota** | string |  -  |  -  |  The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. | 
| **var.enabled** | bool |  `True`  |  -  |  Is the Function App enabled? Defaults to `true`. | 
| **var.enable_builtin_logging** | bool |  `True`  |  -  |  Should the built-in logging of this Function App be enabled? Defaults to `true`. | 
| **var.https_only** | bool |  `False`  |  -  |  Can the Function App only be accessed via HTTPS? Defaults to `false`. | 
| **var.identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **var.key_vault_reference_identity_id** | string |  -  |  -  |  The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information. | 
| **var.os_type** | string |  ``  |  `linux`, ``  |  A string indicating the Operating System type for this function app. Possible values are `linux` and ``(empty string). Changing this forces a new resource to be created. Defaults to `""`. | 
| **var.site_config** | [block](#site_config-block-structure) |  -  |  -  |  A `site_config` object as defined below. | 
| **var.source_control** | [block](#source_control-block-structure) |  -  |  -  |  A `source_control` block, as defined below. | 
| **var.version** | string |  `~1`  |  -  |  The runtime version associated with the Function App. Defaults to `~1`. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `scm_ip_restriction` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_address` | string | No | - | The IP Address used for this IP Restriction in CIDR notation. |
| `service_tag` | string | No | - | The Service Tag used for this IP Restriction. |
| `virtual_network_subnet_id` | string | No | - | The Virtual Network Subnet ID used for this IP Restriction. |
| `priority` | string | No | - | The priority for this IP Restriction. Restrictions are enforced in priority order. By default, priority is set to 65000 if not specified. |
| `action` | string | No | Allow | Allow or Deny access for this IP range. Defaults to 'Allow'. |
| `headers` | string | No | - | The 'headers' block for this specific 'scm_ip_restriction' as defined below. |

### `ip_restriction` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_address` | string | No | - | The IP Address used for this IP Restriction in CIDR notation. |
| `service_tag` | string | No | - | The Service Tag used for this IP Restriction. |
| `virtual_network_subnet_id` | string | No | - | The Virtual Network Subnet ID used for this IP Restriction. |
| `priority` | string | No | - | The priority for this IP Restriction. Restrictions are enforced in priority order. By default, the priority is set to 65000 if not specified. |
| `action` | string | No | Allow | Does this restriction 'Allow' or 'Deny' access for this IP range. Defaults to 'Allow'. |
| `headers` | string | No | - | The 'headers' block for this specific 'ip_restriction' as defined below. |

### `microsoft` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OAuth 2.0 client ID that was created for the app used for authentication. |
| `client_secret` | string | Yes | - | The OAuth 2.0 client secret that was created for the app used for authentication. |
| `oauth_scopes` | string | No | - | The OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. <https://msdn.microsoft.com/en-us/library/dn631845.aspx> |

### `connection_string` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of the Connection String. Possible values are 'APIHub', 'Custom', 'DocDb', 'EventHub', 'MySQL', 'NotificationHub', 'PostgreSQL', 'RedisCache', 'ServiceBus', 'SQLAzure' and 'SQLServer'. |
| `value` | string | Yes | - | The value for the Connection String. |

### `cors` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_origins` | list | Yes | - | A list of origins which should be able to make cross-origin calls. '*' can be used to allow all calls. |
| `support_credentials` | string | No | - | Are credentials supported? |

### `source_control` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `repo_url` | string | No | - | The URL of the source code repository. |
| `branch` | string | No | - | The branch of the remote repository to use. Defaults to 'master'. |
| `manual_integration` | bool | No | False | Limits to manual integration. Defaults to 'false' if not specified. |
| `rollback_enabled` | bool | No | False | Enable roll-back for the repository. Defaults to 'false' if not specified. |
| `use_mercurial` | bool | No | - | Use Mercurial if 'true', otherwise uses Git. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the identity type of the Function App. Possible values are 'SystemAssigned' (where Azure will generate a Service Principal for you), 'UserAssigned' where you can specify the Service Principal IDs in the 'identity_ids' field, and 'SystemAssigned, UserAssigned' which assigns both a system managed identity as well as the specified user assigned identities. |
| `identity_ids` | string | No | - | Specifies a list of user managed identity ids to be assigned. Required if 'type' is 'UserAssigned'. |

### `facebook` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `app_id` | string | Yes | - | The App ID of the Facebook app used for login |
| `app_secret` | string | Yes | - | The App Secret of the Facebook app used for Facebook login. |
| `oauth_scopes` | string | No | - | The OAuth 2.0 scopes that will be requested as part of Facebook login authentication. <https://developers.facebook.com/docs/facebook-login> |

### `twitter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `consumer_key` | string | Yes | - | The OAuth 1.0a consumer key of the Twitter application used for sign-in. |
| `consumer_secret` | string | Yes | - | The OAuth 1.0a consumer secret of the Twitter application used for sign-in. |

### `auth_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Is Authentication enabled? |
| `active_directory` | block | No | - | A 'active_directory' block. |
| `additional_login_params` | string | No | - | Login parameters to send to the OpenID Connect authorization endpoint when a user logs in. Each parameter must be in the form 'key=value'. |
| `allowed_external_redirect_urls` | string | No | - | External URLs that can be redirected to as part of logging in or logging out of the app. |
| `default_provider` | string | No | - | The default provider to use when multiple providers have been set up. Possible values are 'AzureActiveDirectory', 'Facebook', 'Google', 'MicrosoftAccount' and 'Twitter'. |
| `facebook` | block | No | - | A 'facebook' block. |
| `google` | block | No | - | A 'google' block. |
| `issuer` | string | No | - | Issuer URI. When using Azure Active Directory, this value is the URI of the directory tenant, e.g. <https://sts.windows.net/{tenant-guid}/>. |
| `microsoft` | block | No | - | A 'microsoft' block. |
| `runtime_version` | string | No | - | The runtime version of the Authentication/Authorization module. |
| `token_refresh_extension_hours` | int | No | 72 | The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72'. |
| `token_store_enabled` | bool | No | False | If enabled the module will durably store platform-specific security tokens that are obtained during login flows. Defaults to 'false'. |
| `twitter` | block | No | - | A 'twitter' block. |
| `unauthenticated_client_action` | string | No | - | The action to take when an unauthenticated client attempts to access the app. Possible values are 'AllowAnonymous' and 'RedirectToLoginPage'. |

### `google` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OpenID Connect Client ID for the Google web application. |
| `client_secret` | string | Yes | - | The client secret associated with the Google web application. |
| `oauth_scopes` | string | No | - | The OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. <https://developers.google.com/identity/sign-in/web/> |

### `active_directory` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The Client ID of this relying party application. Enables OpenIDConnection authentication with Azure Active Directory. |
| `client_secret` | string | No | - | The Client Secret of this relying party application. If no secret is provided, implicit flow will be used. |
| `allowed_audiences` | string | No | - | Allowed audience values to consider when validating JWTs issued by Azure Active Directory. |

### `site_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `always_on` | bool | No | False | Should the Function App be loaded at all times? Defaults to 'false'. |
| `app_scale_limit` | int | No | - | The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan. |
| `cors` | block | No | - | A 'cors' block. |
| `dotnet_framework_version` | string | No | v4.0 | The version of the .NET framework's CLR used in this function app. Possible values are 'v4.0' (including .NET Core 2.1 and 3.1), 'v5.0' and 'v6.0'. [For more information on which .NET Framework version to use based on the runtime version you're targeting - please see this table](https://docs.microsoft.com/azure/azure-functions/functions-dotnet-class-library#supported-versions). Defaults to 'v4.0'. |
| `elastic_instance_minimum` | int | No | - | The number of minimum instances for this function app. Only affects apps on the Premium plan. |
| `ftps_state` | string | No | AllAllowed | State of FTP / FTPS service for this function app. Possible values include: 'AllAllowed', 'FtpsOnly' and 'Disabled'. Defaults to 'AllAllowed'. |
| `health_check_path` | string | No | - | Path which will be checked for this function app health. |
| `http2_enabled` | bool | No | False | Specifies whether or not the HTTP2 protocol should be enabled. Defaults to 'false'. |
| `ip_restriction` | block | No | - | A list of 'ip_restriction' objects representing IP restrictions as defined below. |
| `java_version` | string | No | - | Java version hosted by the function app in Azure. Possible values are '1.8', '11' & '17' (In-Preview). |
| `linux_fx_version` | string | No | - | Linux App Framework and version for the AppService, e.g. 'DOCKER|(golang:latest)'. |
| `min_tls_version` | string | No | 1.2 | The minimum supported TLS version for the function app. Possible values are '1.0', '1.1', and '1.2'. Defaults to '1.2' for new function apps. |
| `pre_warmed_instance_count` | int | No | - | The number of pre-warmed instances for this function app. Only affects apps on the Premium plan. |
| `runtime_scale_monitoring_enabled` | bool | No | False | Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan. Defaults to 'false'. |
| `scm_ip_restriction` | block | No | - | A list of 'scm_ip_restriction' objects representing IP restrictions as defined below. |
| `scm_type` | string | No | - | The type of Source Control used by the Function App. Valid values include: 'BitBucketGit', 'BitBucketHg', 'CodePlexGit', 'CodePlexHg', 'Dropbox', 'ExternalGit', 'ExternalHg', 'GitHub', 'LocalGit', 'None' (default), 'OneDrive', 'Tfs', 'VSO', and 'VSTSRM'. |
| `scm_use_main_ip_restriction` | bool | No | False | IP security restrictions for scm to use main. Defaults to 'false'. |
| `use_32_bit_worker_process` | bool | No | True | Should the Function App run in 32 bit mode, rather than 64 bit mode? Defaults to 'true'. |
| `vnet_route_all_enabled` | bool | No | False | Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to 'false'. |
| `websockets_enabled` | bool | No | - | Should WebSockets be enabled? |
| `auto_swap_slot_name` | string | No | - | The name of the slot to automatically swap to during deployment |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Function App | 
| **custom_domain_verification_id** | string | No  | An identifier used by App Service to perform domain ownership verification via DNS TXT record. | 
| **default_hostname** | string | No  | The default hostname associated with the Function App - such as `mysite.azurewebsites.net` | 
| **outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12` | 
| **possible_outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`. | 
| **identity** | block | No  | An `identity` block, which contains the Managed Service Identity information for this App Service. | 
| **site_credential** | block | No  | A `site_credential` block, which contains the site-level credentials used to publish to this App Service. | 
| **kind** | string | No  | The Function App kind - such as `functionapp,linux,container` | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service. | 
| **username** | string | No  | The username which can be used to publish to this App Service | 
| **password** | string | No  | The password associated with the username, which can be used to publish to this App Service. | 

Additionally, all variables are provided as outputs.
