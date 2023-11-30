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
| **var.auth_settings** | block | False | -  |  -  |  A `auth_settings` block. | | `auth_settings` block structure: || 
|   enabled (bool): (REQUIRED) Is Authentication enabled? ||
|   active_directory (block): A 'active_directory' block. ||
|   additional_login_params (string): Login parameters to send to the OpenID Connect authorization endpoint when a user logs in. Each parameter must be in the form 'key=value'. ||
|   allowed_external_redirect_urls (string): External URLs that can be redirected to as part of logging in or logging out of the app. ||
|   default_provider (string): The default provider to use when multiple providers have been set up. Possible values are 'AzureActiveDirectory', 'Facebook', 'Google', 'MicrosoftAccount' and 'Twitter'. ||
|   facebook (block): A 'facebook' block. ||
|   google (block): A 'google' block. ||
|   issuer (string): Issuer URI. When using Azure Active Directory, this value is the URI of the directory tenant, e.g. <https://sts.windows.net/{tenant-guid}/>. ||
|   microsoft (block): A 'microsoft' block. ||
|   runtime_version (string): The runtime version of the Authentication/Authorization module. ||
|   token_refresh_extension_hours (int): The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72'. ||
|   token_store_enabled (bool): If enabled the module will durably store platform-specific security tokens that are obtained during login flows. Defaults to 'false'. ||
|   twitter (block): A 'twitter' block. ||
|   unauthenticated_client_action (string): The action to take when an unauthenticated client attempts to access the app. Possible values are 'AllowAnonymous' and 'RedirectToLoginPage'. ||

| **var.backup** | block | False | -  |  -  |  A `backup` block. | | `backup` block structure: || 
|   name (string): (REQUIRED) Specifies the name for this Backup. ||
|   enabled (bool): Is this Backup enabled? Defaults to 'true'. ||
|   storage_account_url (string): (REQUIRED) The SAS URL to a Storage Container where Backups should be saved. ||
|   schedule (block): (REQUIRED) A 'schedule' block. ||

| **var.connection_string** | block | False | -  |  -  |  One or more `connection_string` blocks. | | `connection_string` block structure: || 
|   name (string): (REQUIRED) The name of the Connection String. ||
|   type (string): (REQUIRED) The type of the Connection String. Possible values are 'APIHub', 'Custom', 'DocDb', 'EventHub', 'MySQL', 'NotificationHub', 'PostgreSQL', 'RedisCache', 'ServiceBus', 'SQLAzure' and 'SQLServer'. ||
|   value (string): (REQUIRED) The value for the Connection String. ||

| **var.client_affinity_enabled** | bool | False | -  |  -  |  Should the App Service send session affinity cookies, which route client requests in the same session to the same instance? | 
| **var.client_cert_enabled** | bool | False | `False`  |  -  |  Does the App Service require client certificates for incoming requests? Defaults to `false`. | 
| **var.client_cert_mode** | string | False | -  |  `Required`, `Optional`, `OptionalInteractiveUser`  |  Mode of client certificates for this App Service. Possible values are `Required`, `Optional` and `OptionalInteractiveUser`. If this parameter is set, `client_cert_enabled` must be set to `true`, otherwise this parameter is ignored. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is the App Service Enabled? Defaults to `true`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | | `identity` block structure: || 
|   type (string): (REQUIRED) Specifies the identity type of the App Service. Possible values are 'SystemAssigned' (where Azure will generate a Service Principal for you), 'UserAssigned' where you can specify the Service Principal IDs in the 'identity_ids' field, and 'SystemAssigned, UserAssigned' which assigns both a system managed identity as well as the specified user assigned identities. ||
|   identity_ids (string): Specifies a list of user managed identity ids to be assigned. Required if 'type' is 'UserAssigned'. ||

| **var.https_only** | bool | False | `False`  |  -  |  Can the App Service only be accessed via HTTPS? Defaults to `false`. | 
| **var.key_vault_reference_identity_id** | string | False | -  |  -  |  The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **var.logs** | block | False | -  |  -  |  A `logs` block. | | `logs` block structure: || 
|   application_logs (block): An 'application_logs' block. ||
|   http_logs (block): An 'http_logs' block. ||
|   detailed_error_messages_enabled (bool): Should 'Detailed error messages' be enabled on this App Service? Defaults to 'false'. ||
|   failed_request_tracing_enabled (bool): Should 'Failed request tracing' be enabled on this App Service? Defaults to 'false'. ||

| **var.storage_account** | block | False | -  |  -  |  One or more `storage_account` blocks. | | `storage_account` block structure: || 
|   name (string): (REQUIRED) The name of the storage account identifier. ||
|   type (string): (REQUIRED) The type of storage. Possible values are 'AzureBlob' and 'AzureFiles'. ||
|   account_name (string): (REQUIRED) The name of the storage account. ||
|   share_name (string): (REQUIRED) The name of the file share (container name, for Blob storage). ||
|   access_key (string): (REQUIRED) The access key for the storage account. ||
|   mount_path (string): The path to mount the storage within the site's runtime environment. ||

| **var.site_config** | block | False | -  |  -  |  A `site_config` block. | | `site_config` block structure: || 
|   acr_use_managed_identity_credentials (string): Are Managed Identity Credentials used for Azure Container Registry pull ||
|   acr_user_managed_identity_client_id (string): If using User Managed Identity, the User Managed Identity Client Id ||
|   always_on (bool): Should the app be loaded at all times? Defaults to 'false'. ||
|   app_command_line (string): App command line to launch, e.g. '/sbin/myserver -b 0.0.0.0'. ||
|   auto_swap_slot_name (string): The name of the slot to automatically swap to during deployment ||
|   cors (block): A 'cors' block. ||
|   default_documents (string): The ordering of default documents to load, if an address isn't specified. ||
|   dotnet_framework_version (string): The version of the .NET framework's CLR used in this App Service. Possible values are 'v2.0' (which will use the latest version of the .NET framework for the .NET CLR v2 - currently '.net 3.5'), 'v4.0' (which corresponds to the latest version of the .NET CLR v4 - which at the time of writing is '.net 4.7.1'), 'v5.0' and 'v6.0'. [For more information on which .NET CLR version to use based on the .NET framework you're targeting - please see this table](https://en.wikipedia.org/wiki/.NET_Framework_version_history#Overview). Defaults to 'v4.0'. ||
|   ftps_state (string): State of FTP / FTPS service for this App Service. Possible values include: 'AllAllowed', 'FtpsOnly' and 'Disabled'. ||
|   health_check_path (string): The health check path to be pinged by App Service. [For more information - please see App Service health check announcement](https://azure.github.io/AppService/2020/08/24/healthcheck-on-app-service.html). ||
|   number_of_workers (int): The scaled number of workers (for per site scaling) of this App Service. Requires that 'per_site_scaling' is enabled on the 'azurerm_app_service_plan'. [For more information - please see Microsoft documentation on high-density hosting](https://docs.microsoft.com/azure/app-service/manage-scale-per-app). ||
|   http2_enabled (bool): Is HTTP2 Enabled on this App Service? Defaults to 'false'. ||
|   ip_restriction (block): A list of 'ip_restriction' objects representing IP restrictions as defined below. ||
|   scm_use_main_ip_restriction (bool): IP security restrictions for scm to use main. Defaults to 'false'. ||
|   scm_ip_restriction (block): A list of 'scm_ip_restriction' objects representing IP restrictions as defined below. ||
|   java_version (string): The version of Java to use. If specified 'java_container' and 'java_container_version' must also be specified. Possible values are '1.7', '1.8' and '11' and their specific versions - except for Java 11 (e.g. '1.7.0_80', '1.8.0_181', '11') ||
|   java_container (string): The Java Container to use. If specified 'java_version' and 'java_container_version' must also be specified. Possible values are 'JAVA', 'JETTY', and 'TOMCAT'. ||
|   java_container_version (string): The version of the Java Container to use. If specified 'java_version' and 'java_container' must also be specified. ||
|   local_mysql_enabled (bool): Is 'MySQL In App' Enabled? This runs a local MySQL instance with your app and shares resources from the App Service plan. ||
|   linux_fx_version (string): Linux App Framework and version for the App Service. Possible options are a Docker container ('DOCKER|<user/image:tag>'), a base-64 encoded Docker Compose file ('COMPOSE|${filebase64('compose.yml')}') or a base-64 encoded Kubernetes Manifest ('KUBE|${filebase64('kubernetes.yml')}'). ||
|   windows_fx_version (string): The Windows Docker container image ('DOCKER|<user/image:tag>') ||
|   managed_pipeline_mode (string): The Managed Pipeline Mode. Possible values are 'Integrated' and 'Classic'. Defaults to 'Integrated'. ||
|   min_tls_version (string): The minimum supported TLS version for the app service. Possible values are '1.0', '1.1', and '1.2'. Defaults to '1.2' for new app services. ||
|   php_version (string): The version of PHP to use in this App Service. Possible values are '5.5', '5.6', '7.0', '7.1', '7.2', '7.3' and '7.4'. ||
|   python_version (string): The version of Python to use in this App Service. Possible values are '2.7' and '3.4'. ||
|   remote_debugging_enabled (bool): Is Remote Debugging Enabled? Defaults to 'false'. ||
|   remote_debugging_version (string): Which version of Visual Studio should the Remote Debugger be compatible with? Possible values are 'VS2017' and 'VS2019'. ||
|   scm_type (string): The type of Source Control enabled for this App Service. Defaults to 'None'. Possible values are: 'BitbucketGit', 'BitbucketHg', 'CodePlexGit', 'CodePlexHg', 'Dropbox', 'ExternalGit', 'ExternalHg', 'GitHub', 'LocalGit', 'None', 'OneDrive', 'Tfs', 'VSO', and 'VSTSRM' ||
|   use_32_bit_worker_process (bool): Should the App Service run in 32 bit mode, rather than 64 bit mode? ||
|   vnet_route_all_enabled (bool): Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to 'false'. ||
|   websockets_enabled (bool): Should WebSockets be enabled? ||

| **var.source_control** | block | False | -  |  -  |  A `source_control` block. | | `source_control` block structure: || 
|   repo_url (string): The URL of the source code repository. ||
|   branch (string): The branch of the remote repository to use. Defaults to 'master'. ||
|   manual_integration (bool): Limits to manual integration. Defaults to 'false' if not specified. ||
|   rollback_enabled (bool): Enable roll-back for the repository. Defaults to 'false' if not specified. ||
|   use_mercurial (bool): Use Mercurial if 'true', otherwise uses Git. ||

| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



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
