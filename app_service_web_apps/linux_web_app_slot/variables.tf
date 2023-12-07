# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Linux Web App Slot. Changing this forces a new Linux Web App Slot to be created."
  type        = string

}
variable "app_service_id" {
  description = "(REQUIRED) The ID of the Linux Web App this Deployment Slot will be part of."
  type        = string

}
variable "site_config" {
  description = "(REQUIRED) A 'site_config' block."
  type        = map(any)
}
#
# site_config block structure                           :
#   always_on (bool)                                      : If this Linux Web App is Always On enabled. Defaults to 'true'.
#   api_management_api_id (string)                        : The API Management API ID this Linux Web App Slot is associated with.
#   api_definition_url (string)                           : The URL to the API Definition for this Linux Web App Slot.
#   app_command_line (string)                             : The App command line to launch.
#   application_stack (block)                             : A 'application_stack' block.
#   auto_heal_enabled (bool)                              : Should Auto heal rules be enabled? Required with 'auto_heal_setting'.
#   auto_heal_setting (block)                             : A 'auto_heal_setting' block. Required with 'auto_heal'.
#   auto_swap_slot_name (string)                          : The Linux Web App Slot Name to automatically swap to when deployment to that slot is successfully completed.
#   container_registry_managed_identity_client_id (string): The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
#   container_registry_use_managed_identity (string)      : Should connections for Azure Container Registry use Managed Identity.
#   cors (block)                                          : A 'cors' block.
#   default_documents (string)                            : Specifies a list of Default Documents for the Linux Web App.
#   ftps_state (string)                                   : The State of FTP / FTPS service. Possible values include 'AllAllowed', 'FtpsOnly', and 'Disabled'. Defaults to 'Disabled'.
#   health_check_path (string)                            : The path to the Health Check.
#   health_check_eviction_time_in_min (string)            : The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between '2' and '10'. Only valid in conjunction with 'health_check_path'.
#   http2_enabled (bool)                                  : Should the HTTP2 be enabled?
#   ip_restriction (list)                                 : One or more 'ip_restriction' blocks.
#   load_balancing_mode (string)                          : The Site load balancing. Possible values include: 'WeightedRoundRobin', 'LeastRequests', 'LeastResponseTime', 'WeightedTotalTraffic', 'RequestHash', 'PerSiteRoundRobin'. Defaults to 'LeastRequests' if omitted.
#   local_mysql_enabled (bool)                            : Use Local MySQL. Defaults to 'false'.
#   managed_pipeline_mode (string)                        : Managed pipeline mode. Possible values include: 'Integrated', 'Classic'. Defaults to 'Integrated'.
#   minimum_tls_version (string)                          : The configures the minimum version of TLS required for SSL requests. Possible values include: '1.0', '1.1', and '1.2'. Defaults to '1.2'.
#   remote_debugging_enabled (bool)                       : Should Remote Debugging be enabled? Defaults to 'false'.
#   remote_debugging_version (string)                     : The Remote Debugging Version. Possible values include 'VS2017' and 'VS2019'
#   scm_ip_restriction (list)                             : One or more 'scm_ip_restriction' blocks.
#   scm_minimum_tls_version (string)                      : The configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: '1.0', '1.1', and '1.2'. Defaults to '1.2'.
#   scm_use_main_ip_restriction (string)                  : Should the Linux Web App 'ip_restriction' configuration be used for the SCM also.
#   use_32_bit_worker (bool)                              : Should the Linux Web App use a 32-bit worker? Defaults to 'true'.
#   vnet_route_all_enabled (bool)                         : Should all outbound traffic have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to 'false'.
#   websockets_enabled (bool)                             : Should Web Sockets be enabled? Defaults to 'false'.
#   worker_count (int)                                    : The number of Workers for this Linux App Service Slot.
#
# cors block structure      :
#   allowed_origins (string)  : Specifies a list of origins that should be allowed to make cross-origin calls.
#   support_credentials (bool): Whether CORS requests with credentials are allowed. Defaults to 'false'
#
# requests block structure:
#   count (int)             : (REQUIRED) The number of requests in the specified 'interval' to trigger this rule.
#   interval (string)       : (REQUIRED) The interval in 'hh:mm:ss'.
#
# action block structure                 :
#   action_type (string)                   : (REQUIRED) Predefined action to be taken to an Auto Heal trigger. Possible values include: 'Recycle'.
#   minimum_process_execution_time (string): The minimum amount of time in 'hh:mm:ss' the Linux Web App must have been running before the defined action will be run in the event of a trigger.
#
# application_stack block structure:
#   docker_image_name (string)       : The docker image, including tag, to be used. e.g. 'appsvc/staticsite:latest'.
#   docker_registry_url (string)     : The URL of the container registry where the 'docker_image_name' is located. e.g. 'https://index.docker.io' or 'https://mcr.microsoft.com'. This value is required with 'docker_image_name'.
#   docker_registry_username (string): The User Name to use for authentication against the registry to pull the image.
#   docker_registry_password (string): The User Name to use for authentication against the registry to pull the image.
#   dotnet_version (string)          : The version of .NET to use. Possible values include '3.1', '5.0', '6.0', '7.0' and '8.0'.
#   go_version (string)              : The version of Go to use. Possible values include '1.18', and '1.19'.
#   java_server (string)             : The Java server type. Possible values include 'JAVA', 'TOMCAT', and 'JBOSSEAP'.
#   java_server_version (string)     : The Version of the 'java_server' to use.
#   java_version (string)            : The Version of Java to use. Possible values include '8', '11', and '17'.
#   node_version (string)            : The version of Node to run. Possible values include '12-lts', '14-lts', '16-lts', and '18-lts'. This property conflicts with 'java_version'.
#   php_version (string)             : The version of PHP to run. Possible values are '7.4', '8.0', '8.1' and '8.2'.
#   python_version (string)          : The version of Python to run. Possible values include '3.7', '3.8', '3.9', '3.10' and '3.11'.
#   ruby_version (string)            : Te version of Ruby to run. Possible values include '2.6' and '2.7'.
#
# trigger block structure:
#   requests (block)       : A 'requests' block.
#   slow_request (list)    : One or more 'slow_request' blocks.
#   status_code (list)     : One or more 'status_code' blocks.
#
# auto_heal_setting block structure:
#   action (block)                   : A 'action' block.
#   trigger (block)                  : A 'trigger' block.



# OPTIONAL VARIABLES

variable "app_settings" {
  description = "A map of key-value pairs of App Settings."
  type        = string
  default     = null
}
variable "auth_settings" {
  description = "An 'auth_settings' block."
  type        = map(any)
  default     = null
}
#
# auth_settings block structure          :
#   enabled (bool)                         : (REQUIRED) Should the Authentication / Authorization feature be enabled for the Linux Web App?
#   active_directory (block)               : An 'active_directory' block.
#   additional_login_parameters (string)   : Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in.
#   allowed_external_redirect_urls (string): Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Linux Web App.
#   default_provider (string)              : The default authentication provider to use when multiple providers are configured. Possible values include: 'BuiltInAuthenticationProviderAzureActiveDirectory', 'BuiltInAuthenticationProviderFacebook', 'BuiltInAuthenticationProviderGoogle', 'BuiltInAuthenticationProviderMicrosoftAccount', 'BuiltInAuthenticationProviderTwitter', 'BuiltInAuthenticationProviderGithub'
#   facebook (block)                       : A 'facebook' block.
#   github (block)                         : A 'github' block.
#   google (block)                         : A 'google' block.
#   issuer (string)                        : The OpenID Connect Issuer URI that represents the entity that issues access tokens for this Linux Web App.
#   microsoft (block)                      : A 'microsoft' block.
#   runtime_version (string)               : The RuntimeVersion of the Authentication / Authorization feature in use for the Linux Web App.
#   token_refresh_extension_hours (int)    : The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72' hours.
#   token_store_enabled (bool)             : Should the Linux Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to 'false'.
#   twitter (block)                        : A 'twitter' block.
#   unauthenticated_client_action (string) : The action to take when an unauthenticated client attempts to access the app. Possible values include: 'RedirectToLoginPage', 'AllowAnonymous'.
#
# facebook block structure        :
#   app_id (string)                 : (REQUIRED) The App ID of the Facebook app used for login.
#   app_secret (string)             : The App Secret of the Facebook app used for Facebook login. Cannot be specified with 'app_secret_setting_name'.
#   app_secret_setting_name (string): The app setting name that contains the 'app_secret' value used for Facebook login. Cannot be specified with 'app_secret'.
#   oauth_scopes (string)           : Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication.
#
# google block structure             :
#   client_id (string)                 : (REQUIRED) The OpenID Connect Client ID for the Google web application.
#   client_secret (string)             : The client secret associated with the Google web application. Cannot be specified with 'client_secret_setting_name'.
#   client_secret_setting_name (string): The app setting name that contains the 'client_secret' value used for Google login. Cannot be specified with 'client_secret'.
#   oauth_scopes (string)              : Specifies a list of OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. If not specified, 'openid', 'profile', and 'email' are used as default scopes.
#
# microsoft block structure          :
#   client_id (string)                 : (REQUIRED) The OAuth 2.0 client ID that was created for the app used for authentication.
#   client_secret (string)             : The OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with 'client_secret_setting_name'.
#   client_secret_setting_name (string): The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with 'client_secret'.
#   oauth_scopes (string)              : Specifies a list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. If not specified, 'wl.basic' is used as the default scope.
#
# github block structure             :
#   client_id (string)                 : (REQUIRED) The ID of the GitHub app used for login.
#   client_secret (string)             : The Client Secret of the GitHub app used for GitHub login. Cannot be specified with 'client_secret_setting_name'.
#   client_secret_setting_name (string): The app setting name that contains the 'client_secret' value used for GitHub login. Cannot be specified with 'client_secret'.
#   oauth_scopes (string)              : Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub login authentication.
#
# twitter block structure              :
#   consumer_key (string)                : (REQUIRED) The OAuth 1.0a consumer key of the Twitter application used for sign-in.
#   consumer_secret (string)             : The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with 'consumer_secret_setting_name'.
#   consumer_secret_setting_name (string): The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with 'consumer_secret'.
#
# active_directory block structure   :
#   client_id (string)                 : (REQUIRED) The ID of the Client to use to authenticate with Azure Active Directory.
#   allowed_audiences (string)         : Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
#   client_secret (string)             : The Client Secret for the Client ID. Cannot be used with 'client_secret_setting_name'.
#   client_secret_setting_name (string): The App Setting name that contains the client secret of the Client. Cannot be used with 'client_secret'.


variable "auth_settings_v2" {
  description = "An 'auth_settings_v2' block."
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
# github_v2 block structure          :
#   client_id (string)                 : (REQUIRED) The ID of the GitHub app used for login..
#   client_secret_setting_name (string): (REQUIRED) The app setting name that contains the 'client_secret' value used for GitHub Login.
#   login_scopes (string)              : The list of OAuth 2.0 scopes that should be requested as part of GitHub Login authentication.
#
# login block structure                   :
#   logout_endpoint (string)                : The endpoint to which logout requests should be made.
#   token_store_enabled (bool)              : Should the Token Store configuration Enabled. Defaults to 'false'
#   token_refresh_extension_time (int)      : The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to '72' hours.
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
# apple_v2 block structure           :
#   client_id (string)                 : (REQUIRED) The OpenID Connect Client ID for the Apple web application.
#   client_secret_setting_name (string): (REQUIRED) The app setting name that contains the 'client_secret' value used for Apple Login.
#   login_scopes (list)                : A list of Login Scopes provided by this Authentication Provider.
#
# facebook_v2 block structure     :
#   app_id (string)                 : (REQUIRED) The App ID of the Facebook app used for login.
#   app_secret_setting_name (string): (REQUIRED) The app setting name that contains the 'app_secret' value used for Facebook Login.
#   graph_api_version (string)      : The version of the Facebook API to be used while logging in.
#   login_scopes (string)           : The list of scopes that should be requested as part of Facebook Login authentication.
#
# azure_static_web_app_v2 block structure:
#   client_id (string)                     : (REQUIRED) The ID of the Client to use to authenticate with Azure Static Web App Authentication.
#
# microsoft_v2 block structure       :
#   client_id (string)                 : (REQUIRED) The OAuth 2.0 client ID that was created for the app used for authentication.
#   client_secret_setting_name (string): (REQUIRED) The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
#   allowed_audiences (string)         : Specifies a list of Allowed Audiences that will be requested as part of Microsoft Sign-In authentication.
#   login_scopes (string)              : The list of Login scopes that should be requested as part of Microsoft Account authentication.
#
# twitter_v2 block structure           :
#   consumer_key (string)                : (REQUIRED) The OAuth 1.0a consumer key of the Twitter application used for sign-in.
#   consumer_secret_setting_name (string): (REQUIRED) The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in.
#
# google_v2 block structure          :
#   client_id (string)                 : (REQUIRED) The OpenID Connect Client ID for the Google web application.
#   client_secret_setting_name (string): (REQUIRED) The app setting name that contains the 'client_secret' value used for Google Login.
#   allowed_audiences (string)         : Specifies a list of Allowed Audiences that should be requested as part of Google Sign-In authentication.
#   login_scopes (string)              : The list of OAuth 2.0 scopes that should be requested as part of Google Sign-In authentication.
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


variable "backup" {
  description = "A 'backup' block."
  type        = map(any)
  default     = null
}
#
# backup block structure      :
#   name (string)               : (REQUIRED) The name which should be used for this Backup.
#   schedule (block)            : (REQUIRED) An 'schedule' block.
#   storage_account_url (string): (REQUIRED) The SAS URL to the container.
#   enabled (bool)              : Should this backup job be enabled? Defaults to 'true'.
#
# schedule block structure       :
#   frequency_interval (string)    : (REQUIRED) How often the backup should be executed (e.g. for weekly backup, this should be set to '7' and 'frequency_unit' should be set to 'Day').
#   frequency_unit (string)        : (REQUIRED) The unit of time for how often the backup should take place. Possible values include: 'Day', 'Hour'
#   keep_at_least_one_backup (bool): Should the service keep at least one backup, regardless of the age of backup? Defaults to 'false'.
#   retention_period_days (int)    : After how many days backups should be deleted. Defaults to '30'.
#   start_time (string)            : When the schedule should start working in RFC-3339 format.


variable "client_affinity_enabled" {
  description = "Should Client Affinity be enabled?"
  type        = bool
  default     = null
}
variable "client_certificate_enabled" {
  description = "Should Client Certificates be enabled?"
  type        = bool
  default     = null
}
variable "client_certificate_mode" {
  description = "The Client Certificate mode. Possible values are 'Required', 'Optional', and 'OptionalInteractiveUser'. This property has no effect when 'client_cert_enabled' is 'false'. Defaults to 'Required'."
  type        = string
  default     = "Required"
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
#   name (string)                    : (REQUIRED) The name of the Connection String.
#   type (string)                    : (REQUIRED) Type of database. Possible values include 'APIHub', 'Custom', 'DocDb', 'EventHub', 'MySQL', 'NotificationHub', 'PostgreSQL', 'RedisCache', 'ServiceBus', 'SQLAzure', and 'SQLServer'.
#   value (string)                   : (REQUIRED) The connection string value.


variable "enabled" {
  description = "Should the Linux Web App be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "ftp_publish_basic_authentication_enabled" {
  description = "Should the default FTP Basic Authentication publishing profile be enabled. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "https_only" {
  description = "Should the Linux Web App require HTTPS connections."
  type        = string
  default     = null
}
variable "public_network_access_enabled" {
  description = "Should public network access be enabled for the Web App. Defaults to 'true'."
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
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Linux Web App Slot. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this Linux Web App Slot.


variable "key_vault_reference_identity_id" {
  description = "The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the 'identity' block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)."
  type        = string
  default     = null
}
variable "logs" {
  description = "A 'logs' block."
  type        = map(any)
  default     = null
}
#
# logs block structure            :
#   application_logs (block)        : A 'application_logs' block.
#   detailed_error_messages (string): Should detailed error messages be enabled?
#   failed_request_tracing (string) : Should the failed request tracing be enabled?
#   http_logs (block)               : An 'http_logs' block.
#
# application_logs block structure:
#   azure_blob_storage (block)      : An 'azure_blob_storage' block.
#   file_system_level (string)      : (REQUIRED) Log level. Possible values include 'Verbose', 'Information', 'Warning', and 'Error'.
#
# http_logs block structure :
#   azure_blob_storage (block): A 'azure_blob_storage_http' block.
#   file_system (block)       : A 'file_system' block.
#
# file_system block structure:
#   retention_in_days (int)    : (REQUIRED) The retention period in days. A values of '0' means no retention.
#   retention_in_mb (int)      : (REQUIRED) The maximum size in megabytes that log files can use.
#
# azure_blob_storage block structure:
#   level (string)                    : (REQUIRED) The level at which to log. Possible values include 'Error', 'Warning', 'Information', 'Verbose' and 'Off'. **NOTE:** this field is not available for 'http_logs'
#   retention_in_days (int)           : (REQUIRED) The time in days after which to remove blobs. A value of '0' means no retention.
#   sas_url (string)                  : (REQUIRED) SAS URL to an Azure blob container with read/write/list/delete permissions.


variable "service_plan_id" {
  description = "The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Web App will be used."
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
#   type (string)                  : (REQUIRED) The Azure Storage Type. Possible values include 'AzureFiles' and 'AzureBlob'
#   mount_path (string)            : The path at which to mount the storage share.


variable "virtual_network_subnet_id" {
  description = "The subnet id which will be used by this Web App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration)."
  type        = string
  default     = null
}
variable "webdeploy_publish_basic_authentication_enabled" {
  description = "Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to'true'."
  type        = bool
  default     = true
}
variable "zip_deploy_file" {
  description = "The local path and filename of the Zip packaged application to deploy to this Linux Web App."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags that should be assigned to the Linux Web App."
  type        = map(any)
  default     = null
}
