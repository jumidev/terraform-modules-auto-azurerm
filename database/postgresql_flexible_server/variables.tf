# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "administrator_login" {
  description = "The Administrator login for the PostgreSQL Flexible Server. Required when 'create_mode' is 'Default' and 'authentication.password_auth_enabled' is 'true'."
  type        = string
  default     = null
}
variable "authentication" {
  description = "An 'authentication' block."
  type        = map(any)
  default     = null
}
#
# authentication block structure      :
#   active_directory_auth_enabled (bool): Whether or not Active Directory authentication is allowed to access the PostgreSQL Flexible Server. Defaults to 'false'.
#   password_auth_enabled (bool)        : Whether or not password authentication is allowed to access the PostgreSQL Flexible Server. Defaults to 'true'.
#   tenant_id (string)                  : The Tenant ID of the Azure Active Directory which is used by the Active Directory authentication. 'active_directory_auth_enabled' must be set to 'true'.


variable "backup_retention_days" {
  description = "The backup retention days for the PostgreSQL Flexible Server. Possible values are between '7' and '35' days."
  type        = string
  default     = null
}
variable "customer_managed_key" {
  description = "A 'customer_managed_key' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# customer_managed_key block structure         :
#   key_vault_key_id (string)                    : The ID of the Key Vault Key.
#   primary_user_assigned_identity_id (string)   : Specifies the primary user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'.
#   geo_backup_key_vault_key_id (string)         : The ID of the geo backup Key Vault Key. It can't cross region and need Customer Managed Key in same region as geo backup.
#   geo_backup_user_assigned_identity_id (string): The geo backup user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'. It can't cross region and need identity in same region as geo backup.


variable "geo_redundant_backup_enabled" {
  description = "Is Geo-Redundant backup enabled on the PostgreSQL Flexible Server. Defaults to 'false'. Changing this forces a new PostgreSQL Flexible Server to be created."
  type        = bool
  default     = false
}
variable "create_mode" {
  description = "The creation mode which can be used to restore or replicate existing servers. Possible values are 'Default', 'PointInTimeRestore', 'Replica' and 'Update'."
  type        = string
  default     = null
}
variable "delegated_subnet_id" {
  description = "The ID of the virtual network subnet to create the PostgreSQL Flexible Server. The provided subnet should not have any other resource deployed in it and this subnet will be delegated to the PostgreSQL Flexible Server, if not already delegated. Changing this forces a new PostgreSQL Flexible Server to be created."
  type        = string
  default     = null
}
variable "private_dns_zone_id" {
  description = "The ID of the private DNS zone to create the PostgreSQL Flexible Server."
  type        = string
  default     = null
}
variable "high_availability" {
  description = "A 'high_availability' block."
  type        = map(any)
  default     = null
}
#
# high_availability block structure :
#   mode (string)                     : (REQUIRED) The high availability mode for the PostgreSQL Flexible Server. Possible value are 'SameZone' or 'ZoneRedundant'.
#   standby_availability_zone (string): Specifies the Availability Zone in which the standby Flexible Server should be located.


variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this PostgreSQL Flexible Server. The only possible value is 'UserAssigned'.
#   identity_ids (block)    : (REQUIRED) A list of User Assigned Managed Identity IDs to be assigned to this PostgreSQL Flexible Server. Required if used together with 'customer_managed_key' block.
#
# customer_managed_key block structure         :
#   key_vault_key_id (string)                    : The ID of the Key Vault Key.
#   primary_user_assigned_identity_id (string)   : Specifies the primary user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'.
#   geo_backup_key_vault_key_id (string)         : The ID of the geo backup Key Vault Key. It can't cross region and need Customer Managed Key in same region as geo backup.
#   geo_backup_user_assigned_identity_id (string): The geo backup user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'. It can't cross region and need identity in same region as geo backup.


variable "maintenance_window" {
  description = "A 'maintenance_window' block."
  type        = map(any)
  default     = null
}
#
# maintenance_window block structure:
#   day_of_week (string)              : The day of week for maintenance window, where the week starts on a Sunday, i.e. Sunday = '0', Monday = '1'. Defaults to '0'.
#   start_hour (string)               : The start hour for maintenance window. Defaults to '0'.
#   start_minute (string)             : The start minute for maintenance window. Defaults to '0'.


variable "point_in_time_restore_time_in_utc" {
  description = "The point in time to restore from 'source_server_id' when 'create_mode' is 'PointInTimeRestore'. Changing this forces a new PostgreSQL Flexible Server to be created."
  type        = string
  default     = null
}
variable "replication_role" {
  description = "The replication role for the PostgreSQL Flexible Server. Possible value is 'None'."
  type        = string
  default     = null
}
variable "sku_name" {
  description = "The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the 'tier' + 'name' pattern (e.g. 'B_Standard_B1ms', 'GP_Standard_D2s_v3', 'MO_Standard_E4s_v3')."
  type        = string
  default     = null
}
variable "source_server_id" {
  description = "The resource ID of the source PostgreSQL Flexible Server to be restored. Required when 'create_mode' is 'PointInTimeRestore' or 'Replica'. Changing this forces a new PostgreSQL Flexible Server to be created."
  type        = string
  default     = null
}
variable "auto_grow_enabled" {
  description = "Is the storage auto grow for PostgreSQL Flexible Server enabled? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "storage_mb" {
  description = "The max storage allowed for the PostgreSQL Flexible Server. Possible values are '32768', '65536', '131072', '262144', '524288', '1048576', '2097152', '4193280', '4194304', '8388608', '16777216' and '33553408'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the PostgreSQL Flexible Server."
  type        = map(any)
  default     = null
}
variable "version" {
  description = "The version of PostgreSQL Flexible Server to use. Possible values are '11','12', '13', '14', '15' and '16'. Required when 'create_mode' is 'Default'."
  type        = string
  default     = null
}
variable "zone" {
  description = "Specifies the Availability Zone in which the PostgreSQL Flexible Server should be located."
  type        = string
  default     = null
}
