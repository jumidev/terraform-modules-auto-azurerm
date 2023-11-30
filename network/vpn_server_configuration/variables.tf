# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The Name which should be used for this VPN Server Configuration. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The Name of the Resource Group in which this VPN Server Configuration should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure location where this VPN Server Configuration should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "vpn_authentication_types" {
  description = "(REQUIRED) A list of Authentication Types applicable for this VPN Server Configuration. Possible values are 'AAD' (Azure Active Directory), 'Certificate' and 'Radius'."
  type        = string

}
variable "azure_active_directory_authentication" {
  description = "(REQUIRED) A 'azure_active_directory_authentication' block."
  type        = map(any)
}
#
# azure_active_directory_authentication block structure:
#   audience (string)                                    : (REQUIRED) The Audience which should be used for authentication.
#   issuer (string)                                      : (REQUIRED) The Issuer which should be used for authentication.
#   tenant (string)                                      : (REQUIRED) The Tenant which should be used for authentication.


variable "client_root_certificate" {
  description = "(REQUIRED) One or more 'client_root_certificate' blocks."
  type        = map(map(any))
}
#
# client_root_certificate block structure:
#   thumbprint (string)                    : (REQUIRED) The Thumbprint of the Certificate.



# OPTIONAL VARIABLES

variable "ipsec_policy" {
  description = "A 'ipsec_policy' block."
  type        = map(any)
  default     = null
}
#
# ipsec_policy block structure   :
#   dh_group (string)              : (REQUIRED) The DH Group, used in IKE Phase 1. Possible values include 'DHGroup1', 'DHGroup2', 'DHGroup14', 'DHGroup24', 'DHGroup2048', 'ECP256', 'ECP384' and 'None'.
#   ike_encryption (string)        : (REQUIRED) The IKE encryption algorithm, used for IKE Phase 2. Possible values include 'AES128', 'AES192', 'AES256', 'DES', 'DES3', 'GCMAES128' and 'GCMAES256'.
#   ike_integrity (string)         : (REQUIRED) The IKE encryption integrity algorithm, used for IKE Phase 2. Possible values include 'GCMAES128', 'GCMAES256', 'MD5', 'SHA1', 'SHA256' and 'SHA384'.
#   ipsec_encryption (string)      : (REQUIRED) The IPSec encryption algorithm, used for IKE phase 1. Possible values include 'AES128', 'AES192', 'AES256', 'DES', 'DES3', 'GCMAES128', 'GCMAES192', 'GCMAES256' and 'None'.
#   ipsec_integrity (string)       : (REQUIRED) The IPSec integrity algorithm, used for IKE phase 1. Possible values include 'GCMAES128', 'GCMAES192', 'GCMAES256', 'MD5', 'SHA1' and 'SHA256'.
#   pfs_group (string)             : (REQUIRED) The Pfs Group, used in IKE Phase 2. Possible values include 'ECP256', 'ECP384', 'PFS1', 'PFS2', 'PFS14', 'PFS24', 'PFS2048', 'PFSMM' and 'None'.
#   sa_lifetime_seconds (int)      : (REQUIRED) The IPSec Security Association lifetime in seconds for a Site-to-Site VPN tunnel.
#   sa_data_size_kilobytes (string): (REQUIRED) The IPSec Security Association payload size in KB for a Site-to-Site VPN tunnel.


variable "vpn_protocols" {
  description = "A list of VPN Protocols to use for this Server Configuration. Possible values are 'IkeV2' and 'OpenVPN'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "client_revoked_certificate" {
  description = "One or more 'client_revoked_certificate' blocks."
  type        = map(map(any))
  default     = null
}
#
# client_revoked_certificate block structure:
#   thumbprint (string)                       : (REQUIRED) The Thumbprint of the Certificate.


variable "radius" {
  description = "A 'radius' block."
  type        = map(any)
  default     = null
}
#
# radius block structure:
#   thumbprint (string)   : (REQUIRED) The Thumbprint of the Certificate.


