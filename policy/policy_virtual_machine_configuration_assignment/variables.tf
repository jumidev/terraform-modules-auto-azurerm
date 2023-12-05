# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Guest Configuration that will be assigned in this Guest Configuration Assignment. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure location where the Policy Virtual Machine Configuration Assignment should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_machine_id" {
  description = "(REQUIRED) The resource ID of the Policy Virtual Machine which this Guest Configuration Assignment should apply to. Changing this forces a new resource to be created."
  type        = string

}
variable "configuration" {
  description = "(REQUIRED) A 'configuration' block."
  type        = map(any)
}
#
# configuration block structure:
#   assignment_type (string)     : The assignment type for the Guest Configuration Assignment. Possible values are 'Audit', 'ApplyAndAutoCorrect', 'ApplyAndMonitor' and 'DeployAndAutoCorrect'.
#   content_hash (string)        : The content hash for the Guest Configuration package.
#   content_uri (string)         : The content URI where the Guest Configuration package is stored.
#   parameter (block)            : One or more 'parameter' blocks which define what configuration parameters and values against.
#   version (string)             : The version of the Guest Configuration that will be assigned in this Guest Configuration Assignment.
#
# parameter block structure:
#   name (string)            : (REQUIRED) The name of the configuration parameter to check.
#   value (string)           : (REQUIRED) The value to check the configuration parameter with.


