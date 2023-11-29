# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Spring Cloud Certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the resource group in which to create the Spring Cloud Certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "service_name" {
  description = "(REQUIRED) Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "exclude_private_key" {
  description = "Specifies whether the private key should be excluded from the Key Vault Certificate. Changing this forces a new resource to be created. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "key_vault_certificate_id" {
  description = "Specifies the ID of the Key Vault Certificate resource. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "certificate_content" {
  description = "The content of uploaded certificate. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
