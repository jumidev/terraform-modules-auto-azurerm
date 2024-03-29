# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the HPC Cache. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which to create the HPC Cache. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure Region where the HPC Cache should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "cache_size_in_gb" {
  description = "(REQUIRED) The size of the HPC Cache, in GB. Possible values are '3072', '6144', '12288', '21623', '24576', '43246', '49152' and '86491'. Changing this forces a new resource to be created. -> **NOTE:** The '21623', '43246' and '86491' sizes are restricted to read only resources."
  type        = number

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the Subnet for the HPC Cache. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The SKU of HPC Cache to use. Possible values are (ReadWrite) - 'Standard_2G', 'Standard_4G' 'Standard_8G' or (ReadOnly) - 'Standard_L4_5G', 'Standard_L9G', and 'Standard_L16G'. Changing this forces a new resource to be created. -> **NOTE:** The read-only SKUs have restricted cache sizes. 'Standard_L4_5G' must be set to '21623'. 'Standard_L9G' to '43246' and 'Standard_L16G' to '86491'."
  type        = string

}

# OPTIONAL VARIABLES

variable "mtu" {
  description = "The IPv4 maximum transmission unit configured for the subnet of the HPC Cache. Possible values range from 576 - 1500. Defaults to '1500'."
  type        = string
  default     = "1500"
}
variable "default_access_policy" {
  description = "A 'default_access_policy' block."
  type        = map(any)
  default     = null
}
#
# default_access_policy block structure:
#   access_rule (string)                 : (REQUIRED) One or more 'access_rule' blocks (up to three).


variable "ntp_server" {
  description = "The NTP server IP Address or FQDN for the HPC Cache. Defaults to 'time.windows.com'."
  type        = string
  default     = "time.windows.com"
}
variable "dns" {
  description = "A 'dns' block."
  type        = map(any)
  default     = null
}
#
# dns block structure   :
#   servers (list)        : (REQUIRED) A list of DNS servers for the HPC Cache. At most three IP(s) are allowed to set.
#   search_domain (string): The DNS search domain for the HPC Cache.


variable "directory_active_directory" {
  description = "A 'directory_active_directory' block."
  type        = map(any)
  default     = null
}
#
# directory_active_directory block structure:
#   dns_primary_ip (string)                   : (REQUIRED) The primary DNS IP address used to resolve the Active Directory domain controller's FQDN.
#   domain_name (string)                      : (REQUIRED) The fully qualified domain name of the Active Directory domain controller.
#   cache_netbios_name (string)               : (REQUIRED) The NetBIOS name to assign to the HPC Cache when it joins the Active Directory domain as a server.
#   domain_netbios_name (string)              : (REQUIRED) The Active Directory domain's NetBIOS name.
#   username (string)                         : (REQUIRED) The username of the Active Directory domain administrator.
#   password (string)                         : (REQUIRED) The password of the Active Directory domain administrator.
#   dns_secondary_ip (string)                 : The secondary DNS IP address used to resolve the Active Directory domain controller's FQDN.


variable "directory_flat_file" {
  description = "A 'directory_flat_file' block."
  type        = map(any)
  default     = null
}
#
# directory_flat_file block structure:
#   group_file_uri (string)            : (REQUIRED) The URI of the file containing group information ('/etc/group' file format in Unix-like OS).
#   password_file_uri (string)         : (REQUIRED) The URI of the file containing user information ('/etc/passwd' file format in Unix-like OS).


variable "directory_ldap" {
  description = "A 'directory_ldap' block. ~> **Note:** Only one of 'directory_active_directory', 'directory_flat_file' and 'directory_ldap' can be set."
  type        = map(any)
  default     = null
}
#
# directory_ldap block structure           :
#   server (string)                          : (REQUIRED) The FQDN or IP address of the LDAP server.
#   base_dn (string)                         : (REQUIRED) The base distinguished name (DN) for the LDAP domain.
#   encrypted (bool)                         : Whether the LDAP connection should be encrypted?
#   certificate_validation_uri (string)      : The URI of the CA certificate to validate the LDAP secure connection.
#   download_certificate_automatically (bool): Whether the certificate should be automatically downloaded. This can be set to 'true' only when 'certificate_validation_uri' is provided.
#   bind (block)                             : A 'bind' block.
#
# bind block structure:
#   password (string)   : (REQUIRED) The Bind password to be used in the secure LDAP connection.


variable "identity" {
  description = "An 'identity' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this HPC Cache. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). Changing this forces a new resource to be created.
#   identity_ids (list)     : Specifies a list of User Assigned Managed Identity IDs to be assigned to this HPC Cache. Changing this forces a new resource to be created. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned' or 'SystemAssigned, UserAssigned'.


variable "key_vault_key_id" {
  description = "The ID of the Key Vault Key which should be used to encrypt the data in this HPC Cache."
  type        = string
  default     = null
}
variable "automatically_rotate_key_to_latest_enabled" {
  description = "Specifies whether the HPC Cache automatically rotates Encryption Key to the latest version."
  type        = bool
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the HPC Cache."
  type        = map(any)
  default     = null
}
