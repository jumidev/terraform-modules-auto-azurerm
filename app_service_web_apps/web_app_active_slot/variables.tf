# REQUIRED VARIABLES

variable "slot_id" {
  description = "(REQUIRED) The ID of the Slot to swap with 'Production'."
  type        = string

}

# OPTIONAL VARIABLES

variable "overwrite_network_config" {
  description = "The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to 'true'. Changing this forces a new resource to be created."
  type        = bool
  default     = true
}
