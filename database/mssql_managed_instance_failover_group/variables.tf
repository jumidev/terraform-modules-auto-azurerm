# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Managed Instance Failover Group. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "managed_instance_id" {
  description = "(REQUIRED) The ID of the Azure SQL Managed Instance which will be replicated using a Managed Instance Failover Group. Changing this forces a new resource to be created."
  type        = string

}
variable "partner_managed_instance_id" {
  description = "(REQUIRED) The ID of the Azure SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created."
  type        = string

}
variable "read_write_endpoint_failover_policy" {
  description = "(REQUIRED) A 'read_write_endpoint_failover_policy' block."
  type        = map(any)
}
#
# read_write_endpoint_failover_policy block structure:
#   mode (string)                                      : (REQUIRED) The failover mode. Possible values are 'Automatic' or 'Manual'.
#   grace_minutes (number)                             : Applies only if 'mode' is 'Automatic'. The grace period in minutes before failover with data loss is attempted.



# OPTIONAL VARIABLES

variable "readonly_endpoint_failover_policy_enabled" {
  description = "Failover policy for the read-only endpoint. Defaults to 'true'."
  type        = bool
  default     = true
}
