# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this SQL Instance Failover Group. Changing this forces a new SQL Instance Failover Group to be created."
  type        = string

}
variable "managed_instance_name" {
  description = "(REQUIRED) The name of the SQL Managed Instance which will be replicated using a SQL Instance Failover Group. Changing this forces a new SQL Instance Failover Group to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the SQL Instance Failover Group exists. Changing this forces a new resource to be created."
  type        = string

}
variable "partner_managed_instance_id" {
  description = "(REQUIRED) ID of the SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created."
  type        = string

}
variable "read_write_endpoint_failover_policy" {
  description = "(REQUIRED) A 'read_write_endpoint_failover_policy' block."
  type        = map(any)
}
#
# read_write_endpoint_failover_policy block structure:
#   mode (string)                                      : (REQUIRED) The failover mode. Possible values are 'Manual', 'Automatic'
#   grace_minutes (int)                                : Applies only if 'mode' is 'Automatic'. The grace period in minutes before failover with data loss is attempted.


variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the SQL Instance Failover Group should exist. Changing this forces a new SQL Instance Failover Group to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "readonly_endpoint_failover_policy_enabled" {
  description = "Failover policy for the read-only endpoint. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "sql_server_resource_group_name" {
  description = "Specifies the name of the Resource Group where the SQL Server exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
