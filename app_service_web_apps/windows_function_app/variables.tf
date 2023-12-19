# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Windows Function App should exist. Changing this forces a new Windows Function App to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Windows Function App. Changing this forces a new Windows Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)"
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Windows Function App should exist. Changing this forces a new Windows Function App to be created."
  type        = string

}
variable "service_plan_id" {
  description = "(REQUIRED) The ID of the App Service Plan within which to create this Function App."
  type        = string

}
variable "site_config" {
  description = "(REQUIRED) A 'site_config' block."
  type        = map(any)
}
#
# site_config block structure                    :
#   always_on (bool)                               : If this Windows Function App is Always On enabled. Defaults to 'false'.
#   api_definition_url (string)                    : The URL of the API definition that describes this Windows Function App.
#   api_management_api_id (string)                 : The ID of the API Management API for this Windows Function App.
#   app_command_line (string)                      : The App command line to launch.
#   app_scale_limit (number)                       : The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
#   application_insights_connection_string (string): The Connection String for linking the Windows Function App to Application Insights.
#   application_insights_key (string)              : The Instrumentation Key for connecting the Windows Function App to Application Insights.
#   application_stack (block)                      : An 'application_stack' block.
#   app_service_logs (block)                       : An 'app_service_logs' block.
#   cors (block)                                   : A 'cors' block.
#   default_documents (string)                     : Specifies a list of Default Documents for the Windows Function App.
#   elastic_instance_minimum (number)              : The number of minimum instances for this Windows Function App. Only affects apps on Elastic Premium plans.
#   ftps_state (string)                            : State of FTP / FTPS service for this Windows Function App. Possible values include: 'AllAllowed', 'FtpsOnly' and 'Disabled'. Defaults to 'Disabled'.
#   health_check_path (string)                     : The path to be checked for this Windows Function App health.
#   health_check_eviction_time_in_min (string)     : The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between '2' and '10'. Only valid in conjunction with 'health_check_path'.
#   http2_enabled (bool)                           : Specifies if the HTTP2 protocol should be enabled. Defaults to 'false'.
#   ip_restriction (list)                          : One or more 'ip_restriction' blocks.
#   load_balancing_mode (string)                   : The Site load balancing mode. Possible values include: 'WeightedRoundRobin', 'LeastRequests', 'LeastResponseTime', 'WeightedTotalTraffic', 'RequestHash', 'PerSiteRoundRobin'. Defaults to 'LeastRequests' if omitted.
#   managed_pipeline_mode (string)                 : Managed pipeline mode. Possible values include: 'Integrated', 'Classic'. Defaults to 'Integrated'.
#   minimum_tls_version (string)                   : Configures the minimum version of TLS required for SSL requests. Possible values include: '1.0', '1.1', and '1.2'. Defaults to '1.2'.
#   pre_warmed_instance_count (number)             : The number of pre-warmed instances for this Windows Function App. Only affects apps on an Elastic Premium plan.
#   remote_debugging_enabled (bool)                : Should Remote Debugging be enabled. Defaults to 'false'.
#   remote_debugging_version (string)              : The Remote Debugging Version. Possible values include 'VS2017', 'VS2019', and 'VS2022'.
#   runtime_scale_monitoring_enabled (bool)        : Should Scale Monitoring of the Functions Runtime be enabled?
#   scm_ip_restriction (list)                      : One or more 'scm_ip_restriction' blocks.
#   scm_minimum_tls_version (string)               : Configures the minimum version of TLS required for SSL requests to the SCM site. Possible values include: '1.0', '1.1', and '1.2'. Defaults to '1.2'.
#   scm_use_main_ip_restriction (string)           : Should the Windows Function App 'ip_restriction' configuration be used for the SCM also.
#   use_32_bit_worker (bool)                       : Should the Windows Function App use a 32-bit worker process. Defaults to 'true'.
#   vnet_route_all_enabled (bool)                  : Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to 'false'.
#   websockets_enabled (bool)                      : Should Web Sockets be enabled. Defaults to 'false'.
#   worker_count (number)                          : The number of Workers for this Windows Function App.
#
# application_stack block structure :
#   dotnet_version (string)           : The version of .NET to use. Possible values include 'v3.0', 'v4.0' 'v6.0', 'v7.0' and 'v8.0'. Defaults to 'v4.0'.
#   use_dotnet_isolated_runtime (bool): Should the DotNet process use an isolated runtime. Defaults to 'false'.
#   java_version (string)             : The Version of Java to use. Supported versions include '1.8', '11' & '17' (In-Preview).
#   node_version (string)             : The version of Node to run. Possible values include '~12', '~14', '~16' and '~18'.
#   powershell_core_version (string)  : The version of PowerShell Core to run. Possible values are '7', and '7.2'.
#   use_custom_runtime (bool)         : Should the Windows Function App use a custom runtime?
#
# app_service_logs block structure:
#   disk_quota_mb (string)          : The amount of disk space to use for logs. Valid values are between '25' and '100'. Defaults to '35'.
#   retention_period_days (string)  : The retention period for logs in days. Valid values are between '0' and '99999'.(never delete).
#
# cors block structure      :
#   allowed_origins (string)  : Specifies a list of origins that should be allowed to make cross-origin calls.
#   support_credentials (bool): Are credentials allowed in CORS requests? Defaults to 'false'.



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
#   enabled (bool)                         : (REQUIRED) Should the Authentication / Authorization feature be enabled for the Windows Function App?
#   active_directory (block)               : An 'active_directory' block.
#   additional_login_parameters (string)   : Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in.
#   allowed_external_redirect_urls (string): Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Windows Function App.
#   default_provider (string)              : The default authentication provider to use when multiple providers are configured. Possible values include: 'AzureActiveDirectory', 'Facebook', 'Google', 'MicrosoftAccount', 'Twitter', 'Github'
#   facebook (block)                       : A 'facebook' block.
#   github (block)                         : A 'github' block.
#   google (block)                         : A 'google' block.
#   issuer (string)                        : The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Windows Function App.
#   microsoft (block)                      : A 'microsoft' block.
#   runtime_version (string)               : The Runtime Version of the Authentication / Authorization feature in use for the Windows Function App.
#   token_refresh_extension_hours (string) : The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72' hours.
#   token_store_enabled (bool)             : Should the Windows Function App durably store platform-specific security tokens that are obtained during login flows? Defaults to 'false'.
#   twitter (block)                        : A 'twitter' block.
#   unauthenticated_client_action (string) : The action to take when an unauthenticated client attempts to access the app. Possible values include: 'RedirectToLoginPage', 'AllowAnonymous'.
#
# twitter block structure              :
#   consumer_key (string)                : (REQUIRED) The OAuth 1.0a consumer key of the Twitter application used for sign-in.
#   consumer_secret (string)             : The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with 'consumer_secret_setting_name'.
#   consumer_secret_setting_name (string): The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with 'consumer_secret'.
#
# github block structure             :
#   client_id (string)                 : (REQUIRED) The ID of the GitHub app used for login.
#   client_secret (string)             : The Client Secret of the GitHub app used for GitHub login. Cannot be specified with 'client_secret_setting_name'.
#   client_secret_setting_name (string): The app setting name that contains the 'client_secret' value used for GitHub login. Cannot be specified with 'client_secret'.
#   oauth_scopes (string)              : Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub login authentication.
#
# facebook block structure        :
#   app_id (string)                 : (REQUIRED) The App ID of the Facebook app used for login.
#   app_secret (string)             : The App Secret of the Facebook app used for Facebook login. Cannot be specified with 'app_secret_setting_name'.
#   app_secret_setting_name (string): The app setting name that contains the 'app_secret' value used for Facebook login. Cannot be specified with 'app_secret'.
#   oauth_scopes (string)           : Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication.
#
# microsoft block structure          :
#   client_id (string)                 : (REQUIRED) The OAuth 2.0 client ID that was created for the app used for authentication.
#   client_secret (string)             : The OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with 'client_secret_setting_name'.
#   client_secret_setting_name (string): The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with 'client_secret'.
#   oauth_scopes (string)              : Specifies a list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. If not specified, 'wl.basic' is used as the default scope.
#
# active_directory block structure   :
#   client_id (string)                 : (REQUIRED) The ID of the Client to use to authenticate with Azure Active Directory.
#   allowed_audiences (string)         : Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
#   client_secret (string)             : The Client Secret for the Client ID. Cannot be used with 'client_secret_setting_name'.
#   client_secret_setting_name (string): The App Setting name that contains the client secret of the Client. Cannot be used with 'client_secret'.
#
# google block structure             :
#   client_id (string)                 : (REQUIRED) The OpenID Connect Client ID for the Google web application.
#   client_secret (string)             : The client secret associated with the Google web application. Cannot be specified with 'client_secret_setting_name'.
#   client_secret_setting_name (string): The app setting name that contains the 'client_secret' value used for Google login. Cannot be specified with 'client_secret'.
#   oauth_scopes (string)              : Specifies a list of OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. If not specified, 'openid', 'profile', and 'email' are used as default scopes.


variable "auth_settings_v2" {
  description = "A 'auth_settings_v2' block."
  type        = map(any)
  default     = null
}
#
# auth_settings_v2 block structure                :
#   auth_enabled (bool)                             : Should the AuthV2 Settings be enabled. Defaults to 'false'.
#   runtime_version (string)                        : The Runtime Version of the Authentication and Authorisation feature of this App. Defaults to '~1'.
#   config_file_path (string)                       : The path to the App Auth settings.
#   require_authentication (string)                 : Should the authentication flow be used for all requests.
#   unauthenticated_action (string)                 : The action to take for requests made without authentication. Possible values include 'RedirectToLoginPage', 'AllowAnonymous', 'Return401', and 'Return403'. Defaults to 'RedirectToLoginPage'.
#   default_provider (string)                       : The Default Authentication Provider to use when the 'unauthenticated_action' is set to 'RedirectToLoginPage'. Possible values include: 'apple', 'azureactivedirectory', 'facebook', 'github', 'google', 'twitter' and the 'name' of your 'custom_oidc_v2' provider.
#   excluded_paths (string)                         : The paths which should be excluded from the 'unauthenticated_action' when it is set to 'RedirectToLoginPage'.
#   require_https (bool)                            : Should HTTPS be required on connections? Defaults to 'true'.
#   http_route_api_prefix (string)                  : The prefix that should precede all the authentication and authorisation paths. Defaults to '/.auth'.
#   forward_proxy_convention (string)               : The convention used to determine the url of the request made. Possible values include 'NoProxy', 'Standard', 'Custom'. Defaults to 'NoProxy'.
#   forward_proxy_custom_host_header_name (string)  : The name of the custom header containing the host of the request.
#   forward_proxy_custom_scheme_header_name (string): The name of the custom header containing the scheme of the request.
#   apple_v2 (block)                                : An 'apple_v2' block.
#   active_directory_v2 (block)                     : An 'active_directory_v2' block.
#   azure_static_web_app_v2 (block)                 : An 'azure_static_web_app_v2' block.
#   custom_oidc_v2 (block)                          : Zero or more 'custom_oidc_v2' blocks.
#   facebook_v2 (block)                             : A 'facebook_v2' block.
#   github_v2 (block)                               : A 'github_v2' block.
#   google_v2 (block)                               : A 'google_v2' block.
#   microsoft_v2 (block)                            : A 'microsoft_v2' block.
#   twitter_v2 (block)                              : A 'twitter_v2' block.
#   login (block)                                   : (REQUIRED) A 'login' block.
#
# custom_oidc_v2 block structure        :
#   name (string)                         : (REQUIRED) The name of the Custom OIDC Authentication Provider.
#   client_id (string)                    : (REQUIRED) The ID of the Client to use to authenticate with the Custom OIDC.
#   openid_configuration_endpoint (string): (REQUIRED) The app setting name that contains the 'client_secret' value used for the Custom OIDC Login.
#   name_claim_type (string)              : The name of the claim that contains the users name.
#   scopes (string)                       : The list of the scopes that should be requested while authenticating.
#   client_credential_method (string)     : The Client Credential Method used.
#   client_secret_setting_name (string)   : The App Setting name that contains the secret for this Custom OIDC Client. This is generated from 'name' above and suffixed with '_PROVIDER_AUTHENTICATION_SECRET'.
#   authorisation_endpoint (string)       : The endpoint to make the Authorisation Request as supplied by 'openid_configuration_endpoint' response.
#   token_endpoint (string)               : The endpoint used to request a Token as supplied by 'openid_configuration_endpoint' response.
#   issuer_endpoint (string)              : The endpoint that issued the Token as supplied by 'openid_configuration_endpoint' response.
#   certification_uri (string)            : The endpoint that provides the keys necessary to validate the token as supplied by 'openid_configuration_endpoint' response.
#
# apple_v2 block structure           :
#   client_id (string)                 : (REQUIRED) The OpenID Connect Client ID for the Apple web application.
#   client_secret_setting_name (string): (REQUIRED) The app setting name that contains the 'client_secret' value used for Apple Login.
#   login_scopes (list)                : A list of Login Scopes provided by this Authentication Provider.
#
# azure_static_web_app_v2 block structure:
#   client_id (string)                     : (REQUIRED) The ID of the Client to use to authenticate with Azure Static Web App Authentication.
#
# twitter_v2 block structure           :
#   consumer_key (string)                : (REQUIRED) The OAuth 1.0a consumer key of the Twitter application used for sign-in.
#   consumer_secret_setting_name (string): (REQUIRED) The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in.
#
# github_v2 block structure          :
#   client_id (string)                 : (REQUIRED) The ID of the GitHub app used for login..
#   client_secret_setting_name (string): (REQUIRED) The app setting name that contains the 'client_secret' value used for GitHub Login.
#   login_scopes (string)              : The list of OAuth 2.0 scopes that should be requested as part of GitHub Login authentication.
#
# google_v2 block structure          :
#   client_id (string)                 : (REQUIRED) The OpenID Connect Client ID for the Google web application.
#   client_secret_setting_name (string): (REQUIRED) The app setting name that contains the 'client_secret' value used for Google Login.
#   allowed_audiences (string)         : Specifies a list of Allowed Audiences that should be requested as part of Google Sign-In authentication.
#   login_scopes (string)              : The list of OAuth 2.0 scopes that should be requested as part of Google Sign-In authentication.
#
# facebook_v2 block structure     :
#   app_id (string)                 : (REQUIRED) The App ID of the Facebook app used for login.
#   app_secret_setting_name (string): (REQUIRED) The app setting name that contains the 'app_secret' value used for Facebook Login.
#   graph_api_version (string)      : The version of the Facebook API to be used while logging in.
#   login_scopes (string)           : The list of scopes that should be requested as part of Facebook Login authentication.
#
# login block structure                   :
#   logout_endpoint (string)                : The endpoint to which logout requests should be made.
#   token_store_enabled (bool)              : Should the Token Store configuration Enabled. Defaults to 'false'
#   token_refresh_extension_time (string)   : The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72' hours.
#   token_store_path (string)               : The directory path in the App Filesystem in which the tokens will be stored.
#   token_store_sas_setting_name (string)   : The name of the app setting which contains the SAS URL of the blob storage containing the tokens.
#   preserve_url_fragments_for_logins (bool): Should the fragments from the request be preserved after the login request is made. Defaults to 'false'.
#   allowed_external_redirect_urls (string) : External URLs that can be redirected to as part of logging in or logging out of the app. This is an advanced setting typically only needed by Windows Store application backends.
#   cookie_expiration_convention (string)   : The method by which cookies expire. Possible values include: 'FixedTime', and 'IdentityProviderDerived'. Defaults to 'FixedTime'.
#   cookie_expiration_time (string)         : The time after the request is made when the session cookie should expire. Defaults to '08:00:00'.
#   validate_nonce (bool)                   : Should the nonce be validated while completing the login flow. Defaults to 'true'.
#   nonce_expiration_time (string)          : The time after the request is made when the nonce should expire. Defaults to '00:05:00'.
#
# active_directory_v2 block structure          :
#   client_id (string)                           : (REQUIRED) The ID of the Client to use to authenticate with Azure Active Directory.
#   tenant_auth_endpoint (string)                : (REQUIRED) The Azure Tenant Endpoint for the Authenticating Tenant. e.g. 'https://login.microsoftonline.com/v2.0/{tenant-guid}/'
#   client_secret_setting_name (string)          : The App Setting name that contains the client secret of the Client.
#   client_secret_certificate_thumbprint (string): The thumbprint of the certificate used for signing purposes.
#   jwt_allowed_groups (list)                    : A list of Allowed Groups in the JWT Claim.
#   jwt_allowed_client_applications (list)       : A list of Allowed Client Applications in the JWT Claim.
#   www_authentication_disabled (bool)           : Should the www-authenticate provider should be omitted from the request? Defaults to 'false'.
#   allowed_groups (string)                      : The list of allowed Group Names for the Default Authorisation Policy.
#   allowed_identities (string)                  : The list of allowed Identities for the Default Authorisation Policy.
#   allowed_applications (string)                : The list of allowed Applications for the Default Authorisation Policy.
#   login_parameters (string)                    : A map of key-value pairs to send to the Authorisation Endpoint when a user logs in.
#   allowed_audiences (string)                   : Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
#
# microsoft_v2 block structure       :
#   client_id (string)                 : (REQUIRED) The OAuth 2.0 client ID that was created for the app used for authentication.
#   client_secret_setting_name (string): (REQUIRED) The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
#   allowed_audiences (string)         : Specifies a list of Allowed Audiences that will be requested as part of Microsoft Sign-In authentication.
#   login_scopes (string)              : The list of Login scopes that should be requested as part of Microsoft Account authentication.


variable "backup" {
  description = "A 'backup' block."
  type        = map(any)
  default     = null
}
#
# backup block structure      :
#   name (string)               : (REQUIRED) The name which should be used for this Backup.
#   schedule (block)            : (REQUIRED) A 'schedule' block.
#   storage_account_url (string): (REQUIRED) The SAS URL to the container.
#   enabled (bool)              : Should this backup job be enabled? Defaults to 'true'.
#
# schedule block structure       :
#   frequency_interval (string)    : (REQUIRED) How often the backup should be executed (e.g. for weekly backup, this should be set to '7' and 'frequency_unit' should be set to 'Day').
#   frequency_unit (string)        : (REQUIRED) The unit of time for how often the backup should take place. Possible values include: 'Day' and 'Hour'.
#   keep_at_least_one_backup (bool): Should the service keep at least one backup, regardless of age of backup. Defaults to 'false'.
#   retention_period_days (number) : After how many days backups should be deleted. Defaults to '30'.
#   start_time (string)            : When the schedule should start working in RFC-3339 format.


variable "builtin_logging_enabled" {
  description = "Should built in logging be enabled. Configures 'AzureWebJobsDashboard' app setting based on the configured storage setting. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "client_certificate_enabled" {
  description = "Should the function app use Client Certificates."
  type        = bool
  default     = null
}
variable "client_certificate_mode" {
  description = "The mode of the Function App's client certificates requirement for incoming requests. Possible values are 'Required', 'Optional', and 'OptionalInteractiveUser'. Defaults to 'Optional'."
  type        = string
  default     = "Optional"
}
variable "client_certificate_exclusion_paths" {
  description = "Paths to exclude when using client certificates, separated by ;"
  type        = string
  default     = null
}
variable "connection_string" {
  description = "One or more 'connection_string' blocks."
  type        = map(map(any))
  default     = null
}
#
# connection_string block structure:
#   name (string)                    : (REQUIRED) The name which should be used for this Connection.
#   type (string)                    : (REQUIRED) Type of database. Possible values include: 'APIHub', 'Custom', 'DocDb', 'EventHub', 'MySQL', 'NotificationHub', 'PostgreSQL', 'RedisCache', 'ServiceBus', 'SQLAzure', and 'SQLServer'.
#   value (string)                   : (REQUIRED) The connection string value.


variable "content_share_force_disabled" {
  description = "Should Content Share Settings be disabled. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "daily_memory_time_quota" {
  description = "The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. Defaults to '0'."
  type        = string
  default     = "0"
}
variable "enabled" {
  description = "Is the Function App enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "ftp_publish_basic_authentication_enabled" {
  description = "Should the default FTP Basic Authentication publishing profile be enabled. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "functions_extension_version" {
  description = "The runtime version associated with the Function App. Defaults to '~4'."
  type        = string
  default     = "~4"
}
variable "https_only" {
  description = "Can the Function App only be accessed via HTTPS? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "public_network_access_enabled" {
  description = "Should public network access be enabled for the Function App. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "identity" {
  description = "A 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Windows Function App. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this Windows Function App.


variable "key_vault_reference_identity_id" {
  description = "The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the 'identity' block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)"
  type        = string
  default     = null
}
variable "storage_account" {
  description = "One or more 'storage_account' blocks."
  type        = map(map(any))
  default     = null
}
#
# storage_account block structure:
#   access_key (string)            : (REQUIRED) The Access key for the storage account.
#   account_name (string)          : (REQUIRED) The Name of the Storage Account.
#   name (string)                  : (REQUIRED) The name which should be used for this Storage Account.
#   share_name (string)            : (REQUIRED) The Name of the File Share or Container Name for Blob storage.
#   type (string)                  : (REQUIRED) The Azure Storage Type. Possible values include 'AzureFiles'.
#   mount_path (string)            : The path at which to mount the storage share.


variable "sticky_settings" {
  description = "A 'sticky_settings' block."
  type        = map(any)
  default     = null
}
#
# sticky_settings block structure:
#   app_setting_names (list)       : A list of 'app_setting' names that the Windows Function App will not swap between Slots when a swap operation is triggered.
#   connection_string_names (list) : A list of 'connection_string' names that the Windows Function App will not swap between Slots when a swap operation is triggered.


variable "storage_account_access_key" {
  description = "The access key which will be used to access the backend storage account for the Function App. Conflicts with 'storage_uses_managed_identity'."
  type        = string
  default     = null
}
variable "storage_account_name" {
  description = "The backend storage account name which will be used by this Function App."
  type        = string
  default     = null
}
variable "storage_uses_managed_identity" {
  description = "Should the Function App use Managed Identity to access the storage account. Conflicts with 'storage_account_access_key'."
  type        = string
  default     = null
}
variable "storage_key_vault_secret_id" {
  description = "The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Windows Function App."
  type        = map(any)
  default     = null
}
variable "virtual_network_subnet_id" {
  description = "The subnet id which will be used by this Function App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration)."
  type        = string
  default     = null
}
variable "webdeploy_publish_basic_authentication_enabled" {
  description = "Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to'true'."
  type        = bool
  default     = true
}
variable "zip_deploy_file" {
  description = "The local path and filename of the Zip packaged application to deploy to this Windows Function App."
  type        = string
  default     = null
}
variable "storage_account_resource_group_name" {
  description = "Specifies the name of the resource group the Storage Account is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
