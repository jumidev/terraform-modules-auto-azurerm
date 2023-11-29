# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the failover group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group containing the SQL server Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) The name of the primary SQL server. Changing this forces a new resource to be created."
  type        = string

}
variable "partner_servers" {
  description = "(REQUIRED) A list of 'partner_servers' blocks."
  type        = map(map(any))
}
#
# partner_servers block structure:


variable "read_write_endpoint_failover_policy" {
  description = "(REQUIRED) A 'read_write_endpoint_failover_policy' block."
  type        = map(any)
}
#
# read_write_endpoint_failover_policy block structure:
#   mode (string)                                      : (REQUIRED) the failover mode. Possible values are 'Manual', 'Automatic'
#   grace_minutes (int)                                : Applies only if 'mode' is 'Automatic'. The grace period in minutes before failover with data loss is attempted



# OPTIONAL VARIABLES

variable "databases" {
  description = "A list of database ids to add to the failover group"
  type        = list(any)
  default     = []
}
variable "readonly_endpoint_failover_policy" {
  description = "A 'readonly_endpoint_failover_policy' block."
  type        = map(any)
  default     = null
}
#
# readonly_endpoint_failover_policy block structure:
#   mode (string)                                    : (REQUIRED) Failover policy for the read-only endpoint. Possible values are 'Enabled', and 'Disabled'


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "sql_server_resource_group_name" {
  description = "Specifies the name of the Resource Group where the SQL Server exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
