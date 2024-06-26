# azurerm_sql_server



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
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this SQL Server. The only possible value is 'SystemAssigned'. ~> **NOTE:** The assigned 'principal_id' and 'tenant_id' can be retrieved after the identity 'type' has been set to 'SystemAssigned' and the Microsoft SQL Server has been created. More details are available below. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **storage_endpoint** | string | No  | Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs. Required if `state` is `Enabled`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Microsoft SQL Server ID. | 
| **fully_qualified_domain_name** | string | No  | The fully qualified domain name of the Azure SQL Server (e.g. myServerName.database.windows.net) | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Identity of this SQL Server. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Identity of this SQL Server. -> You can access the Principal ID via `${azurerm_mssql_server.example.identity[0].principal_id}` and the Tenant ID via `${azurerm_mssql_server.example.identity[0].tenant_id}` ### Timeouts The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions: | 
| **create** | string | No  | (Defaults to 60 minutes) Used when creating the Microsoft SQL Server. | 
| **update** | string | No  | (Defaults to 60 minutes) Used when updating the Microsoft SQL Server. | 
| **read** | string | No  | (Defaults to 5 minutes) Used when retrieving the Microsoft SQL Server. | 
| **delete** | string | No  | (Defaults to 60 minutes) Used when deleting the Microsoft SQL Server. | 

Additionally, all variables are provided as outputs.
