# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Backup Instance PostgreSQL. Changing this forces a new Backup Instance PostgreSQL to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location of the source database. Changing this forces a new Backup Instance PostgreSQL to be created."
  type        = string

}
variable "vault_id" {
  description = "(REQUIRED) The ID of the Backup Vault within which the PostgreSQL Backup Instance should exist. Changing this forces a new Backup Instance PostgreSQL to be created."
  type        = string

}
variable "database_id" {
  description = "(REQUIRED) The ID of the source database. Changing this forces a new Backup Instance PostgreSQL to be created."
  type        = string

}
variable "backup_policy_id" {
  description = "(REQUIRED) The ID of the Backup Policy."
  type        = string

}

# OPTIONAL VARIABLES

variable "database_credential_key_vault_secret_id" {
  description = "The ID or versionless ID of the key vault secret which stores the connection string of the database."
  type        = string
  default     = null
}
