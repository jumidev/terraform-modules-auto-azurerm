# azurerm_mssql_server

Manages a Microsoft SQL Azure Database Server.~> **Note:** All arguments including the administrator login and password will be stored in the raw state as plain-text.[Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Microsoft SQL Server. This needs to be globally unique within Azure. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Microsoft SQL Server. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **version** | string | True | -  |  -  | The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server). Changing this forces a new resource to be created. | 
| **administrator_login** | string | False | -  |  -  | The administrator login name for the new server. Required unless `azuread_authentication_only` in the `azuread_administrator` block is `true`. When omitted, Azure will generate a default username which cannot be subsequently changed. Changing this forces a new resource to be created. | 
| **administrator_login_password** | string | False | -  |  -  | The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx). Required unless `azuread_authentication_only` in the `azuread_administrator` block is `true`. | 
| **azuread_administrator** | block | False | -  |  -  | An `azuread_administrator` block. | 
| **connection_policy** | string | False | `Default`  |  `Default`, `Proxy`, `Redirect`  | The connection policy the server will use. Possible values are `Default`, `Proxy`, and `Redirect`. Defaults to `Default`. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **transparent_data_encryption_key_vault_key_id** | string | False | -  |  -  | The fully versioned `Key Vault` `Key` URL (e.g. `'https://<YourVaultName>.vault.azure.net/keys/<YourKeyName>/<YourKeyVersion>`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer. | 
| **minimum_tls_version** | string | False | `1.2`  |  `1.0`, `1.1`, `1.2`, `Disabled`  | The Minimum TLS Version for all SQL Database and SQL Data Warehouse databases associated with the server. Valid values are: `1.0`, `1.1` , `1.2` and `Disabled`. Defaults to `1.2`. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for this server. Defaults to `true`. | 
| **outbound_network_restriction_enabled** | bool | False | `False`  |  -  | Whether outbound network traffic is restricted for this server. Defaults to `false`. | 
| **primary_user_assigned_identity_id** | string | False | -  |  -  | Specifies the primary user managed identity id. Required if `type` is `UserAssigned` and should be combined with `identity_ids`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

