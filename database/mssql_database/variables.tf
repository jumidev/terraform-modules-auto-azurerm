# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the MS SQL Database. Changing this forces a new resource to be created."
  type        = string

}
variable "server_id" {
  description = "(REQUIRED) The id of the MS SQL Server on which to create the database. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "auto_pause_delay_in_minutes" {
  description = "Time in minutes after which database is automatically paused. A value of '-1' means that automatic pause is disabled. This property is only settable for Serverless databases."
  type        = number
  default     = null
}
variable "create_mode" {
  description = "The create mode of the database. Possible values are 'Copy', 'Default', 'OnlineSecondary', 'PointInTimeRestore', 'Recovery', 'Restore', 'RestoreExternalBackup', 'RestoreExternalBackupSecondary', 'RestoreLongTermRetentionBackup' and 'Secondary'. Mutually exclusive with 'import'. Changing this forces a new resource to be created. Defaults to 'Default'."
  type        = string
  default     = "Default"
}
variable "import" {
  description = "A 'import' block. Mutually exclusive with 'create_mode'."
  type        = map(any)
  default     = null
}
#
# import block structure               :
#   storage_uri (string)                 : (REQUIRED) Specifies the blob URI of the .bacpac file.
#   storage_key (string)                 : (REQUIRED) Specifies the access key for the storage account.
#   storage_key_type (string)            : (REQUIRED) Specifies the type of access key for the storage account. Valid values are 'StorageAccessKey' or 'SharedAccessKey'.
#   administrator_login (string)         : (REQUIRED) Specifies the name of the SQL administrator.
#   administrator_login_password (string): (REQUIRED) Specifies the password of the SQL administrator.
#   authentication_type (string)         : (REQUIRED) Specifies the type of authentication used to access the server. Valid values are 'SQL' or 'ADPassword'.
#   storage_account_id (string)          : The resource id for the storage account used to store BACPAC file. If set, private endpoint connection will be created for the storage account. Must match storage account used for storage_uri parameter.


variable "creation_source_database_id" {
  description = "The ID of the source database from which to create the new database. This should only be used for databases with 'create_mode' values that use another database as reference. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "collation" {
  description = "Specifies the collation of the database. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "elastic_pool_id" {
  description = "Specifies the ID of the elastic pool containing this database."
  type        = string
  default     = null
}
variable "enclave_type" {
  description = "Specifies the type of enclave to be used by the database. Possible value 'VBS'."
  type        = string
  default     = null
}
variable "geo_backup_enabled" {
  description = "A boolean that specifies if the Geo Backup Policy is enabled. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "maintenance_configuration_name" {
  description = "The name of the Public Maintenance Configuration window to apply to the database. Valid values include 'SQL_Default', 'SQL_EastUS_DB_1', 'SQL_EastUS2_DB_1', 'SQL_SoutheastAsia_DB_1', 'SQL_AustraliaEast_DB_1', 'SQL_NorthEurope_DB_1', 'SQL_SouthCentralUS_DB_1', 'SQL_WestUS2_DB_1', 'SQL_UKSouth_DB_1', 'SQL_WestEurope_DB_1', 'SQL_EastUS_DB_2', 'SQL_EastUS2_DB_2', 'SQL_WestUS2_DB_2', 'SQL_SoutheastAsia_DB_2', 'SQL_AustraliaEast_DB_2', 'SQL_NorthEurope_DB_2', 'SQL_SouthCentralUS_DB_2', 'SQL_UKSouth_DB_2', 'SQL_WestEurope_DB_2', 'SQL_AustraliaSoutheast_DB_1', 'SQL_BrazilSouth_DB_1', 'SQL_CanadaCentral_DB_1', 'SQL_CanadaEast_DB_1', 'SQL_CentralUS_DB_1', 'SQL_EastAsia_DB_1', 'SQL_FranceCentral_DB_1', 'SQL_GermanyWestCentral_DB_1', 'SQL_CentralIndia_DB_1', 'SQL_SouthIndia_DB_1', 'SQL_JapanEast_DB_1', 'SQL_JapanWest_DB_1', 'SQL_NorthCentralUS_DB_1', 'SQL_UKWest_DB_1', 'SQL_WestUS_DB_1', 'SQL_AustraliaSoutheast_DB_2', 'SQL_BrazilSouth_DB_2', 'SQL_CanadaCentral_DB_2', 'SQL_CanadaEast_DB_2', 'SQL_CentralUS_DB_2', 'SQL_EastAsia_DB_2', 'SQL_FranceCentral_DB_2', 'SQL_GermanyWestCentral_DB_2', 'SQL_CentralIndia_DB_2', 'SQL_SouthIndia_DB_2', 'SQL_JapanEast_DB_2', 'SQL_JapanWest_DB_2', 'SQL_NorthCentralUS_DB_2', 'SQL_UKWest_DB_2', 'SQL_WestUS_DB_2', 'SQL_WestCentralUS_DB_1', 'SQL_FranceSouth_DB_1', 'SQL_WestCentralUS_DB_2', 'SQL_FranceSouth_DB_2', 'SQL_SwitzerlandNorth_DB_1', 'SQL_SwitzerlandNorth_DB_2', 'SQL_BrazilSoutheast_DB_1', 'SQL_UAENorth_DB_1', 'SQL_BrazilSoutheast_DB_2', 'SQL_UAENorth_DB_2'. Defaults to 'SQL_Default'."
  type        = string
  default     = "SQL_Default"
}
variable "ledger_enabled" {
  description = "A boolean that specifies if this is a ledger database. Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "license_type" {
  description = "Specifies the license type applied to this database. Possible values are 'LicenseIncluded' and 'BasePrice'."
  type        = string
  default     = null
}
variable "long_term_retention_policy" {
  description = "A 'long_term_retention_policy' block."
  type        = map(any)
  default     = null
}
#
# long_term_retention_policy block structure:
#   weekly_retention (string)                 : The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 520 weeks. e.g. 'P1Y', 'P1M', 'P1W' or 'P7D'.
#   monthly_retention (string)                : The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 120 months. e.g. 'P1Y', 'P1M', 'P4W' or 'P30D'.
#   yearly_retention (string)                 : The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 10 years. e.g. 'P1Y', 'P12M', 'P52W' or 'P365D'.
#   week_of_year (string)                     : The week of year to take the yearly backup. Value has to be between '1' and '52'.


variable "max_size_gb" {
  description = "The max size of the database in gigabytes."
  type        = number
  default     = null
}
variable "min_capacity" {
  description = "Minimal capacity that database will always have allocated, if not paused. This property is only settable for Serverless databases."
  type        = string
  default     = null
}
variable "restore_point_in_time" {
  description = "Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database. This property is only settable for 'create_mode'= 'PointInTimeRestore' databases."
  type        = string
  default     = null
}
variable "recover_database_id" {
  description = "The ID of the database to be recovered. This property is only applicable when the 'create_mode' is 'Recovery'."
  type        = string
  default     = null
}
variable "restore_dropped_database_id" {
  description = "The ID of the database to be restored. This property is only applicable when the 'create_mode' is 'Restore'."
  type        = string
  default     = null
}
variable "read_replica_count" {
  description = "The number of readonly secondary replicas associated with the database to which readonly application intent connections may be routed. This property is only settable for Hyperscale edition databases."
  type        = number
  default     = null
}
variable "read_scale" {
  description = "If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases."
  type        = string
  default     = null
}
variable "sample_name" {
  description = "Specifies the name of the sample schema to apply when creating this database. Possible value is 'AdventureWorksLT'."
  type        = string
  default     = null
}
variable "short_term_retention_policy" {
  description = "A 'short_term_retention_policy' block."
  type        = map(any)
  default     = null
}
#
# short_term_retention_policy block structure:
#   retention_days (number)                    : (REQUIRED) Point In Time Restore configuration. Value has to be between '1' and '35'.
#   backup_interval_in_hours (string)          : The hours between each differential backup. This is only applicable to live databases but not dropped databases. Value has to be '12' or '24'. Defaults to '12' hours.


variable "sku_name" {
  description = "Specifies the name of the SKU used by the database. For example, 'GP_S_Gen5_2','HS_Gen4_1','BC_Gen5_2', 'ElasticPool', 'Basic','S0', 'P2' ,'DW100c', 'DS100'. Changing this from the HyperScale service tier to another service tier will create a new resource."
  type        = string
  default     = null
}
variable "storage_account_type" {
  description = "Specifies the storage account type used to store backups for this database. Possible values are 'Geo', 'Local' and 'Zone'. Defaults to 'Geo'."
  type        = string
  default     = "Geo"
}
