# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the App Service. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the App Service. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "app_service_plan_id" {
  description = "(REQUIRED) The ID of the App Service Plan within which to create this App Service."
  type        = string

}

# OPTIONAL VARIABLES

variable "app_settings" {
  description = "A key-value pair of App Settings."
  type        = string
  default     = null
}
variable "auth_settings" {
  description = "A 'auth_settings' block."
  type        = map(any)
  default     = null
}
#
# auth_settings block structure          :
#   enabled (bool)                         : (REQUIRED) Is Authentication enabled?
#   active_directory (block)               : A 'active_directory' block.
#   additional_login_params (string)       : Login parameters to send to the OpenID Connect authorization endpoint when a user logs in. Each parameter must be in the form 'key=value'.
#   allowed_external_redirect_urls (string): External URLs that can be redirected to as part of logging in or logging out of the app.
#   default_provider (string)              : The default provider to use when multiple providers have been set up. Possible values are 'AzureActiveDirectory', 'Facebook', 'Google', 'MicrosoftAccount' and 'Twitter'.
#   facebook (block)                       : A 'facebook' block.
#   google (block)                         : A 'google' block.
#   issuer (string)                        : Issuer URI. When using Azure Active Directory, this value is the URI of the directory tenant, e.g. <https://sts.windows.net/{tenant-guid}/>.
#   microsoft (block)                      : A 'microsoft' block.
#   runtime_version (string)               : The runtime version of the Authentication/Authorization module.
#   token_refresh_extension_hours (int)    : The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72'.
#   token_store_enabled (bool)             : If enabled the module will durably store platform-specific security tokens that are obtained during login flows. Defaults to 'false'.
#   twitter (block)                        : A 'twitter' block.
#   unauthenticated_client_action (string) : The action to take when an unauthenticated client attempts to access the app. Possible values are 'AllowAnonymous' and 'RedirectToLoginPage'.
#
# google block structure:
#   client_id (string)    : (REQUIRED) The OpenID Connect Client ID for the Google web application.
#   client_secret (string): (REQUIRED) The client secret associated with the Google web application.
#   oauth_scopes (string) : The OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. <https://developers.google.com/identity/sign-in/web/>
#
# microsoft block structure:
#   client_id (string)       : (REQUIRED) The OAuth 2.0 client ID that was created for the app used for authentication.
#   client_secret (string)   : (REQUIRED) The OAuth 2.0 client secret that was created for the app used for authentication.
#   oauth_scopes (string)    : The OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. <https://msdn.microsoft.com/en-us/library/dn631845.aspx>
#
# facebook block structure:
#   app_id (string)         : (REQUIRED) The App ID of the Facebook app used for login
#   app_secret (string)     : (REQUIRED) The App Secret of the Facebook app used for Facebook login.
#   oauth_scopes (string)   : The OAuth 2.0 scopes that will be requested as part of Facebook login authentication. <https://developers.facebook.com/docs/facebook-login>
#
# twitter block structure :
#   consumer_key (string)   : (REQUIRED) The consumer key of the Twitter app used for login
#   consumer_secret (string): (REQUIRED) The consumer secret of the Twitter app used for login.
#
# active_directory block structure:
#   client_id (string)              : (REQUIRED) The Client ID of this relying party application. Enables OpenIDConnection authentication with Azure Active Directory.
#   client_secret (string)          : The Client Secret of this relying party application. If no secret is provided, implicit flow will be used.
#   allowed_audiences (string)      : Allowed audience values to consider when validating JWTs issued by Azure Active Directory.


variable "backup" {
  description = "A 'backup' block."
  type        = map(any)
  default     = null
}
#
# backup block structure      :
#   enabled (bool)              : Is this Backup enabled? Defaults to 'true'.
#   storage_account_url (string): (REQUIRED) The SAS URL to a Storage Container where Backups should be saved.
#   schedule (block)            : (REQUIRED) A 'schedule' block.
#
# schedule block structure         :
#   frequency_interval (string)      : (REQUIRED) Sets how often the backup should be executed.
#   frequency_unit (string)          : (REQUIRED) Sets the unit of time for how often the backup should be executed. Possible values are 'Day' or 'Hour'.
#   keep_at_least_one_backup (string): Should at least one backup always be kept in the Storage Account by the Retention Policy, regardless of how old it is?
#   retention_period_in_days (int)   : Specifies the number of days after which Backups should be deleted. Defaults to '30'.
#   start_time (string)              : Sets when the schedule should start working.


variable "connection_string" {
  description = "One or more 'connection_string' blocks."
  type        = map(map(any))
  default     = null
}
#
# connection_string block structure:
#   type (string)                    : (REQUIRED) The type of the Connection String. Possible values are 'APIHub', 'Custom', 'DocDb', 'EventHub', 'MySQL', 'NotificationHub', 'PostgreSQL', 'RedisCache', 'ServiceBus', 'SQLAzure' and 'SQLServer'.
#   value (string)                   : (REQUIRED) The value for the Connection String.


variable "client_affinity_enabled" {
  description = "Should the App Service send session affinity cookies, which route client requests in the same session to the same instance?"
  type        = bool
  default     = null
}
variable "client_cert_enabled" {
  description = "Does the App Service require client certificates for incoming requests? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "client_cert_mode" {
  description = "Mode of client certificates for this App Service. Possible values are 'Required', 'Optional' and 'OptionalInteractiveUser'. If this parameter is set, 'client_cert_enabled' must be set to 'true', otherwise this parameter is ignored."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Is the App Service Enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the identity type of the App Service. Possible values are 'SystemAssigned' (where Azure will generate a Service Principal for you), 'UserAssigned' where you can specify the Service Principal IDs in the 'identity_ids' field, and 'SystemAssigned, UserAssigned' which assigns both a system managed identity as well as the specified user assigned identities.
#   identity_ids (string)   : Specifies a list of user managed identity ids to be assigned. Required if 'type' is 'UserAssigned'.


variable "https_only" {
  description = "Can the App Service only be accessed via HTTPS? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "key_vault_reference_identity_id" {
  description = "The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)"
  type        = string
  default     = null
}
variable "logs" {
  description = "A 'logs' block."
  type        = map(any)
  default     = null
}
#
# logs block structure                  :
#   application_logs (block)              : An 'application_logs' block.
#   http_logs (block)                     : An 'http_logs' block.
#   detailed_error_messages_enabled (bool): Should 'Detailed error messages' be enabled on this App Service? Defaults to 'false'.
#   failed_request_tracing_enabled (bool) : Should 'Failed request tracing' be enabled on this App Service? Defaults to 'false'.
#
# application_logs block structure:
#   azure_blob_storage (block)      : An 'azure_blob_storage' block.
#   file_system_level (string)      : Log level for filesystem based logging. Supported values are 'Error', 'Information', 'Verbose', 'Warning' and 'Off'. Defaults to 'Off'.
#
# http_logs block structure :
#   file_system (block)       : A 'file_system' block.
#   azure_blob_storage (block): An 'azure_blob_storage' block.
#
# azure_blob_storage block structure:
#   level (string)                    : (REQUIRED) The level at which to log. Possible values include 'Error', 'Warning', 'Information', 'Verbose' and 'Off'. **NOTE:** this field is not available for 'http_logs'
#   sas_url (string)                  : (REQUIRED) The URL to the storage container with a shared access signature token appended.
#   retention_in_days (int)           : (REQUIRED) The number of days to retain logs for.
#
# file_system block structure:
#   retention_in_days (int)    : (REQUIRED) The number of days to retain logs for.
#   retention_in_mb (int)      : (REQUIRED) The maximum size in megabytes that HTTP log files can use before being removed.


variable "storage_account" {
  description = "One or more 'storage_account' blocks."
  type        = map(map(any))
  default     = null
}
#
# storage_account block structure:
#   type (string)                  : (REQUIRED) The type of storage. Possible values are 'AzureBlob' and 'AzureFiles'.
#   account_name (string)          : (REQUIRED) The name of the storage account.
#   share_name (string)            : (REQUIRED) The name of the file share (container name, for Blob storage).
#   access_key (string)            : (REQUIRED) The access key for the storage account.
#   mount_path (string)            : The path to mount the storage within the site's runtime environment.


variable "site_config" {
  description = "A 'site_config' block."
  type        = map(any)
  default     = null
}
#
# site_config block structure                  :
#   acr_use_managed_identity_credentials (string): Are Managed Identity Credentials used for Azure Container Registry pull
#   acr_user_managed_identity_client_id (string) : If using User Managed Identity, the User Managed Identity Client Id
#   always_on (bool)                             : Should the app be loaded at all times? Defaults to 'false'.
#   app_command_line (string)                    : App command line to launch, e.g. '/sbin/myserver -b 0.0.0.0'.
#   auto_swap_slot_name (string)                 : The name of the slot to automatically swap to during deployment
#   cors (block)                                 : A 'cors' block.
#   default_documents (string)                   : The ordering of default documents to load, if an address isn't specified.
#   dotnet_framework_version (string)            : The version of the .NET framework's CLR used in this App Service. Possible values are 'v2.0' (which will use the latest version of the .NET framework for the .NET CLR v2 - currently '.net 3.5'), 'v4.0' (which corresponds to the latest version of the .NET CLR v4 - which at the time of writing is '.net 4.7.1'), 'v5.0' and 'v6.0'. [For more information on which .NET CLR version to use based on the .NET framework you're targeting - please see this table](https://en.wikipedia.org/wiki/.NET_Framework_version_history#Overview). Defaults to 'v4.0'.
#   ftps_state (string)                          : State of FTP / FTPS service for this App Service. Possible values include: 'AllAllowed', 'FtpsOnly' and 'Disabled'.
#   health_check_path (string)                   : The health check path to be pinged by App Service. [For more information - please see App Service health check announcement](https://azure.github.io/AppService/2020/08/24/healthcheck-on-app-service.html).
#   number_of_workers (int)                      : The scaled number of workers (for per site scaling) of this App Service. Requires that 'per_site_scaling' is enabled on the 'azurerm_app_service_plan'. [For more information - please see Microsoft documentation on high-density hosting](https://docs.microsoft.com/azure/app-service/manage-scale-per-app).
#   http2_enabled (bool)                         : Is HTTP2 Enabled on this App Service? Defaults to 'false'.
#   ip_restriction (block)                       : A list of 'ip_restriction' objects representing IP restrictions as defined below.
#   scm_use_main_ip_restriction (bool)           : IP security restrictions for scm to use main. Defaults to 'false'.
#   scm_ip_restriction (block)                   : A list of 'scm_ip_restriction' objects representing IP restrictions as defined below.
#   java_version (string)                        : The version of Java to use. If specified 'java_container' and 'java_container_version' must also be specified. Possible values are '1.7', '1.8' and '11' and their specific versions - except for Java 11 (e.g. '1.7.0_80', '1.8.0_181', '11')
#   java_container (string)                      : The Java Container to use. If specified 'java_version' and 'java_container_version' must also be specified. Possible values are 'JAVA', 'JETTY', and 'TOMCAT'.
#   java_container_version (string)              : The version of the Java Container to use. If specified 'java_version' and 'java_container' must also be specified.
#   local_mysql_enabled (bool)                   : Is 'MySQL In App' Enabled? This runs a local MySQL instance with your app and shares resources from the App Service plan.
#   linux_fx_version (string)                    : Linux App Framework and version for the App Service. Possible options are a Docker container ('DOCKER|<user/image:tag>'), a base-64 encoded Docker Compose file ('COMPOSE|${filebase64('compose.yml')}') or a base-64 encoded Kubernetes Manifest ('KUBE|${filebase64('kubernetes.yml')}').
#   windows_fx_version (string)                  : The Windows Docker container image ('DOCKER|<user/image:tag>')
#   managed_pipeline_mode (string)               : The Managed Pipeline Mode. Possible values are 'Integrated' and 'Classic'. Defaults to 'Integrated'.
#   min_tls_version (string)                     : The minimum supported TLS version for the app service. Possible values are '1.0', '1.1', and '1.2'. Defaults to '1.2' for new app services.
#   php_version (string)                         : The version of PHP to use in this App Service. Possible values are '5.5', '5.6', '7.0', '7.1', '7.2', '7.3' and '7.4'.
#   python_version (string)                      : The version of Python to use in this App Service. Possible values are '2.7' and '3.4'.
#   remote_debugging_enabled (bool)              : Is Remote Debugging Enabled? Defaults to 'false'.
#   remote_debugging_version (string)            : Which version of Visual Studio should the Remote Debugger be compatible with? Possible values are 'VS2017' and 'VS2019'.
#   scm_type (string)                            : The type of Source Control enabled for this App Service. Defaults to 'None'. Possible values are: 'BitbucketGit', 'BitbucketHg', 'CodePlexGit', 'CodePlexHg', 'Dropbox', 'ExternalGit', 'ExternalHg', 'GitHub', 'LocalGit', 'None', 'OneDrive', 'Tfs', 'VSO', and 'VSTSRM'
#   use_32_bit_worker_process (bool)             : Should the App Service run in 32 bit mode, rather than 64 bit mode?
#   vnet_route_all_enabled (bool)                : Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to 'false'.
#   websockets_enabled (bool)                    : Should WebSockets be enabled?
#
# ip_restriction block structure    :
#   ip_address (string)               : The IP Address used for this IP Restriction in CIDR notation.
#   service_tag (string)              : The Service Tag used for this IP Restriction.
#   virtual_network_subnet_id (string): The Virtual Network Subnet ID used for this IP Restriction.
#   priority (string)                 : The priority for this IP Restriction. Restrictions are enforced in priority order. By default, priority is set to 65000 if not specified.
#   action (string)                   : Does this restriction 'Allow' or 'Deny' access for this IP range. Defaults to 'Allow'.
#   headers (string)                  : The 'headers' block for this specific 'ip_restriction' as defined below.
#
# scm_ip_restriction block structure:
#   ip_address (string)               : The IP Address used for this IP Restriction in CIDR notation.
#   service_tag (string)              : The Service Tag used for this IP Restriction.
#   virtual_network_subnet_id (string): The Virtual Network Subnet ID used for this IP Restriction.
#   priority (string)                 : The priority for this IP Restriction. Restrictions are enforced in priority order. By default, priority is set to 65000 if not specified.
#   action (string)                   : Allow or Deny access for this IP range. Defaults to 'Allow'.
#   headers (string)                  : The 'headers' block for this specific 'scm_ip_restriction' as defined below.
#
# cors block structure        :
#   allowed_origins (list)      : (REQUIRED) A list of origins which should be able to make cross-origin calls. '*' can be used to allow all calls.
#   support_credentials (string): Are credentials supported?


variable "source_control" {
  description = "A 'source_control' block."
  type        = map(any)
  default     = null
}
#
# source_control block structure:
#   repo_url (string)             : The URL of the source code repository.
#   branch (string)               : The branch of the remote repository to use. Defaults to 'master'.
#   manual_integration (bool)     : Limits to manual integration. Defaults to 'false' if not specified.
#   rollback_enabled (bool)       : Enable roll-back for the repository. Defaults to 'false' if not specified.
#   use_mercurial (bool)          : Use Mercurial if 'true', otherwise uses Git.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
