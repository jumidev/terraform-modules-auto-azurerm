# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the API Management Service. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure location where the API Management Service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created."
  type        = string

}
variable "publisher_name" {
  description = "(REQUIRED) The name of publisher/company."
  type        = string

}
variable "publisher_email" {
  description = "(REQUIRED) The email of publisher/company."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) 'sku_name' is a string consisting of two parts separated by an underscore('_). The first part is the 'name', valid values include: 'Consumption', 'Developer', 'Basic', 'Standard' and 'Premium'. The second part is the 'capacity' (e.g. the number of deployed units of the 'sku'), which must be a positive 'integer' (e.g. 'Developer_1')."
  type        = string

}

# OPTIONAL VARIABLES

variable "additional_location" {
  description = "One or more 'additional_location' blocks."
  type        = map(map(any))
  default     = null
}
#
# additional_location block structure  :
#   location (string)                    : (REQUIRED) The name of the Azure Region in which the API Management Service should be expanded to.
#   capacity (number)                    : The number of compute units in this region. Defaults to the capacity of the main region.
#   zones (list)                         : A list of availability zones. Changing this forces a new resource to be created.
#   public_ip_address_id (string)        : ID of a standard SKU IPv4 Public IP.
#   virtual_network_configuration (block): A 'virtual_network_configuration' block. Required when 'virtual_network_type' is 'External' or 'Internal'.
#   gateway_disabled (bool)              : Only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in this additional location.
#
# virtual_network_configuration block structure:
#   subnet_id (string)                           : (REQUIRED) The id of the subnet that will be used for the API Management.


variable "certificate" {
  description = "One or more 'certificate' blocks (up to 10) as defined below."
  type        = string
  default     = null
}
variable "client_certificate_enabled" {
  description = "Enforce a client certificate to be presented on each request to the gateway? This is only supported when SKU type is 'Consumption'."
  type        = bool
  default     = null
}
variable "delegation" {
  description = "A 'delegation' block."
  type        = map(any)
  default     = null
}
#
# delegation block structure      :
#   subscriptions_enabled (bool)    : Should subscription requests be delegated to an external url? Defaults to 'false'.
#   user_registration_enabled (bool): Should user registration requests be delegated to an external url? Defaults to 'false'.
#   url (string)                    : The delegation URL.
#   validation_key (string)         : A base64-encoded validation key to validate, that a request is coming from Azure API Management.


variable "gateway_disabled" {
  description = "Disable the gateway in main region? This is only supported when 'additional_location' is set."
  type        = bool
  default     = null
}
variable "min_api_version" {
  description = "The version which the control plane API calls to API Management service are limited with version equal to or newer than."
  type        = string
  default     = null
}
variable "zones" {
  description = "Specifies a list of Availability Zones in which this API Management service should be located. Changing this forces a new API Management service to be created."
  type        = list(any)
  default     = []
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this API Management Service. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this API Management Service.


variable "hostname_configuration" {
  description = "A 'hostname_configuration' block."
  type        = map(any)
  default     = null
}
#
# hostname_configuration block structure:
#   management (string)                   : One or more 'management' blocks.
#   portal (string)                       : One or more 'portal' blocks.
#   developer_portal (string)             : One or more 'developer_portal' blocks.
#   proxy (string)                        : One or more 'proxy' blocks.
#   scm (string)                          : One or more 'scm' blocks.


variable "notification_sender_email" {
  description = "Email address from which the notification will be sent."
  type        = string
  default     = null
}
variable "policy" {
  description = "A 'policy' block."
  type        = map(any)
  default     = null
}
#
# policy block structure:
#   xml_content (string)  : The XML Content for this Policy.
#   xml_link (string)     : A link to an API Management Policy XML Document, which must be publicly available.


variable "protocols" {
  description = "A 'protocols' block."
  type        = map(any)
  default     = null
}
#
# protocols block structure:
#   enable_http2 (bool)      : Should HTTP/2 be supported by the API Management Service? Defaults to 'false'.


variable "security" {
  description = "A 'security' block."
  type        = map(any)
  default     = null
}
#
# security block structure                                  :
#   enable_backend_ssl30 (bool)                               : Should SSL 3.0 be enabled on the backend of the gateway? Defaults to 'false'.
#   enable_backend_tls10 (bool)                               : Should TLS 1.0 be enabled on the backend of the gateway? Defaults to 'false'.
#   enable_backend_tls11 (bool)                               : Should TLS 1.1 be enabled on the backend of the gateway? Defaults to 'false'.
#   enable_frontend_ssl30 (bool)                              : Should SSL 3.0 be enabled on the frontend of the gateway? Defaults to 'false'.
#   enable_frontend_tls10 (bool)                              : Should TLS 1.0 be enabled on the frontend of the gateway? Defaults to 'false'.
#   enable_frontend_tls11 (bool)                              : Should TLS 1.1 be enabled on the frontend of the gateway? Defaults to 'false'.
#   tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled (bool): Should the 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA' cipher be enabled? Defaults to 'false'.
#   tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled (bool): Should the 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA' cipher be enabled? Defaults to 'false'.
#   tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled (bool)  : Should the 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA' cipher be enabled? Defaults to 'false'.
#   tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled (bool)  : Should the 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA' cipher be enabled? Defaults to 'false'.
#   tls_rsa_with_aes128_cbc_sha256_ciphers_enabled (bool)     : Should the 'TLS_RSA_WITH_AES_128_CBC_SHA256' cipher be enabled? Defaults to 'false'.
#   tls_rsa_with_aes128_cbc_sha_ciphers_enabled (bool)        : Should the 'TLS_RSA_WITH_AES_128_CBC_SHA' cipher be enabled? Defaults to 'false'.
#   tls_rsa_with_aes128_gcm_sha256_ciphers_enabled (bool)     : Should the 'TLS_RSA_WITH_AES_128_GCM_SHA256' cipher be enabled? Defaults to 'false'.
#   tls_rsa_with_aes256_gcm_sha384_ciphers_enabled (bool)     : Should the 'TLS_RSA_WITH_AES_256_GCM_SHA384' cipher be enabled? Defaults to 'false'.
#   tls_rsa_with_aes256_cbc_sha256_ciphers_enabled (bool)     : Should the 'TLS_RSA_WITH_AES_256_CBC_SHA256' cipher be enabled? Defaults to 'false'.
#   tls_rsa_with_aes256_cbc_sha_ciphers_enabled (bool)        : Should the 'TLS_RSA_WITH_AES_256_CBC_SHA' cipher be enabled? Defaults to 'false'.
#   triple_des_ciphers_enabled (bool)                         : Should the 'TLS_RSA_WITH_3DES_EDE_CBC_SHA' cipher be enabled for alL TLS versions (1.0, 1.1 and 1.2)?


variable "sign_in" {
  description = "A 'sign_in' block."
  type        = map(any)
  default     = null
}
#
# sign_in block structure:
#   enabled (bool)         : (REQUIRED) Should anonymous users be redirected to the sign in page?


variable "sign_up" {
  description = "A 'sign_up' block."
  type        = map(any)
  default     = null
}
#
# sign_up block structure :
#   enabled (bool)          : (REQUIRED) Can users sign up on the development portal?
#   terms_of_service (block): (REQUIRED) A 'terms_of_service' block.
#
# terms_of_service block structure:
#   consent_required (string)       : (REQUIRED) Should the user be asked for consent during sign up?
#   enabled (bool)                  : (REQUIRED) Should Terms of Service be displayed during sign up?.
#   text (string)                   : The Terms of Service which users are required to agree to in order to sign up.


variable "tenant_access" {
  description = "A 'tenant_access' block."
  type        = map(any)
  default     = null
}
#
# tenant_access block structure:
#   enabled (bool)               : (REQUIRED) Should the access to the management API be enabled?


variable "public_ip_address_id" {
  description = "ID of a standard SKU IPv4 Public IP."
  type        = string
  default     = null
}
variable "public_network_access_enabled" {
  description = "Is public access to the service allowed? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "virtual_network_type" {
  description = "The type of virtual network you want to use, valid values include: 'None', 'External', 'Internal'. Defaults to 'None'."
  type        = string
  default     = "None"
}
variable "virtual_network_configuration" {
  description = "A 'virtual_network_configuration' block. Required when 'virtual_network_type' is 'External' or 'Internal'."
  type        = map(any)
  default     = null
}
#
# virtual_network_configuration block structure:
#   subnet_id (string)                           : (REQUIRED) The id of the subnet that will be used for the API Management.


variable "tags" {
  description = "A mapping of tags assigned to the resource."
  type        = map(any)
  default     = null
}
