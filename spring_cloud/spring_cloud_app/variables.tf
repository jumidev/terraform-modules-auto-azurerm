# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Spring Cloud Application. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the resource group in which to create the Spring Cloud Application. Changing this forces a new resource to be created."
  type        = string

}
variable "service_name" {
  description = "(REQUIRED) Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "addon_json" {
  description = "A JSON object that contains the addon configurations of the Spring Cloud Service."
  type        = string
  default     = null
}
variable "custom_persistent_disk" {
  description = "A 'custom_persistent_disk' block."
  type        = map(any)
  default     = null
}
#
# custom_persistent_disk block structure:
#   storage_name (string)                 : (REQUIRED) The name of the Spring Cloud Storage.
#   mount_path (string)                   : (REQUIRED) The mount path of the persistent disk.
#   share_name (string)                   : (REQUIRED) The share name of the Azure File share.
#   mount_options (string)                : These are the mount options for a persistent disk.
#   read_only_enabled (bool)              : Indicates whether the persistent disk is a readOnly one.


variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Spring Cloud Application. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this Spring Cloud Application.


variable "is_public" {
  description = "Does the Spring Cloud Application have public endpoint? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "https_only" {
  description = "Is only HTTPS allowed? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "ingress_settings" {
  description = "An 'ingress_settings' block."
  type        = map(any)
  default     = null
}
#
# ingress_settings block structure:
#   backend_protocol (string)       : Specifies how ingress should communicate with this app backend service. Allowed values are 'GRPC' and 'Default'. Defaults to 'Default'.
#   read_timeout_in_seconds (number): Specifies the ingress read time out in seconds. Defaults to '300'.
#   send_timeout_in_seconds (number): Specifies the ingress send time out in seconds. Defaults to '60'.
#   session_affinity (string)       : Specifies the type of the affinity, set this to 'Cookie' to enable session affinity. Allowed values are 'Cookie' and 'None'. Defaults to 'None'.
#   session_cookie_max_age (string) : Specifies the time in seconds until the cookie expires.


variable "persistent_disk" {
  description = "An 'persistent_disk' block."
  type        = map(any)
  default     = null
}
#
# persistent_disk block structure:
#   size_in_gb (number)            : (REQUIRED) Specifies the size of the persistent disk in GB. Possible values are between '0' and '50'.
#   mount_path (string)            : Specifies the mount path of the persistent disk. Defaults to '/persistent'.


variable "public_endpoint_enabled" {
  description = "Should the App in vnet injection instance exposes endpoint which could be accessed from Internet?"
  type        = bool
  default     = null
}
variable "tls_enabled" {
  description = "Is End to End TLS Enabled? Defaults to 'false'."
  type        = bool
  default     = false
}

# OPTIONAL VARIABLES

variable "spring_cloud_app_cosmosdb_association" {
  type    = map(any)
  default = null
}

# OPTIONAL VARIABLES

variable "spring_cloud_app_redis_association" {
  type    = map(any)
  default = null
}

# OPTIONAL VARIABLES

variable "spring_cloud_app_mysql_association" {
  type    = map(any)
  default = null
}
