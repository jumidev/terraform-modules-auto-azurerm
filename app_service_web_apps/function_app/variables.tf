# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Function App. Changing this forces a new resource to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/azure/azure-resource-manager/management/resource-name-rules#microsoftweb)."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Function App. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "app_service_plan_id" {
  description = "(REQUIRED) The ID of the App Service Plan within which to create this Function App."
  type        = string

}
variable "storage_account_name" {
  description = "(REQUIRED) The backend storage account name which will be used by this Function App (such as the dashboard, logs). Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_access_key" {
  description = "(REQUIRED) The access key which will be used to access the backend storage account for the Function App."
  type        = string

}

# OPTIONAL VARIABLES

variable "app_settings" {
  description = "A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values."
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
#   token_refresh_extension_hours (string) : The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72'.
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
# twitter block structure :
#   consumer_key (string)   : (REQUIRED) The OAuth 1.0a consumer key of the Twitter application used for sign-in.
#   consumer_secret (string): (REQUIRED) The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
#
# facebook block structure:
#   app_id (string)         : (REQUIRED) The App ID of the Facebook app used for login
#   app_secret (string)     : (REQUIRED) The App Secret of the Facebook app used for Facebook login.
#   oauth_scopes (string)   : The OAuth 2.0 scopes that will be requested as part of Facebook login authentication. <https://developers.facebook.com/docs/facebook-login>
#
# active_directory block structure:
#   client_id (string)              : (REQUIRED) The Client ID of this relying party application. Enables OpenIDConnection authentication with Azure Active Directory.
#   client_secret (string)          : The Client Secret of this relying party application. If no secret is provided, implicit flow will be used.
#   allowed_audiences (string)      : Allowed audience values to consider when validating JWTs issued by Azure Active Directory.


variable "connection_string" {
  description = "An 'connection_string' block."
  type        = map(any)
  default     = null
}
#
# connection_string block structure:
#   name (string)                    : (REQUIRED) The name of the Connection String.
#   type (string)                    : (REQUIRED) The type of the Connection String. Possible values are 'APIHub', 'Custom', 'DocDb', 'EventHub', 'MySQL', 'NotificationHub', 'PostgreSQL', 'RedisCache', 'ServiceBus', 'SQLAzure' and 'SQLServer'.
#   value (string)                   : (REQUIRED) The value for the Connection String.


variable "client_cert_mode" {
  description = "The mode of the Function App's client certificates requirement for incoming requests. Possible values are 'Required' and 'Optional'."
  type        = string
  default     = null
}
variable "daily_memory_time_quota" {
  description = "The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Is the Function App enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "enable_builtin_logging" {
  description = "Should the built-in logging of this Function App be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "https_only" {
  description = "Can the Function App only be accessed via HTTPS? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the identity type of the Function App. Possible values are 'SystemAssigned' (where Azure will generate a Service Principal for you), 'UserAssigned' where you can specify the Service Principal IDs in the 'identity_ids' field, and 'SystemAssigned, UserAssigned' which assigns both a system managed identity as well as the specified user assigned identities.
#   identity_ids (string)   : Specifies a list of user managed identity ids to be assigned. Required if 'type' is 'UserAssigned'.


variable "key_vault_reference_identity_id" {
  description = "The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information."
  type        = string
  default     = null
}
variable "os_type" {
  description = "A string indicating the Operating System type for this function app. Possible values are 'linux' and ''(empty string). Changing this forces a new resource to be created. Defaults to ''''."
  type        = string
  default     = ""
}
variable "site_config" {
  description = "A 'site_config' object as defined below."
  type        = map(any)
  default     = null
}
#
# site_config block structure            :
#   always_on (bool)                       : Should the Function App be loaded at all times? Defaults to 'false'.
#   app_scale_limit (number)               : The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
#   cors (block)                           : A 'cors' block.
#   dotnet_framework_version (string)      : The version of the .NET framework's CLR used in this function app. Possible values are 'v4.0' (including .NET Core 2.1 and 3.1), 'v5.0' and 'v6.0'. [For more information on which .NET Framework version to use based on the runtime version you're targeting - please see this table](https://docs.microsoft.com/azure/azure-functions/functions-dotnet-class-library#supported-versions). Defaults to 'v4.0'.
#   elastic_instance_minimum (number)      : The number of minimum instances for this function app. Only affects apps on the Premium plan.
#   ftps_state (string)                    : State of FTP / FTPS service for this function app. Possible values include: 'AllAllowed', 'FtpsOnly' and 'Disabled'. Defaults to 'AllAllowed'.
#   health_check_path (string)             : Path which will be checked for this function app health.
#   http2_enabled (bool)                   : Specifies whether or not the HTTP2 protocol should be enabled. Defaults to 'false'.
#   ip_restriction (block)                 : A list of 'ip_restriction' objects representing IP restrictions as defined below.
#   java_version (string)                  : Java version hosted by the function app in Azure. Possible values are '1.8', '11' & '17' (In-Preview).
#   linux_fx_version (string)              : Linux App Framework and version for the AppService, e.g. 'DOCKER|(golang:latest)'.
#   min_tls_version (string)               : The minimum supported TLS version for the function app. Possible values are '1.0', '1.1', and '1.2'. Defaults to '1.2' for new function apps.
#   pre_warmed_instance_count (number)     : The number of pre-warmed instances for this function app. Only affects apps on the Premium plan.
#   runtime_scale_monitoring_enabled (bool): Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan. Defaults to 'false'.
#   scm_ip_restriction (block)             : A list of 'scm_ip_restriction' objects representing IP restrictions as defined below.
#   scm_type (string)                      : The type of Source Control used by the Function App. Valid values include: 'BitBucketGit', 'BitBucketHg', 'CodePlexGit', 'CodePlexHg', 'Dropbox', 'ExternalGit', 'ExternalHg', 'GitHub', 'LocalGit', 'None' (default), 'OneDrive', 'Tfs', 'VSO', and 'VSTSRM'.
#   scm_use_main_ip_restriction (bool)     : IP security restrictions for scm to use main. Defaults to 'false'.
#   use_32_bit_worker_process (bool)       : Should the Function App run in 32 bit mode, rather than 64 bit mode? Defaults to 'true'.
#   vnet_route_all_enabled (bool)          : Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to 'false'.
#   websockets_enabled (bool)              : Should WebSockets be enabled?
#   auto_swap_slot_name (string)           : The name of the slot to automatically swap to during deployment
#
# cors block structure        :
#   allowed_origins (string)    : (REQUIRED) A list of origins which should be able to make cross-origin calls. '*' can be used to allow all calls.
#   support_credentials (string): Are credentials supported?
#
# scm_ip_restriction block structure:
#   ip_address (string)               : The IP Address used for this IP Restriction in CIDR notation.
#   service_tag (string)              : The Service Tag used for this IP Restriction.
#   virtual_network_subnet_id (string): The Virtual Network Subnet ID used for this IP Restriction.
#   name (string)                     : The name for this IP Restriction.
#   priority (string)                 : The priority for this IP Restriction. Restrictions are enforced in priority order. By default, priority is set to 65000 if not specified.
#   action (string)                   : Allow or Deny access for this IP range. Defaults to 'Allow'.
#   headers (string)                  : The 'headers' block for this specific 'scm_ip_restriction' as defined below.
#
# ip_restriction block structure    :
#   ip_address (string)               : The IP Address used for this IP Restriction in CIDR notation.
#   service_tag (string)              : The Service Tag used for this IP Restriction.
#   virtual_network_subnet_id (string): The Virtual Network Subnet ID used for this IP Restriction.
#   name (string)                     : The name for this IP Restriction.
#   priority (string)                 : The priority for this IP Restriction. Restrictions are enforced in priority order. By default, the priority is set to 65000 if not specified.
#   action (string)                   : Does this restriction 'Allow' or 'Deny' access for this IP range. Defaults to 'Allow'.
#   headers (string)                  : The 'headers' block for this specific 'ip_restriction' as defined below.


variable "source_control" {
  description = "A 'source_control' block, as defined below."
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


variable "version" {
  description = "The runtime version associated with the Function App. Defaults to '~1'."
  type        = string
  default     = "~1"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "storage_account_resource_group_name" {
  description = "Specifies the name of the resource group the Storage Account is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
