# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "administrator_login" {
  description = "The Administrator login for the MySQL Flexible Server. Required when 'create_mode' is 'Default'. Changing this forces a new MySQL Flexible Server to be created."
  type        = string
  default     = null
}
variable "backup_retention_days" {
  description = "The backup retention days for the MySQL Flexible Server. Possible values are between '1' and '35' days. Defaults to '7'."
  type        = number
  default     = 7
}
variable "create_mode" {
  description = "The creation mode which can be used to restore or replicate existing servers. Possible values are 'Default', 'PointInTimeRestore', 'GeoRestore', and 'Replica'. Changing this forces a new MySQL Flexible Server to be created."
  type        = string
  default     = null
}
variable "customer_managed_key" {
  description = "A 'customer_managed_key' block."
  type        = map(any)
  default     = null
}
#
# customer_managed_key block structure         :
#   key_vault_key_id (string)                    : The ID of the Key Vault Key.
#   primary_user_assigned_identity_id (string)   : Specifies the primary user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'.
#   geo_backup_key_vault_key_id (string)         : The ID of the geo backup Key Vault Key. It can't cross region and need Customer Managed Key in same region as geo backup.
#   geo_backup_user_assigned_identity_id (string): The geo backup user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'. It can't cross region and need identity in same region as geo backup.


variable "delegated_subnet_id" {
  description = "The ID of the virtual network subnet to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created."
  type        = string
  default     = null
}
variable "geo_redundant_backup_enabled" {
  description = "Should geo redundant backup enabled? Defaults to 'false'. Changing this forces a new MySQL Flexible Server to be created."
  type        = bool
  default     = false
}
variable "high_availability" {
  description = "A 'high_availability' block."
  type        = map(any)
  default     = null
}
#
# high_availability block structure :
#   mode (string)                     : (REQUIRED) The high availability mode for the MySQL Flexible Server. Possibles values are 'SameZone' and 'ZoneRedundant'.
#   standby_availability_zone (string): Specifies the Availability Zone in which the standby Flexible Server should be located. Possible values are '1', '2' and '3'.


variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this MySQL Flexible Server. The only possible value is 'UserAssigned'.
#   identity_ids (list)     : (REQUIRED) A list of User Assigned Managed Identity IDs to be assigned to this MySQL Flexible Server.


variable "maintenance_window" {
  description = "A 'maintenance_window' block."
  type        = map(any)
  default     = null
}
#
# maintenance_window block structure:
#   day_of_week (string)              : The day of week for maintenance window. Defaults to '0'.
#   start_hour (string)               : The start hour for maintenance window. Defaults to '0'.
#   start_minute (string)             : The start minute for maintenance window. Defaults to '0'.


variable "point_in_time_restore_time_in_utc" {
  description = "The point in time to restore from 'creation_source_server_id' when 'create_mode' is 'PointInTimeRestore'. Changing this forces a new MySQL Flexible Server to be created."
  type        = string
  default     = null
}
variable "private_dns_zone_id" {
  description = "The ID of the private DNS zone to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created."
  type        = string
  default     = null
}
variable "replication_role" {
  description = "The replication role. Possible value is 'None'."
  type        = string
  default     = null
}
variable "sku_name" {
  description = "The SKU Name for the MySQL Flexible Server."
  type        = string
  default     = null
}
variable "source_server_id" {
  description = "The resource ID of the source MySQL Flexible Server to be restored. Required when 'create_mode' is 'PointInTimeRestore', 'GeoRestore', and 'Replica'. Changing this forces a new MySQL Flexible Server to be created."
  type        = string
  default     = null
}
variable "storage" {
  description = "A 'storage' block."
  type        = map(any)
  default     = null
}
#
# storage block structure  :
#   auto_grow_enabled (bool) : Should Storage Auto Grow be enabled? Defaults to 'true'.
#   io_scaling_enabled (bool): Should IOPS be scaled automatically? If 'true', 'iops' can not be set. Defaults to 'false'.
#   iops (number)            : The storage IOPS for the MySQL Flexible Server. Possible values are between '360' and '20000'.
#   size_gb (number)         : The max storage allowed for the MySQL Flexible Server. Possible values are between '20' and '16384'.


variable "version" {
  description = "The version of the MySQL Flexible Server to use. Possible values are '5.7', and '8.0.21'. Changing this forces a new MySQL Flexible Server to be created."
  type        = string
  default     = null
}
variable "zone" {
  description = "Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are '1', '2' and '3'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the MySQL Flexible Server."
  type        = map(any)
  default     = null
}
