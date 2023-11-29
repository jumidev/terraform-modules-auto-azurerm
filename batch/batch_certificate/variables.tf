# REQUIRED VARIABLES

variable "account_name" {
  description = "(REQUIRED) Specifies the name of the Batch account. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created."
  type        = string

}
variable "certificate" {
  description = "(REQUIRED) The base64-encoded contents of the certificate."
  type        = string

}
variable "format" {
  description = "(REQUIRED) The format of the certificate. Possible values are 'Cer' or 'Pfx'."
  type        = string

}
variable "thumbprint" {
  description = "(REQUIRED) The thumbprint of the certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "thumbprint_algorithm" {
  description = "(REQUIRED) The algorithm of the certificate thumbprint. At this time the only supported value is 'SHA1'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "password" {
  description = "The password to access the certificate's private key. This can only be specified when 'format' is 'Pfx'."
  type        = string
  default     = null
}
