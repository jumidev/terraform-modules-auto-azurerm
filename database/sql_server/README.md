# azurerm_sql_server

Manages a Microsoft SQL Azure Database Server.~> **Note:** The `azurerm_sql_server` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_server`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server) resource instead.~> **Note:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](https://www.terraform.io/language/state/sensitive-data).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/sql_server"   
}

inputs = {
   name = "The name of the Microsoft SQL Server"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   version = "The version for the new server"   
   administrator_login = "The administrator login name for the new server"   
   administrator_login_password = "The password associated with the `administrator_login` user..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the Microsoft SQL Server. This needs to be globally unique within Azure. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Microsoft SQL Server. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **version** | string |  -  |  The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server). Changing this forces a new resource to be created. | 
| **administrator_login** | string |  -  |  The administrator login name for the new server. Changing this forces a new resource to be created. | 
| **administrator_login_password** | string |  `Random string of 32 characters`  |  The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx) | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **connection_policy** | string |  `Default`  |  `Default`, `Proxy`, `Redirect`  |  The connection policy the server will use. Possible values are `Default`, `Proxy`, and `Redirect`. Defaults to `Default`. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this SQL Server. The only possible value is 'SystemAssigned'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Microsoft SQL Server ID. | 
| **fully_qualified_domain_name** | string | No  | The fully qualified domain name of the Azure SQL Server (e.g. myServerName.database.windows.net) | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Identity of this SQL Server. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Identity of this SQL Server. | 
| **create** | string | No  | (Defaults to 60 minutes) Used when creating the Microsoft SQL Server. | 
| **update** | string | No  | (Defaults to 60 minutes) Used when updating the Microsoft SQL Server. | 
| **read** | string | No  | (Defaults to 5 minutes) Used when retrieving the Microsoft SQL Server. | 
| **delete** | string | No  | (Defaults to 60 minutes) Used when deleting the Microsoft SQL Server. | 

Additionally, all variables are provided as outputs.
