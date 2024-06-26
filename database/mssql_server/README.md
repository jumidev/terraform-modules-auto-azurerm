# azurerm_mssql_server



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_server"   
}
inputs = {
   name = "The name of the Microsoft SQL Server"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   version = "The version for the new server"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Microsoft SQL Server. This needs to be globally unique within Azure. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Microsoft SQL Server. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **version** | string |  The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server). Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **administrator_login** | string |  -  |  -  |  The administrator login name for the new server. Required unless `azuread_authentication_only` in the `azuread_administrator` block is `true`. When omitted, Azure will generate a default username which cannot be subsequently changed. Changing this forces a new resource to be created. | 
| **administrator_login_password** | string |  `Random string of 32 characters`  |  -  |  The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx). Required unless `azuread_authentication_only` in the `azuread_administrator` block is `true`. | 
| **azuread_administrator** | [block](#azuread_administrator-block-structure) |  -  |  -  |  An `azuread_administrator` block. | 
| **connection_policy** | string |  `Default`  |  `Default`, `Proxy`, `Redirect`  |  The connection policy the server will use. Possible values are `Default`, `Proxy`, and `Redirect`. Defaults to `Default`. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **transparent_data_encryption_key_vault_key_id** | string |  -  |  -  |  The fully versioned `Key Vault` `Key` URL (e.g. `'https://<YourVaultName>.vault.azure.net/keys/<YourKeyName>/<YourKeyVersion>`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer. ~> **NOTE:** To successfully deploy a `Microsoft SQL Server` in CMK/BYOK TDE the `Key Vault` must have `Soft-delete` and `purge protection` enabled to protect from data loss due to accidental key and/or key vault deletion. The `Key Vault` and the `Microsoft SQL Server` `User Managed Identity Instance` must belong to the same `Azure Active Directory` `tenant`. ~> **NOTE:**  Cross-tenant `Key Vault` and `Microsoft SQL Server` interactions are not supported. Please see the [product documentation](https://learn.microsoft.com/azure/azure-sql/database/transparent-data-encryption-byok-overview?view=azuresql#requirements-for-configuring-customer-managed-tde) for more information. ~> **NOTE:** When using a firewall with a `Key Vault`, you must enable the option `Allow trusted Microsoft services to bypass the firewall`. | 
| **minimum_tls_version** | string |  `1.2`  |  `1.0`, `1.1`, `1.2`, `Disabled`  |  The Minimum TLS Version for all SQL Database and SQL Data Warehouse databases associated with the server. Valid values are: `1.0`, `1.1` , `1.2` and `Disabled`. Defaults to `1.2`. ~> **NOTE:** The `minimum_tls_version` is set to `Disabled` means all TLS versions are allowed. After you enforce a version of `minimum_tls_version`, it's not possible to revert to `Disabled`. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether public network access is allowed for this server. Defaults to `true`. | 
| **outbound_network_restriction_enabled** | bool |  `False`  |  -  |  Whether outbound network traffic is restricted for this server. Defaults to `false`. | 
| **primary_user_assigned_identity_id** | string |  -  |  `type`, `identity`, `SystemAssigned, UserAssigned`, `UserAssigned`, `identity_ids`  |  Specifies the primary user managed identity id. Required if `type` within the `identity` block is set to either `SystemAssigned, UserAssigned` or `UserAssigned` and should be set at same time as setting `identity_ids`. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `azuread_administrator` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `login_username` | string | Yes | - | The login username of the Azure AD Administrator of this SQL Server. |
| `object_id` | string | Yes | - | The object id of the Azure AD Administrator of this SQL Server. |
| `tenant_id` | string | No | - | The tenant id of the Azure AD Administrator of this SQL Server. |
| `azuread_authentication_only` | string | No | - | Specifies whether only AD Users and administrators (e.g. 'azuread_administrator[0].login_username') can be used to login, or also local database users (e.g. 'administrator_login'). When 'true', the 'administrator_login' and 'administrator_login_password' properties can be omitted. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this SQL Server. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Server. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned' ~> **NOTE:** When 'type' is set to 'SystemAssigned', the assigned 'principal_id' and 'tenant_id' can be retrieved after the Microsoft SQL Server has been created. More details are available below. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **azuread_authentication_only** | string | No  | Specifies whether only AD Users and administrators (e.g. `azuread_administrator[0].login_username`) can be used to login, or also local database users (e.g. `administrator_login`). When `true`, the `administrator_login` and `administrator_login_password` properties can be omitted. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | the Microsoft SQL Server ID. | 
| **fully_qualified_domain_name** | string | No  | The fully qualified domain name of the Azure SQL Server (e.g. myServerName.database.windows.net) | 
| **restorable_dropped_database_ids** | list | No  | A list of dropped restorable database IDs on the server. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Identity of this SQL Server. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Identity of this SQL Server. -> You can access the Principal ID via `azurerm_mssql_server.example.identity[0].principal_id` and the Tenant ID via `azurerm_mssql_server.example.identity[0].tenant_id` ### Timeouts The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions: | 
| **create** | string | No  | (Defaults to 60 minutes) Used when creating the Microsoft SQL Server. | 
| **update** | string | No  | (Defaults to 60 minutes) Used when updating the Microsoft SQL Server. | 
| **read** | string | No  | (Defaults to 5 minutes) Used when retrieving the Microsoft SQL Server. | 
| **delete** | string | No  | (Defaults to 60 minutes) Used when deleting the Microsoft SQL Server. | 

Additionally, all variables are provided as outputs.
