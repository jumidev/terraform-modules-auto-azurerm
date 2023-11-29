# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the replication policy. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_vault_name" {
  description = "(REQUIRED) The name of the vault that should be updated. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_point_retention_in_minutes" {
  description = "(REQUIRED) The duration in minutes for which the recovery points need to be stored."
  type        = int

}
variable "application_consistent_snapshot_frequency_in_minutes" {
  description = "(REQUIRED) Specifies the frequency(in minutes) at which to create application consistent recovery points."
  type        = int

}
