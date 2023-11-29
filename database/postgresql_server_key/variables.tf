# REQUIRED VARIABLES

variable "server_id" {
  description = "(REQUIRED) The ID of the PostgreSQL Server. Changing this forces a new resource to be created."
  type        = string

}
variable "key_vault_key_id" {
  description = "(REQUIRED) The URL to a Key Vault Key."
  type        = string

}
