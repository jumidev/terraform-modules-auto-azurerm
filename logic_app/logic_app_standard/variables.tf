# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Logic App Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Logic App. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "app_service_plan_id" {
  description = "(REQUIRED) The ID of the App Service Plan within which to create this Logic App"
  type        = string

}
variable "storage_account_name" {
  description = "(REQUIRED) The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data). Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_access_key" {
  description = "(REQUIRED) The access key which will be used to access the backend storage account for the Logic App"
  type        = string

}

# OPTIONAL VARIABLES

variable "app_settings" {
  description = "A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values."
  type        = string
  default     = null
}
variable "use_extension_bundle" {
  description = "Should the logic app use the bundled extension package? If true, then application settings for 'AzureFunctionsJobHost__extensionBundle__id' and 'AzureFunctionsJobHost__extensionBundle__version' will be created. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "bundle_version" {
  description = "If 'use_extension_bundle' then controls the allowed range for bundle versions. Defaults to '[1.*, 2.0.0)'."
  type        = string
  default     = "[1.*, 2.0.0)"
}
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


variable "client_affinity_enabled" {
  description = "Should the Logic App send session affinity cookies, which route client requests in the same session to the same instance?"
  type        = bool
  default     = null
}
variable "client_certificate_mode" {
  description = "The mode of the Logic App's client certificates requirement for incoming requests. Possible values are 'Required' and 'Optional'."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Is the Logic App enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "https_only" {
  description = "Can the Logic App only be accessed via HTTPS? Defaults to 'false'."
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
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Logic App Standard. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Standard.


variable "site_config" {
  description = "A 'site_config' object as defined below."
  type        = map(any)
  default     = null
}
#
# site_config block structure            :
#   always_on (bool)                       : Should the Logic App be loaded at all times? Defaults to 'false'.
#   app_scale_limit (int)                  : The number of workers this Logic App can scale out to. Only applicable to apps on the Consumption and Premium plan.
#   cors (block)                           : A 'cors' block.
#   dotnet_framework_version (string)      : The version of the .NET framework's CLR used in this Logic App Possible values are 'v4.0' (including .NET Core 2.1 and 3.1), 'v5.0' and 'v6.0'. [For more information on which .NET Framework version to use based on the runtime version you're targeting - please see this table](https://docs.microsoft.com/azure/azure-functions/functions-dotnet-class-library#supported-versions). Defaults to 'v4.0'.
#   elastic_instance_minimum (int)         : The number of minimum instances for this Logic App Only affects apps on the Premium plan.
#   ftps_state (string)                    : State of FTP / FTPS service for this Logic App Possible values include: 'AllAllowed', 'FtpsOnly' and 'Disabled'. Defaults to 'AllAllowed'.
#   health_check_path (string)             : Path which will be checked for this Logic App health.
#   http2_enabled (bool)                   : Specifies whether or not the HTTP2 protocol should be enabled. Defaults to 'false'.
#   ip_restriction (block)                 : A list of 'ip_restriction' objects representing IP restrictions as defined below.
#   scm_ip_restriction (block)             : A list of 'scm_ip_restriction' objects representing SCM IP restrictions as defined below.
#   scm_use_main_ip_restriction (bool)     : Should the Logic App 'ip_restriction' configuration be used for the SCM too. Defaults to 'false'.
#   scm_min_tls_version (string)           : Configures the minimum version of TLS required for SSL requests to the SCM site. Possible values are '1.0', '1.1' and '1.2'.
#   scm_type (string)                      : The type of Source Control used by the Logic App in use by the Windows Function App. Defaults to 'None'. Possible values are: 'BitbucketGit', 'BitbucketHg', 'CodePlexGit', 'CodePlexHg', 'Dropbox', 'ExternalGit', 'ExternalHg', 'GitHub', 'LocalGit', 'None', 'OneDrive', 'Tfs', 'VSO', and 'VSTSRM'
#   linux_fx_version (string)              : Linux App Framework and version for the AppService, e.g. 'DOCKER|(golang:latest)'. Setting this value will also set the 'kind' of application deployed to 'functionapp,linux,container,workflowapp'
#   min_tls_version (string)               : The minimum supported TLS version for the Logic App Possible values are '1.0', '1.1', and '1.2'. Defaults to '1.2' for new Logic Apps.
#   pre_warmed_instance_count (int)        : The number of pre-warmed instances for this Logic App Only affects apps on the Premium plan.
#   runtime_scale_monitoring_enabled (bool): Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan. Defaults to 'false'.
#   use_32_bit_worker_process (bool)       : Should the Logic App run in 32 bit mode, rather than 64 bit mode? Defaults to 'true'.
#   vnet_route_all_enabled (bool)          : Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied.
#   websockets_enabled (bool)              : Should WebSockets be enabled?
#
# ip_restriction block structure    :
#   ip_address (string)               : The IP Address used for this IP Restriction in CIDR notation.
#   service_tag (string)              : The Service Tag used for this IP Restriction.
#   virtual_network_subnet_id (string): The Virtual Network Subnet ID used for this IP Restriction.
#   name (string)                     : The name for this IP Restriction.
#   priority (string)                 : The priority for this IP Restriction. Restrictions are enforced in priority order. By default, the priority is set to 65000 if not specified.
#   action (string)                   : Does this restriction 'Allow' or 'Deny' access for this IP range. Defaults to 'Allow'.
#   headers (block)                   : The 'headers' block for this specific as a 'ip_restriction' block.
#
# cors block structure        :
#   allowed_origins (list)      : (REQUIRED) A list of origins which should be able to make cross-origin calls. '*' can be used to allow all calls.
#   support_credentials (string): Are credentials supported?
#
# headers block structure   :
#   x_azure_fdid (list)       : A list of allowed Azure FrontDoor IDs in UUID notation with a maximum of 8.
#   x_fd_health_probe (string): A list to allow the Azure FrontDoor health probe header. Only allowed value is '1'.
#   x_forwarded_for (list)    : A list of allowed 'X-Forwarded-For' IPs in CIDR notation with a maximum of 8
#   x_forwarded_host (list)   : A list of allowed 'X-Forwarded-Host' domains with a maximum of 8.
#
# scm_ip_restriction block structure:
#   ip_address (string)               : The IP Address used for this IP Restriction in CIDR notation.
#   service_tag (string)              : The Service Tag used for this IP Restriction.
#   virtual_network_subnet_id (string): The Virtual Network Subnet ID used for this IP Restriction.
#   name (string)                     : The name for this IP Restriction.
#   priority (string)                 : The priority for this IP Restriction. Restrictions are enforced in priority order. By default, the priority is set to 65000 if not specified.
#   action (string)                   : Does this restriction 'Allow' or 'Deny' access for this IP range. Defaults to 'Allow'.
#   headers (string)                  : The 'headers' block for this specific 'ip_restriction' as defined below.


variable "storage_account_share_name" {
  description = "The name of the share used by the logic app, if you want to use a custom name. This corresponds to the WEBSITE_CONTENTSHARE appsetting, which this resource will create for you. If you don't specify a name, then this resource will generate a dynamic name. This setting is useful if you want to provision a storage account and create a share using azurerm_storage_share"
  type        = string
  default     = null
}
variable "version" {
  description = "The runtime version associated with the Logic App. Defaults to '~3'."
  type        = string
  default     = "~3"
}
variable "virtual_network_subnet_id" {
  description = "The subnet id which will be used by this resource for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration)."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "storage_account_resource_group_name" {
  description = "Specifies the name of the resource group the Storage Account is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
