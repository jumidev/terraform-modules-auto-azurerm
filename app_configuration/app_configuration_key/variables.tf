# REQUIRED VARIABLES

variable "configuration_store_id" {
  description = "(REQUIRED) Specifies the id of the App Configuration. Changing this forces a new resource to be created."
  type        = string

}
variable "key" {
  description = "(REQUIRED) The name of the App Configuration Key to create. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "content_type" {
  description = "The content type of the App Configuration Key. This should only be set when type is set to 'kv'."
  type        = string
  default     = null
}
variable "label" {
  description = "The label of the App Configuration Key. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "value" {
  description = "The value of the App Configuration Key. This should only be set when type is set to 'kv'."
  type        = string
  default     = null
}
variable "locked" {
  description = "Should this App Configuration Key be Locked to prevent changes?"
  type        = string
  default     = null
}
variable "type" {
  description = "The type of the App Configuration Key. It can either be 'kv' (simple [key/value](https://docs.microsoft.com/azure/azure-app-configuration/concept-key-value)) or 'vault' (where the value is a reference to a [Key Vault Secret](https://azure.microsoft.com/en-gb/services/key-vault/). Defaults to 'kv'."
  type        = string
  default     = "kv"
}
variable "vault_key_reference" {
  description = "The ID of the vault secret this App Configuration Key refers to, when 'type' is set to 'vault'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
