# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Recovery Service. Changing this forces a new Site to be created."
  type        = string

}
variable "recovery_vault_id" {
  description = "(REQUIRED) The ID of the Recovery Services Vault where the Site created. Changing this forces a new Site to be created."
  type        = string

}
