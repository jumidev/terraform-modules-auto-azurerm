# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the API Management Gateway Host Name Configuration. Changing this forces a new resource to be created."
  type        = string

}
variable "api_management_id" {
  description = "(REQUIRED) The ID of the API Management Service. Changing this forces a new resource to be created."
  type        = string

}
variable "gateway_name" {
  description = "(REQUIRED) The name of the API Management Gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "certificate_id" {
  description = "(REQUIRED) The certificate ID to be used for TLS connection establishment."
  type        = string

}
variable "host_name" {
  description = "(REQUIRED) The host name to use for the API Management Gateway Host Name Configuration."
  type        = string

}

# OPTIONAL VARIABLES

variable "request_client_certificate_enabled" {
  description = "Whether the API Management Gateway requests a client certificate."
  type        = bool
  default     = null
}
variable "http2_enabled" {
  description = "Whether HTTP/2.0 is supported. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tls10_enabled" {
  description = "Whether TLS 1.0 is supported."
  type        = bool
  default     = null
}
variable "tls11_enabled" {
  description = "Whether TLS 1.1 is supported."
  type        = bool
  default     = null
}
