# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the MySQL Server. Changing this forces a new resource to be created. This needs to be globally unique within Azure."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the MySQL Server. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) Specifies the SKU Name for this MySQL Server. The name of the SKU, follows the 'tier' + 'family' + 'cores' pattern (e.g. 'B_Gen4_1', 'GP_Gen5_8'). For more information see the [product documentation](https://docs.microsoft.com/azure/mysql/concepts-pricing-tiers). Possible values are 'B_Gen4_1', 'B_Gen4_2', 'B_Gen5_1', 'B_Gen5_2', 'GP_Gen4_2', 'GP_Gen4_4', 'GP_Gen4_8', 'GP_Gen4_16', 'GP_Gen4_32', 'GP_Gen5_2', 'GP_Gen5_4', 'GP_Gen5_8', 'GP_Gen5_16', 'GP_Gen5_32', 'GP_Gen5_64', 'MO_Gen5_2', 'MO_Gen5_4', 'MO_Gen5_8', 'MO_Gen5_16' and 'MO_Gen5_32'."
  type        = string

}
variable "version" {
  description = "(REQUIRED) Specifies the version of MySQL to use. Valid values are '5.7', or '8.0'. Changing this forces a new resource to be created."
  type        = string

}
variable "ssl_enforcement_enabled" {
  description = "(REQUIRED) Specifies if SSL should be enforced on connections. Possible values are 'true' and 'false'."
  type        = string

}

# OPTIONAL VARIABLES

variable "administrator_login" {
  description = "The Administrator login for the MySQL Server. Required when 'create_mode' is 'Default'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "auto_grow_enabled" {
  description = "Enable/Disable auto-growing of the storage. Storage auto-grow prevents your server from running out of storage and becoming read-only. If storage auto grow is enabled, the storage automatically grows without impacting the workload. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "backup_retention_days" {
  description = "Backup retention days for the server, supported values are between '7' and '35' days."
  type        = number
  default     = null
}
variable "create_mode" {
  description = "The creation mode. Can be used to restore or replicate existing servers. Possible values are 'Default', 'Replica', 'GeoRestore', and 'PointInTimeRestore'. Defaults to 'Default'."
  type        = string
  default     = "Default"
}
variable "creation_source_server_id" {
  description = "For creation modes other than 'Default', the source server ID to use."
  type        = string
  default     = null
}
variable "geo_redundant_backup_enabled" {
  description = "Turn Geo-redundant server backups on/off. This allows you to choose between locally redundant or geo-redundant backup storage in the General Purpose and Memory Optimized tiers. When the backups are stored in geo-redundant backup storage, they are not only stored within the region in which your server is hosted, but are also replicated to a paired data center. This provides better protection and ability to restore your server in a different region in the event of a disaster. This is not supported for the Basic tier."
  type        = bool
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this MySQL Server. The only possible value is 'SystemAssigned'.


variable "infrastructure_encryption_enabled" {
  description = "Whether or not infrastructure is encrypted for this server. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "public_network_access_enabled" {
  description = "Whether or not public network access is allowed for this server. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "restore_point_in_time" {
  description = "When 'create_mode' is 'PointInTimeRestore', specifies the point in time to restore from 'creation_source_server_id'. It should be provided in [RFC3339](https://www.rfc-editor.org/rfc/rfc3339) format, e.g. '2013-11-08T22:00:40Z'."
  type        = string
  default     = null
}
variable "ssl_minimal_tls_version_enforced" {
  description = "The minimum TLS version to support on the sever. Possible values are 'TLSEnforcementDisabled', 'TLS1_0', 'TLS1_1', and 'TLS1_2'. Defaults to 'TLS1_2'."
  type        = string
  default     = "TLS1_2"
}
variable "storage_mb" {
  description = "Max storage allowed for a server. Possible values are between '5120' MB(5GB) and '1048576' MB(1TB) for the Basic SKU and between '5120' MB(5GB) and '16777216' MB(16TB) for General Purpose/Memory Optimized SKUs. For more information see the [product documentation](https://docs.microsoft.com/azure/mysql/concepts-pricing-tiers)."
  type        = string
  default     = null
}
