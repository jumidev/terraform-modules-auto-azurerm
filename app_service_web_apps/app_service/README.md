# azurerm_app_service

Manages an App Service (within an App Service Plan).!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_linux_web_app`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app) and [`azurerm_windows_web_app`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_web_app) resources instead.-> **Note:** When using Slots - the `app_settings`, `connection_string` and `site_config` blocks on the `azurerm_app_service` resource will be overwritten when promoting a Slot using the `azurerm_app_service_active_slot` resource.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service" 
}

inputs = {
   name = "name of app_service" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   app_service_plan_id = "app_service_plan_id of app_service" 
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
| **var.name** | string | True | -  |  -  |  Specifies the name of the App Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the App Service. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.app_service_plan_id** | string | True | -  |  -  |  The ID of the App Service Plan within which to create this App Service. | 
| **var.app_settings** | string | False | -  |  -  |  A key-value pair of App Settings. | 
| **var.auth_settings** | block | False | -  |  -  |  A `auth_settings` block. | 
| **var.backup** | block | False | -  |  -  |  A `backup` block. | 
| **var.connection_string** | block | False | -  |  -  |  One or more `connection_string` blocks. | 
| **var.client_affinity_enabled** | bool | False | -  |  -  |  Should the App Service send session affinity cookies, which route client requests in the same session to the same instance? | 
| **var.client_cert_enabled** | bool | False | `False`  |  -  |  Does the App Service require client certificates for incoming requests? Defaults to `false`. | 
| **var.client_cert_mode** | string | False | -  |  `Required`, `Optional`, `OptionalInteractiveUser`  |  Mode of client certificates for this App Service. Possible values are `Required`, `Optional` and `OptionalInteractiveUser`. If this parameter is set, `client_cert_enabled` must be set to `true`, otherwise this parameter is ignored. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is the App Service Enabled? Defaults to `true`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.https_only** | bool | False | `False`  |  -  |  Can the App Service only be accessed via HTTPS? Defaults to `false`. | 
| **var.key_vault_reference_identity_id** | string | False | -  |  -  |  The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **var.logs** | block | False | -  |  -  |  A `logs` block. | 
| **var.storage_account** | block | False | -  |  -  |  One or more `storage_account` blocks. | 
| **var.site_config** | block | False | -  |  -  |  A `site_config` block. | 
| **var.source_control** | block | False | -  |  -  |  A `source_control` block. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 

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

### `backup` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | True | Is this Backup enabled? Defaults to 'true'. |
| `storage_account_url` | string | Yes | - | The SAS URL to a Storage Container where Backups should be saved. |
| `schedule` | block | Yes | - | A 'schedule' block. |

### `connection_string` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of the Connection String. Possible values are 'APIHub', 'Custom', 'DocDb', 'EventHub', 'MySQL', 'NotificationHub', 'PostgreSQL', 'RedisCache', 'ServiceBus', 'SQLAzure' and 'SQLServer'. |
| `value` | string | Yes | - | The value for the Connection String. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the identity type of the App Service. Possible values are 'SystemAssigned' (where Azure will generate a Service Principal for you), 'UserAssigned' where you can specify the Service Principal IDs in the 'identity_ids' field, and 'SystemAssigned, UserAssigned' which assigns both a system managed identity as well as the specified user assigned identities. |
| `identity_ids` | string | No | - | Specifies a list of user managed identity ids to be assigned. Required if 'type' is 'UserAssigned'. |

### `logs` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `application_logs` | block | No | - | An 'application_logs' block. |
| `http_logs` | block | No | - | An 'http_logs' block. |
| `detailed_error_messages_enabled` | bool | No | False | Should 'Detailed error messages' be enabled on this App Service? Defaults to 'false'. |
| `failed_request_tracing_enabled` | bool | No | False | Should 'Failed request tracing' be enabled on this App Service? Defaults to 'false'. |

### `storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of storage. Possible values are 'AzureBlob' and 'AzureFiles'. |
| `account_name` | string | Yes | - | The name of the storage account. |
| `share_name` | string | Yes | - | The name of the file share (container name, for Blob storage). |
| `access_key` | string | Yes | - | The access key for the storage account. |
| `mount_path` | string | No | - | The path to mount the storage within the site's runtime environment. |

### `site_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `acr_use_managed_identity_credentials` | string | No | - | Are Managed Identity Credentials used for Azure Container Registry pull |
| `acr_user_managed_identity_client_id` | string | No | - | If using User Managed Identity, the User Managed Identity Client Id |
| `always_on` | bool | No | False | Should the app be loaded at all times? Defaults to 'false'. |
| `app_command_line` | string | No | - | App command line to launch, e.g. '/sbin/myserver -b 0.0.0.0'. |
| `auto_swap_slot_name` | string | No | - | The name of the slot to automatically swap to during deployment |
| `cors` | block | No | - | A 'cors' block. |
| `default_documents` | string | No | - | The ordering of default documents to load, if an address isn't specified. |
| `dotnet_framework_version` | string | No | v4.0 | The version of the .NET framework's CLR used in this App Service. Possible values are 'v2.0' (which will use the latest version of the .NET framework for the .NET CLR v2 - currently '.net 3.5'), 'v4.0' (which corresponds to the latest version of the .NET CLR v4 - which at the time of writing is '.net 4.7.1'), 'v5.0' and 'v6.0'. [For more information on which .NET CLR version to use based on the .NET framework you're targeting - please see this table](https://en.wikipedia.org/wiki/.NET_Framework_version_history#Overview). Defaults to 'v4.0'. |
| `ftps_state` | string | No | - | State of FTP / FTPS service for this App Service. Possible values include: 'AllAllowed', 'FtpsOnly' and 'Disabled'. |
| `health_check_path` | string | No | - | The health check path to be pinged by App Service. [For more information - please see App Service health check announcement](https://azure.github.io/AppService/2020/08/24/healthcheck-on-app-service.html). |
| `number_of_workers` | int | No | - | The scaled number of workers (for per site scaling) of this App Service. Requires that 'per_site_scaling' is enabled on the 'azurerm_app_service_plan'. [For more information - please see Microsoft documentation on high-density hosting](https://docs.microsoft.com/azure/app-service/manage-scale-per-app). |
| `http2_enabled` | bool | No | False | Is HTTP2 Enabled on this App Service? Defaults to 'false'. |
| `ip_restriction` | block | No | - | A list of 'ip_restriction' objects representing IP restrictions as defined below. |
| `scm_use_main_ip_restriction` | bool | No | False | IP security restrictions for scm to use main. Defaults to 'false'. |
| `scm_ip_restriction` | block | No | - | A list of 'scm_ip_restriction' objects representing IP restrictions as defined below. |
| `java_version` | string | No | - | The version of Java to use. If specified 'java_container' and 'java_container_version' must also be specified. Possible values are '1.7', '1.8' and '11' and their specific versions - except for Java 11 (e.g. '1.7.0_80', '1.8.0_181', '11') |
| `java_container` | string | No | - | The Java Container to use. If specified 'java_version' and 'java_container_version' must also be specified. Possible values are 'JAVA', 'JETTY', and 'TOMCAT'. |
| `java_container_version` | string | No | - | The version of the Java Container to use. If specified 'java_version' and 'java_container' must also be specified. |
| `local_mysql_enabled` | bool | No | - | Is 'MySQL In App' Enabled? This runs a local MySQL instance with your app and shares resources from the App Service plan. |
| `linux_fx_version` | string | No | - | Linux App Framework and version for the App Service. Possible options are a Docker container ('DOCKER|<user/image:tag>'), a base-64 encoded Docker Compose file ('COMPOSE|${filebase64('compose.yml')}') or a base-64 encoded Kubernetes Manifest ('KUBE|${filebase64('kubernetes.yml')}'). |
| `windows_fx_version` | string | No | - | The Windows Docker container image ('DOCKER|<user/image:tag>') |
| `managed_pipeline_mode` | string | No | Integrated | The Managed Pipeline Mode. Possible values are 'Integrated' and 'Classic'. Defaults to 'Integrated'. |
| `min_tls_version` | string | No | 1.2 | The minimum supported TLS version for the app service. Possible values are '1.0', '1.1', and '1.2'. Defaults to '1.2' for new app services. |
| `php_version` | string | No | - | The version of PHP to use in this App Service. Possible values are '5.5', '5.6', '7.0', '7.1', '7.2', '7.3' and '7.4'. |
| `python_version` | string | No | - | The version of Python to use in this App Service. Possible values are '2.7' and '3.4'. |
| `remote_debugging_enabled` | bool | No | False | Is Remote Debugging Enabled? Defaults to 'false'. |
| `remote_debugging_version` | string | No | - | Which version of Visual Studio should the Remote Debugger be compatible with? Possible values are 'VS2017' and 'VS2019'. |
| `scm_type` | string | No | None | The type of Source Control enabled for this App Service. Defaults to 'None'. Possible values are: 'BitbucketGit', 'BitbucketHg', 'CodePlexGit', 'CodePlexHg', 'Dropbox', 'ExternalGit', 'ExternalHg', 'GitHub', 'LocalGit', 'None', 'OneDrive', 'Tfs', 'VSO', and 'VSTSRM' |
| `use_32_bit_worker_process` | bool | No | - | Should the App Service run in 32 bit mode, rather than 64 bit mode? |
| `vnet_route_all_enabled` | bool | No | False | Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to 'false'. |
| `websockets_enabled` | bool | No | - | Should WebSockets be enabled? |

### `source_control` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `repo_url` | string | No | - | The URL of the source code repository. |
| `branch` | string | No | - | The branch of the remote repository to use. Defaults to 'master'. |
| `manual_integration` | bool | No | False | Limits to manual integration. Defaults to 'false' if not specified. |
| `rollback_enabled` | bool | No | False | Enable roll-back for the repository. Defaults to 'false' if not specified. |
| `use_mercurial` | bool | No | - | Use Mercurial if 'true', otherwise uses Git. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service. | 
| **custom_domain_verification_id** | string | No  | An identifier used by App Service to perform domain ownership verification via DNS TXT record. | 
| **default_site_hostname** | string | No  | The Default Hostname associated with the App Service - such as `mysite.azurewebsites.net` | 
| **outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12` | 
| **outbound_ip_address_list** | list | No  | A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]` | 
| **possible_outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`. | 
| **possible_outbound_ip_address_list** | list | No  | A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12", "52.143.43.17"]` - not all of which are necessarily in use. Superset of `outbound_ip_address_list`. | 
| **source_control** | block | No  | A `source_control` block, which contains the Source Control information when `scm_type` is set to `LocalGit`. | 
| **site_credential** | block | No  | A `site_credential` block, which contains the site-level credentials used to publish to this App Service. | 
| **identity** | block | No  | An `identity` block, which contains the Managed Service Identity information for this App Service. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service. | 
| **username** | string | No  | The username which can be used to publish to this App Service | 
| **password** | string | No  | The password associated with the username, which can be used to publish to this App Service. | 
| **repo_url** | string | No  | URL of the Git repository for this App Service. | 
| **branch** | string | No  | Branch name of the Git repository for this App Service. | 

Additionally, all variables are provided as outputs.
