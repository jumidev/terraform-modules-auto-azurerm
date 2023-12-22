# REQUIRED VARIABLES

variable "virtual_machine_id" {
  description = "(REQUIRED) The ID of the Virtual Machine. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "sql_license_type" {
  description = "The SQL Server license type. Possible values are 'AHUB' (Azure Hybrid Benefit), 'DR' (Disaster Recovery), and 'PAYG' (Pay-As-You-Go). Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "auto_backup" {
  description = "An 'auto_backup' block. This block can be added to an existing resource, but removing this block forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# auto_backup block structure           :
#   encryption_enabled (bool)             : Enable or disable encryption for backups. Defaults to 'false'.
#   encryption_password (string)          : Encryption password to use. Must be specified when encryption is enabled.
#   manual_schedule (block)               : A 'manual_schedule' block. When this block is present, the schedule type is set to 'Manual'. Without this block, the schedule type is set to 'Automated'.
#   retention_period_in_days (number)     : (REQUIRED) Retention period of backups, in days. Valid values are from '1' to '30'.
#   storage_blob_endpoint (string)        : (REQUIRED) Blob endpoint for the storage account where backups will be kept.
#   storage_account_access_key (string)   : (REQUIRED) Access key for the storage account where backups will be kept.
#   system_databases_backup_enabled (bool): Include or exclude system databases from auto backup.
#
# manual_schedule block structure         :
#   full_backup_frequency (string)          : (REQUIRED) Frequency of full backups. Valid values include 'Daily' or 'Weekly'.
#   full_backup_start_hour (string)         : (REQUIRED) Start hour of a given day during which full backups can take place. Valid values are from '0' to '23'.
#   full_backup_window_in_hours (string)    : (REQUIRED) Duration of the time window of a given day during which full backups can take place, in hours. Valid values are between '1' and '23'.
#   log_backup_frequency_in_minutes (number): (REQUIRED) Frequency of log backups, in minutes. Valid values are from '5' to '60'.
#   days_of_week (number)                   : A list of days on which backup can take place. Possible values are 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' and 'Sunday'


variable "auto_patching" {
  description = "An 'auto_patching' block."
  type        = map(any)
  default     = null
}
#
# auto_patching block structure                  :
#   day_of_week (string)                           : (REQUIRED) The day of week to apply the patch on. Possible values are 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' and 'Sunday'.
#   maintenance_window_starting_hour (string)      : (REQUIRED) The Hour, in the Virtual Machine Time-Zone when the patching maintenance window should begin.
#   maintenance_window_duration_in_minutes (number): (REQUIRED) The size of the Maintenance Window in minutes.


variable "key_vault_credential" {
  description = "An 'key_vault_credential' block."
  type        = map(any)
  default     = null
}
#
# key_vault_credential block structure:
#   name (string)                       : (REQUIRED) The credential name.
#   key_vault_url (string)              : (REQUIRED) The Azure Key Vault url. Changing this forces a new resource to be created.
#   service_principal_name (string)     : (REQUIRED) The service principal name to access key vault. Changing this forces a new resource to be created.
#   service_principal_secret (string)   : (REQUIRED) The service principal name secret to access key vault. Changing this forces a new resource to be created.


variable "r_services_enabled" {
  description = "Should R Services be enabled?"
  type        = bool
  default     = null
}
variable "sql_connectivity_port" {
  description = "The SQL Server port. Defaults to '1433'."
  type        = string
  default     = "1433"
}
variable "sql_connectivity_type" {
  description = "The connectivity type used for this SQL Server. Possible values are 'LOCAL', 'PRIVATE' and 'PUBLIC'. Defaults to 'PRIVATE'."
  type        = string
  default     = "PRIVATE"
}
variable "sql_connectivity_update_username" {
  description = "The SQL Server sysadmin login to create."
  type        = string
  default     = null
}
variable "sql_instance" {
  description = "A 'sql_instance' block."
  type        = map(any)
  default     = null
}
#
# sql_instance block structure               :
#   adhoc_workloads_optimization_enabled (bool): Specifies if the SQL Server is optimized for adhoc workloads. Possible values are 'true' and 'false'. Defaults to 'false'.
#   collation (string)                         : Collation of the SQL Server. Defaults to 'SQL_Latin1_General_CP1_CI_AS'. Changing this forces a new resource to be created.
#   instant_file_initialization_enabled (bool) : Specifies if Instant File Initialization is enabled for the SQL Server. Possible values are 'true' and 'false'. Defaults to 'false'. Changing this forces a new resource to be created.
#   lock_pages_in_memory_enabled (bool)        : Specifies if Lock Pages in Memory is enabled for the SQL Server. Possible values are 'true' and 'false'. Defaults to 'false'. Changing this forces a new resource to be created.
#   max_dop (number)                           : Maximum Degree of Parallelism of the SQL Server. Possible values are between '0' and '32767'. Defaults to '0'.
#   max_server_memory_mb (number)              : Maximum amount memory that SQL Server Memory Manager can allocate to the SQL Server process. Possible values are between '128' and '2147483647' Defaults to '2147483647'.
#   min_server_memory_mb (number)              : Minimum amount memory that SQL Server Memory Manager can allocate to the SQL Server process. Possible values are between '0' and '2147483647' Defaults to '0'.


variable "storage_configuration" {
  description = "An 'storage_configuration' block."
  type        = map(any)
  default     = null
}
#
# storage_configuration block structure:
#   disk_type (string)                   : (REQUIRED) The type of disk configuration to apply to the SQL Server. Valid values include 'NEW', 'EXTEND', or 'ADD'.
#   storage_workload_type (string)       : (REQUIRED) The type of storage workload. Valid values include 'GENERAL', 'OLTP', or 'DW'.
#   data_settings (block)                : A 'storage_settings' block.
#   log_settings (block)                 : A 'storage_settings' block.
#   system_db_on_data_disk_enabled (bool): Specifies whether to set system databases (except tempDb) location to newly created data storage. Possible values are 'true' and 'false'. Defaults to 'false'.
#   temp_db_settings (block)             : An 'temp_db_settings' block.
#
# temp_db_settings block structure:
#   default_file_path (string)      : (REQUIRED) The SQL Server default path
#   luns (list)                     : (REQUIRED) A list of Logical Unit Numbers for the disks.
#   data_file_count (number)        : The SQL Server default file count. This value defaults to '8'
#   data_file_size_mb (number)      : The SQL Server default file size - This value defaults to '256'
#   data_file_growth_in_mb (number) : The SQL Server default file size - This value defaults to '512'
#   log_file_size_mb (number)       : The SQL Server default file size - This value defaults to '256'
#   log_file_growth_mb (number)     : The SQL Server default file size - This value defaults to '512'
#
# storage_settings block structure:
#   default_file_path (string)      : (REQUIRED) The SQL Server default path
#   luns (list)                     : (REQUIRED) A list of Logical Unit Numbers for the disks.


variable "assessment" {
  description = "An 'assessment' block."
  type        = map(any)
  default     = null
}
#
# assessment block structure:
#   enabled (bool)            : Should Assessment be enabled? Defaults to 'true'.
#   run_immediately (bool)    : Should Assessment be run immediately? Defaults to 'false'.
#   schedule (block)          : An 'schedule' block.
#
# schedule block structure   :
#   weekly_interval (string)   : How many weeks between assessment runs. Valid values are between '1' and '6'.
#   monthly_occurrence (string): How many months between assessment runs. Valid values are between '1' and '5'.
#   day_of_week (string)       : (REQUIRED) What day of the week the assessment will be run. Possible values are 'Friday', 'Monday', 'Saturday', 'Sunday', 'Thursday', 'Tuesday' and 'Wednesday'.
#   start_time (string)        : (REQUIRED) What time the assessment will be run. Must be in the format 'HH:mm'.


variable "sql_virtual_machine_group_id" {
  description = "The ID of the SQL Virtual Machine Group that the SQL Virtual Machine belongs to."
  type        = string
  default     = null
}
variable "wsfc_domain_credential" {
  description = "A 'wsfc_domain_credential' block"
  type        = map(any)
  default     = null
}
#
# wsfc_domain_credential block structure     :
#   cluster_bootstrap_account_password (string): (REQUIRED) The account password used for creating cluster.
#   cluster_operator_account_password (string) : (REQUIRED) The account password used for operating cluster.
#   sql_service_account_password (string)      : (REQUIRED) The account password under which SQL service will run on all participating SQL virtual machines in the cluster.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
