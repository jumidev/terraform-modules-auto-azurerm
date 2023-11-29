# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Classic Replication Policy. Changing this forces a new Replication Policy to be created."
  type        = string

}
variable "recovery_vault_id" {
  description = "(REQUIRED) ID of the Recovery Services Vault. Changing this forces a new Replication Policy to be created."
  type        = string

}
variable "recovery_point_retention_in_minutes" {
  description = "(REQUIRED) Specifies the period up to which the recovery points will be retained. Must between '0' to '21600'."
  type        = int

}
variable "application_consistent_snapshot_frequency_in_minutes" {
  description = "(REQUIRED) Specifies the frequency at which to create application consistent recovery points. Must between '0' to '720'."
  type        = int

}
