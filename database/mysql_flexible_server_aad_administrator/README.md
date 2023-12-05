# azurerm_mysql_flexible_server_aad_administrator

Manages an Active Directory administrator on a MySQL Flexible Server

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mysql_flexible_server_aad_administrator"   
}

inputs = {
   server_id = "The resource ID of the MySQL Flexible Server"   
   identity_id = "The resource ID of the identity used for AAD Authentication..."   
   login = "The login name of the principal to set as the server administrator..."   
   object_id = "The ID of the principal to set as the server administrator..."   
   # tenant_id → set in tfstate_inputs
}

tfstate_inputs = {
   tenant_id = "path/to/aadb2c_directory_component:tenant_id"   
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
| **server_id** | string |  The resource ID of the MySQL Flexible Server. Changing this forces a new resource to be created. | 
| **identity_id** | string |  The resource ID of the identity used for AAD Authentication. | 
| **login** | string |  The login name of the principal to set as the server administrator | 
| **object_id** | string |  The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity. | 
| **tenant_id** | string |  The Azure Tenant ID. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MySQL Flexible Server Active Directory Administrator. | 

Additionally, all variables are provided as outputs.
