# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the replication policy. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_vault_id" {
  description = "(REQUIRED) The id of the vault that should be updated. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_point_retention_in_hours" {
  description = "(REQUIRED) The duration in hours for which the recovery points need to be stored."
  type        = string

}
variable "application_consistent_snapshot_frequency_in_hours" {
  description = "(REQUIRED) Specifies the frequency at which to create application consistent recovery points."
  type        = string

}
variable "replication_interval_in_seconds" {
  description = "(REQUIRED) Specifies how frequently data should be synchronized between source and target locations. Possible values are '30' and '300'."
  type        = string

}
