# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Failover Group. Changing this forces a new resource to be created."
  type        = string

}
variable "server_id" {
  description = "(REQUIRED) The ID of the primary SQL Server on which to create the failover group. Changing this forces a new resource to be created."
  type        = string

}
variable "partner_server" {
  description = "(REQUIRED) A 'partner_server' block."
  type        = map(any)
}
#
# partner_server block structure:


variable "read_write_endpoint_failover_policy" {
  description = "(REQUIRED) A 'read_write_endpoint_failover_policy' block."
  type        = map(any)
}
#
# read_write_endpoint_failover_policy block structure:
#   mode (string)                                      : (REQUIRED) The failover policy of the read-write endpoint for the failover group. Possible values are 'Automatic' or 'Manual'.
#   grace_minutes (int)                                : The grace period in minutes, before failover with data loss is attempted for the read-write endpoint. Required when 'mode' is 'Automatic'.



# OPTIONAL VARIABLES

variable "databases" {
  description = "A set of database names to include in the failover group."
  type        = string
  default     = null
}
variable "readonly_endpoint_failover_policy_enabled" {
  description = "Whether failover is enabled for the readonly endpoint. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
