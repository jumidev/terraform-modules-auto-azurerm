# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Kubernetes Fleet Update Strategy. Changing this forces a new Kubernetes Fleet Update Strategy to be created."
  type        = string

}
variable "kubernetes_fleet_manager_id" {
  description = "(REQUIRED) The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Strategy to be created."
  type        = string

}
variable "stages" {
  description = "(REQUIRED) One or more 'stage' blocks."
  type        = map(map(any))
}
#
# stage block structure               :
#   group (block)                       : (REQUIRED) One or more 'group' blocks.
#   name (string)                       : (REQUIRED) The name which should be used for this stage.
#   after_stage_wait_in_seconds (number): Specifies the time in seconds to wait at the end of this stage before starting the next one.
#
# group block structure:
#   name (string)        : (REQUIRED) The name which should be used for this group.


