# REQUIRED VARIABLES

variable "domain_name" {
  description = "(REQUIRED) The Active Directory domain to use. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure location where the Domain Service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The display name for your managed Active Directory Domain Service resource. Changing this forces a new resource to be created."
  type        = string

}
variable "initial_replica_set" {
  description = "(REQUIRED) An 'initial_replica_set' block. The initial replica set inherits the same location as the Domain Service resource."
  type        = map(any)
}
#
# initial_replica_set block structure:
#   subnet_id (string)                 : (REQUIRED) The ID of the subnet in which to place the initial replica set. Changing this forces a new resource to be created.


variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Domain Service should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) The SKU to use when provisioning the Domain Service resource. One of 'Standard', 'Enterprise' or 'Premium'."
  type        = string

}

# OPTIONAL VARIABLES

variable "domain_configuration_type" {
  description = "The configuration type of this Active Directory Domain. Possible values are 'FullySynced' and 'ResourceTrusting'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "filtered_sync_enabled" {
  description = "Whether to enable group-based filtered sync (also called scoped synchronisation). Defaults to 'false'."
  type        = bool
  default     = false
}
variable "secure_ldap" {
  description = "A 'secure_ldap' block."
  type        = map(any)
  default     = null
}
#
# secure_ldap block structure      :
#   enabled (bool)                   : (REQUIRED) Whether to enable secure LDAP for the managed domain. For more information, please see [official documentation on enabling LDAPS](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-configure-ldaps), paying particular attention to the section on network security to avoid unnecessarily exposing your service to Internet-borne bruteforce attacks.
#   external_access_enabled (bool)   : Whether to enable external access to LDAPS over the Internet. Defaults to 'false'.
#   pfx_certificate (string)         : (REQUIRED) The certificate/private key to use for LDAPS, as a base64-encoded TripleDES-SHA1 encrypted PKCS#12 bundle (PFX file).
#   pfx_certificate_password (string): (REQUIRED) The password to use for decrypting the PKCS#12 bundle (PFX file).


variable "notifications" {
  description = "A 'notifications' block."
  type        = map(any)
  default     = null
}
#
# notifications block structure:
#   additional_recipients (list) : A list of additional email addresses to notify when there are alerts in the managed domain.
#   notify_dc_admins (string)    : Whether to notify members of the _AAD DC Administrators_ group when there are alerts in the managed domain.
#   notify_global_admins (string): Whether to notify all Global Administrators when there are alerts in the managed domain.


variable "security" {
  description = "A 'security' block."
  type        = map(any)
  default     = null
}
#
# security block structure              :
#   kerberos_armoring_enabled (bool)      : Whether to enable Kerberos Armoring. Defaults to 'false'.
#   kerberos_rc4_encryption_enabled (bool): Whether to enable Kerberos RC4 Encryption. Defaults to 'false'.
#   ntlm_v1_enabled (bool)                : Whether to enable legacy NTLM v1 support. Defaults to 'false'.
#   sync_kerberos_passwords (bool)        : Whether to synchronize Kerberos password hashes to the managed domain. Defaults to 'false'.
#   sync_ntlm_passwords (bool)            : Whether to synchronize NTLM password hashes to the managed domain. Defaults to 'false'.
#   sync_on_prem_passwords (bool)         : Whether to synchronize on-premises password hashes to the managed domain. Defaults to 'false'.
#   tls_v1_enabled (bool)                 : Whether to enable legacy TLS v1 support. Defaults to 'false'.


variable "tags" {
  description = "A mapping of tags assigned to the resource."
  type        = map(any)
  default     = null
}
