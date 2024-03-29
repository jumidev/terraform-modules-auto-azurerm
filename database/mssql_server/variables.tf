# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Microsoft SQL Server. This needs to be globally unique within Azure. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Microsoft SQL Server. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "version" {
  description = "(REQUIRED) The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server). Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "administrator_login" {
  description = "The administrator login name for the new server. Required unless 'azuread_authentication_only' in the 'azuread_administrator' block is 'true'. When omitted, Azure will generate a default username which cannot be subsequently changed. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "azuread_administrator" {
  description = "An 'azuread_administrator' block."
  type        = map(any)
  default     = null
}
#
# azuread_administrator block structure:
#   login_username (string)              : (REQUIRED) The login username of the Azure AD Administrator of this SQL Server.
#   object_id (string)                   : (REQUIRED) The object id of the Azure AD Administrator of this SQL Server.
#   tenant_id (string)                   : The tenant id of the Azure AD Administrator of this SQL Server.
#   azuread_authentication_only (string) : Specifies whether only AD Users and administrators (e.g. 'azuread_administrator.0.login_username') can be used to login, or also local database users (e.g. 'administrator_login'). When 'true', the 'administrator_login' and 'administrator_login_password' properties can be omitted.


variable "connection_policy" {
  description = "The connection policy the server will use. Possible values are 'Default', 'Proxy', and 'Redirect'. Defaults to 'Default'."
  type        = string
  default     = "Default"
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this SQL Server. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Server. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned' ~> **NOTE:** When 'type' is set to 'SystemAssigned', the assigned 'principal_id' and 'tenant_id' can be retrieved after the Microsoft SQL Server has been created. More details are available below.


variable "transparent_data_encryption_key_vault_key_id" {
  description = "The fully versioned 'Key Vault' 'Key' URL (e.g. ''https://<YourVaultName>.vault.azure.net/keys/<YourKeyName>/<YourKeyVersion>') to be used as the 'Customer Managed Key'(CMK/BYOK) for the 'Transparent Data Encryption'(TDE) layer. ~> **NOTE:** To successfully deploy a 'Microsoft SQL Server' in CMK/BYOK TDE the 'Key Vault' must have 'Soft-delete' and 'purge protection' enabled to protect from data loss due to accidental key and/or key vault deletion. The 'Key Vault' and the 'Microsoft SQL Server' 'User Managed Identity Instance' must belong to the same 'Azure Active Directory' 'tenant'. ~> **NOTE:**  Cross-tenant 'Key Vault' and 'Microsoft SQL Server' interactions are not supported. Please see the [product documentation](https://learn.microsoft.com/azure/azure-sql/database/transparent-data-encryption-byok-overview?view=azuresql#requirements-for-configuring-customer-managed-tde) for more information. ~> **NOTE:** When using a firewall with a 'Key Vault', you must enable the option 'Allow trusted Microsoft services to bypass the firewall'."
  type        = string
  default     = null
}
variable "minimum_tls_version" {
  description = "The Minimum TLS Version for all SQL Database and SQL Data Warehouse databases associated with the server. Valid values are: '1.0', '1.1' , '1.2' and 'Disabled'. Defaults to '1.2'. ~> **NOTE:** The 'minimum_tls_version' is set to 'Disabled' means all TLS versions are allowed. After you enforce a version of 'minimum_tls_version', it's not possible to revert to 'Disabled'."
  type        = string
  default     = "1.2"
}
variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for this server. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "outbound_network_restriction_enabled" {
  description = "Whether outbound network traffic is restricted for this server. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "primary_user_assigned_identity_id" {
  description = "Specifies the primary user managed identity id. Required if 'type' is 'UserAssigned' and should be combined with 'identity_ids'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
