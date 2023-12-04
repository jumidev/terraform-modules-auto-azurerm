# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Synapse SQL Pool. Changing this forces a new Synapse SQL Pool to be created."
  type        = string

}
variable "synapse_workspace_id" {
  description = "(REQUIRED) The ID of Synapse Workspace within which this SQL Pool should be created. Changing this forces a new Synapse SQL Pool to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) Specifies the SKU Name for this Synapse SQL Pool. Possible values are 'DW100c', 'DW200c', 'DW300c', 'DW400c', 'DW500c', 'DW1000c', 'DW1500c', 'DW2000c', 'DW2500c', 'DW3000c', 'DW5000c', 'DW6000c', 'DW7500c', 'DW10000c', 'DW15000c' or 'DW30000c'."
  type        = string

}

# OPTIONAL VARIABLES

variable "create_mode" {
  description = "Specifies how to create the SQL Pool. Valid values are: 'Default', 'Recovery' or 'PointInTimeRestore'. Must be 'Default' to create a new database. Defaults to 'Default'. Changing this forces a new Synapse SQL Pool to be created."
  type        = string
  default     = "Default"
}
variable "collation" {
  description = "The name of the collation to use with this pool, only applicable when 'create_mode' is set to 'Default'. Azure default is 'SQL_LATIN1_GENERAL_CP1_CI_AS'. Changing this forces a new Synapse SQL Pool to be created."
  type        = string
  default     = "SQL_LATIN1_GENERAL_CP1_CI_AS"
}
variable "data_encrypted" {
  description = "Is transparent data encryption enabled?"
  type        = bool
  default     = null
}
variable "recovery_database_id" {
  description = "The ID of the Synapse SQL Pool or SQL Database which is to back up, only applicable when 'create_mode' is set to 'Recovery'. Changing this forces a new Synapse SQL Pool to be created."
  type        = string
  default     = null
}
variable "restore" {
  description = "A 'restore' block. Only applicable when 'create_mode' is set to 'PointInTimeRestore'. Changing this forces a new Synapse SQL Pool to be created."
  type        = map(any)
  default     = null
}
#
# restore block structure    :
#   source_database_id (string): (REQUIRED) The ID of the Synapse SQL Pool or SQL Database which is to restore. Changing this forces a new Synapse SQL Pool to be created.
#   point_in_time (string)     : (REQUIRED) Specifies the Snapshot time to restore formatted as an RFC3339 date string. Changing this forces a new Synapse SQL Pool to be created.


variable "geo_backup_policy_enabled" {
  description = "Is geo-backup policy enabled? Possible values include 'true' or 'false'. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "storage_account_type" {
  description = "The storage account type that will be used to store backups for this Synapse SQL Pool. Possible values are 'LRS' or 'GRS'. Changing this forces a new Synapse SQL Pool to be created. Defaults to 'GRS'."
  type        = string
  default     = "GRS"
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Synapse SQL Pool."
  type        = map(any)
  default     = null
}
