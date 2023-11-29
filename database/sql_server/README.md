# azurerm_sql_server

Manages a Microsoft SQL Azure Database Server.~> **Note:** The `azurerm_sql_server` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_server`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server) resource instead.~> **Note:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](https://www.terraform.io/language/state/sensitive-data).

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Microsoft SQL Server. This needs to be globally unique within Azure. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Microsoft SQL Server. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.version** | string | True | -  |  -  | The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server). Changing this forces a new resource to be created. | 
| **var.administrator_login** | string | True | -  |  -  | The administrator login name for the new server. Changing this forces a new resource to be created. | 
| **var.administrator_login_password** | string | True | -  |  -  | The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx) | 
| **var.connection_policy** | string | False | `Default`  |  `Default`, `Proxy`, `Redirect`  | The connection policy the server will use. Possible values are `Default`, `Proxy`, and `Redirect`. Defaults to `Default`. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **version** | string  | - | 
| **administrator_login** | string  | - | 
| **administrator_login_password** | string  | - | 
| **connection_policy** | string  | - | 
| **identity** | block  | - | 
| **id** | string  | The Microsoft SQL Server ID. | 
| **fully_qualified_domain_name** | string  | The fully qualified domain name of the Azure SQL Server (e.g. myServerName.database.windows.net) | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Identity of this SQL Server. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Identity of this SQL Server. | 
| **create** | string  | (Defaults to 60 minutes) Used when creating the Microsoft SQL Server. | 
| **update** | datetime  | (Defaults to 60 minutes) Used when updating the Microsoft SQL Server. | 
| **read** | string  | (Defaults to 5 minutes) Used when retrieving the Microsoft SQL Server. | 
| **delete** | string  | (Defaults to 60 minutes) Used when deleting the Microsoft SQL Server. | 