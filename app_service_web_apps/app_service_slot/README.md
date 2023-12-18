# azurerm_app_service_slot

Manages an App Service Slot (within an App Service).!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_linux_web_app_slot`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app_slot) and [`azurerm_windows_web_app_slot`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_web_app_slot) resources instead.-> **Note:** When using Slots - the `app_settings`, `connection_string` and `site_config` blocks on the `azurerm_app_service` resource will be overwritten when promoting a Slot using the `azurerm_app_service_active_slot` resource.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "app_service_web_apps/app_service_slot"   
}

inputs = {
   name = "Specifies the name of the App Service Slot component..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # app_service_plan_id → set in tfstate_inputs
   # app_service_name → set in tfstate_inputs
}

tfstate_inputs = {
   app_service_plan_id = "path/to/app_service_plan_component:id"   
   app_service_name = "path/to/app_service_component:name"   
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
| **name** | string |  Specifies the name of the App Service Slot component. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the App Service Slot component. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **app_service_plan_id** | string |  The ID of the App Service Plan within which to create this App Service Slot. Changing this forces a new resource to be created. | 
| **app_service_name** | string |  The name of the App Service within which to create the App Service Slot. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **app_settings** | string |  -  |  A key-value pair of App Settings. | 
| **auth_settings** | [block](#auth_settings-block-structure) |  -  |  A `auth_settings` block. | 
| **connection_string** | [block](#connection_string-block-structure) |  -  |  An `connection_string` block. | 
| **client_affinity_enabled** | bool |  -  |  Should the App Service Slot send session affinity cookies, which route client requests in the same session to the same instance? | 
| **enabled** | bool |  `True`  |  Is the App Service Slot Enabled? Defaults to `true`. | 
| **https_only** | bool |  `False`  |  Can the App Service Slot only be accessed via HTTPS? Defaults to `false`. | 
| **site_config** | [block](#site_config-block-structure) |  -  |  A `site_config` object as defined below. | 
| **storage_account** | [block](#storage_account-block-structure) |  -  |  One or more `storage_account` blocks. | 
| **logs** | [block](#logs-block-structure) |  -  |  A `logs` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **key_vault_reference_identity_id** | string |  -  |  The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `connection_string` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Connection String. |
| `type` | string | Yes | - | The type of the Connection String. Possible values are 'APIHub', 'Custom', 'DocDb', 'EventHub', 'MySQL', 'NotificationHub', 'PostgreSQL', 'RedisCache', 'ServiceBus', 'SQLAzure', and 'SQLServer'. |
| `value` | string | Yes | - | The value for the Connection String. |

### `microsoft` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OAuth 2.0 client ID that was created for the app used for authentication. |
| `client_secret` | string | Yes | - | The OAuth 2.0 client secret that was created for the app used for authentication. |
| `oauth_scopes` | string | No | - | The OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. <https://msdn.microsoft.com/en-us/library/dn631845.aspx> |

### `cors` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_origins` | string | Yes | - | A list of origins which should be able to make cross-origin calls. '*' can be used to allow all calls. |
| `support_credentials` | string | No | - | Are credentials supported? |

### `twitter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `consumer_key` | string | Yes | - | The consumer key of the Twitter app used for login |
| `consumer_secret` | string | Yes | - | The consumer secret of the Twitter app used for login. |

### `active_directory` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The Client ID of this relying party application. Enables OpenIDConnection authentication with Azure Active Directory. |
| `client_secret` | string | No | - | The Client Secret of this relying party application. If no secret is provided, implicit flow will be used. |
| `allowed_audiences` | string | No | - | Allowed audience values to consider when validating JWTs issued by Azure Active Directory. |

### `azure_blob_storage` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `level` | string | Yes | - | The level at which to log. Possible values include 'Error', 'Warning', 'Information', 'Verbose' and 'Off'. **NOTE:** this field is not available for 'http_logs' |
| `sas_url` | string | Yes | - | The URL to the storage container, with a Service SAS token appended. **NOTE:** there is currently no means of generating Service SAS tokens with the 'azurerm' provider. |
| `retention_in_days` | number | Yes | - | The number of days to retain logs for. |

### `logs` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `application_logs` | [block](#application_logs-block-structure) | No | - | An 'application_logs' block. |
| `http_logs` | [block](#http_logs-block-structure) | No | - | An 'http_logs' block. |
| `detailed_error_messages_enabled` | bool | No | False | Should 'Detailed error messages' be enabled on this App Service slot? Defaults to 'false'. |
| `failed_request_tracing_enabled` | bool | No | False | Should 'Failed request tracing' be enabled on this App Service slot? Defaults to 'false'. |

### `ip_restriction` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_address` | string | No | - | The IP Address used for this IP Restriction in CIDR notation. |
| `service_tag` | string | No | - | The Service Tag used for this IP Restriction. |
| `virtual_network_subnet_id` | string | No | - | The Virtual Network Subnet ID used for this IP Restriction. |
| `name` | string | No | - | The name for this IP Restriction. |
| `priority` | string | No | - | The priority for this IP Restriction. Restrictions are enforced in priority order. By default, priority is set to 65000 if not specified. |
| `action` | string | No | Allow | Does this restriction 'Allow' or 'Deny' access for this IP range. Defaults to 'Allow'. |
| `headers` | string | No | - | The 'headers' block for this specific 'ip_restriction' as defined below. The HTTP header filters are evaluated after the rule itself and both conditions must be true for the rule to apply. |

### `application_logs` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `file_system_level` | string | No | Off | The file system log level. Possible values are 'Off', 'Error', 'Warning', 'Information', and 'Verbose'. Defaults to 'Off'. |
| `azure_blob_storage` | [block](#azure_blob_storage-block-structure) | No | - | An 'azure_blob_storage' block. |

### `google` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The OpenID Connect Client ID for the Google web application. |
| `client_secret` | string | Yes | - | The client secret associated with the Google web application. |
| `oauth_scopes` | string | No | - | The OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. <https://developers.google.com/identity/sign-in/web/> |

### `http_logs` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `file_system` | [block](#file_system-block-structure) | No | - | A 'file_system' block. |
| `azure_blob_storage` | [block](#azure_blob_storage-block-structure) | No | - | An 'azure_blob_storage' block. |

### `auth_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Is Authentication enabled? |
| `active_directory` | [block](#active_directory-block-structure) | No | - | A 'active_directory' block. |
| `additional_login_params` | string | No | - | Login parameters to send to the OpenID Connect authorization endpoint when a user logs in. Each parameter must be in the form 'key=value'. |
| `allowed_external_redirect_urls` | string | No | - | External URLs that can be redirected to as part of logging in or logging out of the app. |
| `default_provider` | string | No | - | The default provider to use when multiple providers have been set up. Possible values are 'AzureActiveDirectory', 'Facebook', 'Google', 'MicrosoftAccount' and 'Twitter'. |
| `facebook` | [block](#facebook-block-structure) | No | - | A 'facebook' block. |
| `google` | [block](#google-block-structure) | No | - | A 'google' block. |
| `issuer` | string | No | - | Issuer URI. When using Azure Active Directory, this value is the URI of the directory tenant, e.g. <https://sts.windows.net/{tenant-guid}/>. |
| `microsoft` | [block](#microsoft-block-structure) | No | - | A 'microsoft' block. |
| `runtime_version` | string | No | - | The runtime version of the Authentication/Authorization module. |
| `token_refresh_extension_hours` | string | No | 72 | The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72'. |
| `token_store_enabled` | bool | No | False | If enabled the module will durably store platform-specific security tokens that are obtained during login flows. Defaults to 'false'. |
| `twitter` | [block](#twitter-block-structure) | No | - | A 'twitter' block. |
| `unauthenticated_client_action` | string | No | - | The action to take when an unauthenticated client attempts to access the app. Possible values are 'AllowAnonymous' and 'RedirectToLoginPage'. |

### `file_system` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `retention_in_days` | number | Yes | - | The number of days to retain logs for. |
| `retention_in_mb` | number | Yes | - | The maximum size in megabytes that HTTP log files can use before being removed. |

### `facebook` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `app_id` | string | Yes | - | The App ID of the Facebook app used for login |
| `app_secret` | string | Yes | - | The App Secret of the Facebook app used for Facebook login. |
| `oauth_scopes` | string | No | - | The OAuth 2.0 scopes that will be requested as part of Facebook login authentication. <https://developers.facebook.com/docs/facebook-login> |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the identity type of the App Service. Possible values are 'SystemAssigned' (where Azure will generate a Service Principal for you), 'UserAssigned' where you can specify the Service Principal IDs in the 'identity_ids' field, and 'SystemAssigned, UserAssigned' which assigns both a system managed identity as well as the specified user assigned identities. |
| `identity_ids` | string | No | - | Specifies a list of user managed identity ids to be assigned. Required if 'type' is 'UserAssigned'. |

### `storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the storage account identifier. |
| `type` | string | Yes | - | The type of storage. Possible values are 'AzureBlob' and 'AzureFiles'. |
| `account_name` | string | Yes | - | The name of the storage account. |
| `share_name` | string | Yes | - | The name of the file share (container name, for Blob storage). |
| `access_key` | string | Yes | - | The access key for the storage account. |
| `mount_path` | string | No | - | The path to mount the storage within the site's runtime environment. |

### `scm_ip_restriction` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_address` | string | No | - | The IP Address used for this IP Restriction in CIDR notation. |
| `service_tag` | string | No | - | The Service Tag used for this IP Restriction. |
| `virtual_network_subnet_id` | string | No | - | The Virtual Network Subnet ID used for this IP Restriction. |
| `name` | string | No | - | The name for this IP Restriction. |
| `priority` | string | No | - | The priority for this IP Restriction. Restrictions are enforced in priority order. By default, priority is set to 65000 if not specified. |
| `action` | string | No | Allow | Allow or Deny access for this IP range. Defaults to 'Allow'. |
| `headers` | string | No | - | The 'headers' block for this specific 'scm_ip_restriction' as defined below. |

### `site_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `acr_use_managed_identity_credentials` | string | No | - | Are Managed Identity Credentials used for Azure Container Registry pull |
| `acr_user_managed_identity_client_id` | string | No | - | If using User Managed Identity, the User Managed Identity Client Id |
| `always_on` | bool | No | False | Should the slot be loaded at all times? Defaults to 'false'. |
| `app_command_line` | string | No | - | App command line to launch, e.g. '/sbin/myserver -b 0.0.0.0'. |
| `auto_swap_slot_name` | string | No | - | The name of the slot to automatically swap to during deployment |
| `cors` | [block](#cors-block-structure) | No | - | A 'cors' block. |
| `default_documents` | string | No | - | The ordering of default documents to load, if an address isn't specified. |
| `dotnet_framework_version` | string | No | v4.0 | The version of the .NET framework's CLR used in this App Service Slot. Possible values are 'v2.0' (which will use the latest version of the .NET framework for the .NET CLR v2 - currently '.net 3.5'), 'v4.0' (which corresponds to the latest version of the .NET CLR v4 - which at the time of writing is '.net 4.7.1'), 'v5.0' and 'v6.0'. [For more information on which .NET CLR version to use based on the .NET framework you're targeting - please see this table](https://en.wikipedia.org/wiki/.NET_Framework_version_history#Overview). Defaults to 'v4.0'. |
| `ftps_state` | string | No | - | State of FTP / FTPS service for this App Service Slot. Possible values include: 'AllAllowed', 'FtpsOnly' and 'Disabled'. |
| `health_check_path` | string | No | - | The health check path to be pinged by App Service Slot. [For more information - please see App Service health check announcement](https://azure.github.io/AppService/2020/08/24/healthcheck-on-app-service.html). |
| `number_of_workers` | number | No | - | The scaled number of workers (for per site scaling) of this App Service Slot. Requires that 'per_site_scaling' is enabled on the 'azurerm_app_service_plan'. [For more information - please see Microsoft documentation on high-density hosting](https://docs.microsoft.com/azure/app-service/manage-scale-per-app). |
| `http2_enabled` | bool | No | False | Is HTTP2 Enabled on this App Service? Defaults to 'false'. |
| `ip_restriction` | [block](#ip_restriction-block-structure) | No | - | A list of 'ip_restriction' objects representing IP restrictions as defined below. |
| `scm_use_main_ip_restriction` | bool | No | False | IP security restrictions for scm to use main. Defaults to 'false'. |
| `scm_ip_restriction` | [block](#scm_ip_restriction-block-structure) | No | - | A list of 'scm_ip_restriction' objects representing IP restrictions as defined below. |
| `java_version` | string | No | - | The version of Java to use. If specified 'java_container' and 'java_container_version' must also be specified. Possible values are '1.7', '1.8', and '11' and their specific versions - except for Java 11 (e.g. '1.7.0_80', '1.8.0_181', '11') |
| `java_container` | string | No | - | The Java Container to use. If specified 'java_version' and 'java_container_version' must also be specified. Possible values are 'JAVA', 'JETTY', and 'TOMCAT'. |
| `java_container_version` | string | No | - | The version of the Java Container to use. If specified 'java_version' and 'java_container' must also be specified. |
| `local_mysql_enabled` | bool | No | - | Is 'MySQL In App' Enabled? This runs a local MySQL instance with your app and shares resources from the App Service plan. |
| `linux_fx_version` | string | No | - | Linux App Framework and version for the App Service Slot. Possible options are a Docker container ('DOCKER|<user/image:tag>'), a base-64 encoded Docker Compose file ('COMPOSE|${filebase64('compose.yml')}') or a base-64 encoded Kubernetes Manifest ('KUBE|${filebase64('kubernetes.yml')}'). |
| `windows_fx_version` | string | No | - | The Windows Docker container image ('DOCKER|<user/image:tag>') |
| `managed_pipeline_mode` | string | No | Integrated | The Managed Pipeline Mode. Possible values are 'Integrated' and 'Classic'. Defaults to 'Integrated'. |
| `min_tls_version` | string | No | 1.2 | The minimum supported TLS version for the app service. Possible values are '1.0', '1.1', and '1.2'. Defaults to '1.2' for new app services. |
| `php_version` | string | No | - | The version of PHP to use in this App Service Slot. Possible values are '5.5', '5.6', '7.0', '7.1', '7.2', '7.3', and '7.4'. |
| `python_version` | string | No | - | The version of Python to use in this App Service Slot. Possible values are '2.7' and '3.4'. |
| `remote_debugging_enabled` | bool | No | False | Is Remote Debugging Enabled? Defaults to 'false'. |
| `remote_debugging_version` | string | No | - | Which version of Visual Studio should the Remote Debugger be compatible with? Possible values are 'VS2017' and 'VS2019'. |
| `scm_type` | string | No | None | The type of Source Control enabled for this App Service Slot. Defaults to 'None'. Possible values are: 'BitbucketGit', 'BitbucketHg', 'CodePlexGit', 'CodePlexHg', 'Dropbox', 'ExternalGit', 'ExternalHg', 'GitHub', 'LocalGit', 'None', 'OneDrive', 'Tfs', 'VSO', and 'VSTSRM' |
| `use_32_bit_worker_process` | bool | No | - | Should the App Service Slot run in 32 bit mode, rather than 64 bit mode? |
| `vnet_route_all_enabled` | bool | No | False | Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to 'false'. |
| `websockets_enabled` | bool | No | - | Should WebSockets be enabled? |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Slot. | 
| **default_site_hostname** | string | No  | The Default Hostname associated with the App Service Slot - such as `mysite.azurewebsites.net` | 
| **site_credential** | block | No  | A `site_credential` block, which contains the site-level credentials used to publish to this App Service slot. | 
| **identity** | block | No  | An `identity` block, which contains the Managed Service Identity information for this App Service slot. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service slot. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service slot. | 
| **username** | string | No  | The username which can be used to publish to this App Service | 
| **password** | string | Yes  | The password associated with the username, which can be used to publish to this App Service. | 

Additionally, all variables are provided as outputs.
