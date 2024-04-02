# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the database. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the database. This must be the same as Database Server resource group currently. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) The name of the SQL Server on which to create the database. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "create_mode" {
  description = "Specifies how to create the database. Valid values are: 'Default', 'Copy', 'OnlineSecondary', 'NonReadableSecondary', 'PointInTimeRestore', 'Recovery', 'Restore' or 'RestoreLongTermRetentionBackup'. Must be 'Default' to create a new database. Defaults to 'Default'. Please see [Azure SQL Database REST API](https://docs.microsoft.com/rest/api/sql/databases/createorupdate#createmode)"
  type        = string
  default     = "Default"
}
variable "import" {
  description = "A 'import' block. 'create_mode' must be set to 'Default'."
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
#   operation_mode (string)              : Specifies the type of import operation being performed. The only allowable value is 'Import'. Defaults to 'Import'.


variable "source_database_id" {
  description = "The URI of the source database if 'create_mode' value is not 'Default'."
  type        = string
  default     = null
}
variable "restore_point_in_time" {
  description = "The point in time for the restore. Only applies if 'create_mode' is 'PointInTimeRestore', it should be provided in [RFC3339](https://www.rfc-editor.org/rfc/rfc3339) format, e.g. '2013-11-08T22:00:40Z'."
  type        = string
  default     = null
}
variable "edition" {
  description = "The edition of the database to be created. Applies only if 'create_mode' is 'Default'. Valid values are: 'Basic', 'Standard', 'Premium', 'DataWarehouse', 'Business', 'BusinessCritical', 'Free', 'GeneralPurpose', 'Hyperscale', 'Premium', 'PremiumRS', 'Standard', 'Stretch', 'System', 'System2', or 'Web'. Please see [Azure SQL database models](https://docs.microsoft.com/azure/azure-sql/database/purchasing-models?view=azuresql)."
  type        = string
  default     = null
}
variable "collation" {
  description = "The name of the collation. Applies only if 'create_mode' is 'Default'. Azure default is 'SQL_LATIN1_GENERAL_CP1_CI_AS'. Changing this forces a new resource to be created."
  type        = string
  default     = "SQL_LATIN1_GENERAL_CP1_CI_AS"
}
variable "max_size_bytes" {
  description = "The maximum size that the database can grow to. Applies only if 'create_mode' is 'Default'. Please see [Azure SQL database models](https://docs.microsoft.com/azure/azure-sql/database/purchasing-models?view=azuresql)."
  type        = number
  default     = null
}
variable "requested_service_objective_id" {
  description = "A GUID/UUID corresponding to a configured Service Level Objective for the Azure SQL database which can be used to configure a performance level. ."
  type        = string
  default     = null
}
variable "requested_service_objective_name" {
  description = "The service objective name for the database. Valid values depend on edition and location and may include 'S0', 'S1', 'S2', 'S3', 'P1', 'P2', 'P4', 'P6', 'P11' and 'ElasticPool'. You can list the available names with the CLI: 'shell az sql db list-editions -l westus -o table'. For further information please see [Azure CLI - az sql db](https://docs.microsoft.com/cli/azure/sql/db?view=azure-cli-latest#az-sql-db-list-editions)."
  type        = string
  default     = null
}
variable "source_database_deletion_date" {
  description = "The deletion date time of the source database. Only applies to deleted databases where 'create_mode' is 'PointInTimeRestore'."
  type        = string
  default     = null
}
variable "elastic_pool_name" {
  description = "The name of the elastic database pool."
  type        = string
  default     = null
}
