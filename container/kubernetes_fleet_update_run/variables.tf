# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Kubernetes Fleet Update Run. Changing this forces a new Kubernetes Fleet Update Run to be created."
  type        = string

}
variable "kubernetes_fleet_manager_id" {
  description = "(REQUIRED) The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Run to be created."
  type        = string

}
variable "managed_cluster_update" {
  description = "(REQUIRED) A 'managed_cluster_update' block."
  type        = map(any)
}
#
# managed_cluster_update block structure:
#   upgrade (block)                       : (REQUIRED) A 'upgrade' block.
#   node_image_selection (block)          : A 'node_image_selection' block.
#
# upgrade block structure    :
#   type (string)              : (REQUIRED) Specifies the type of upgrade to perform. Possible values are 'Full' and 'NodeImageOnly'.
#   kubernetes_version (string): Specifies the Kubernetes version to upgrade the member clusters to. This is required if 'type' is set to 'Full'.
#
# node_image_selection block structure:
#   type (string)                       : (REQUIRED) Specifies the node image upgrade type. Possible values are 'Latest' and 'Consistent'.



# OPTIONAL VARIABLES

variable "fleet_update_strategy_id" {
  description = "The ID of the Fleet Update Strategy. Only one of 'fleet_update_strategy_id' or 'stage' can be specified."
  type        = string
  default     = null
}
variable "stages" {
  description = "One or more 'stage' blocks. Only one of 'stage' or 'fleet_update_strategy_id' can be specified."
  type        = map(map(any))
  default     = null
}
#
# stage block structure               :
#   group (block)                       : (REQUIRED) One or more 'group' blocks.
#   name (string)                       : (REQUIRED) The name which should be used for this stage.
#   after_stage_wait_in_seconds (number): Specifies the time in seconds to wait at the end of this stage before starting the next one.
#
# group block structure:
#   name (string)        : (REQUIRED) The name which should be used for this group.


