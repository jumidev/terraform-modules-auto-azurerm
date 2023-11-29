# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Attestation Provider. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the attestation provider should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Attestation Provider should exist. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "policy_signing_certificate_data" {
  description = "A valid X.509 certificate (Section 4 of [RFC4648](https://tools.ietf.org/html/rfc4648)). Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "open_enclave_policy_base64" {
  description = "Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy."
  type        = string
  default     = null
}
variable "sgx_enclave_policy_base64" {
  description = "Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy."
  type        = string
  default     = null
}
variable "tpm_policy_base64" {
  description = "Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy."
  type        = string
  default     = null
}
variable "sev_snp_policy_base64" {
  description = "Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Attestation Provider."
  type        = map(any)
  default     = null
}
