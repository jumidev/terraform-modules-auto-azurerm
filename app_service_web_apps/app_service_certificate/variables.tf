# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "pfx_blob" {
  description = "The base64-encoded contents of the certificate. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "password" {
  description = "The password to access the certificate's private key. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "app_service_plan_id" {
  description = "The ID of the associated App Service plan. Must be specified when the certificate is used inside an App Service Environment hosted App Service. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "key_vault_secret_id" {
  description = "The ID of the Key Vault secret. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
