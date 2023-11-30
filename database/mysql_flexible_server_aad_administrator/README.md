# azurerm_mysql_flexible_server_aad_administrator

Manages an Active Directory administrator on a MySQL Flexible Server

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mysql_flexible_server_aad_administrator" 
}

inputs = {
   server_id = "server_id of mysql_flexible_server_aad_administrator" 
   identity_id = "identity_id of mysql_flexible_server_aad_administrator" 
   login = "login of mysql_flexible_server_aad_administrator" 
   object_id = "object_id of mysql_flexible_server_aad_administrator" 
   tenant_id = "tenant_id of mysql_flexible_server_aad_administrator" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.server_id** | string | True | The resource ID of the MySQL Flexible Server. Changing this forces a new resource to be created. | 
| **var.identity_id** | string | True | The resource ID of the identity used for AAD Authentication. | 
| **var.login** | string | True | The login name of the principal to set as the server administrator | 
| **var.object_id** | string | True | The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity. | 
| **var.tenant_id** | string | True | The Azure Tenant ID. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MySQL Flexible Server Active Directory Administrator. | 

Additionally, all variables are provided as outputs.
