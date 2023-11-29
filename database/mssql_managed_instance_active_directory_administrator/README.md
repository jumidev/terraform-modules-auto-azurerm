# azurerm_mssql_managed_instance_active_directory_administrator

Allows you to set a user, group or service principal as the AAD Administrator for an Azure SQL Managed Instance.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.managed_instance_id** | string | True | The ID of the Azure SQL Managed Instance for which to set the administrator. Changing this forces a new resource to be created. | 
| **var.login_username** | string | True | The login name of the principal to set as the Managed Instance Administrator. | 
| **var.object_id** | string | True | The Object ID of the principal to set as the Managed Instance Administrator. | 
| **var.tenant_id** | string | True | The Azure Active Directory Tenant ID. | 
| **var.azuread_authentication_only** | string | False | When `true`, only permit logins from AAD users and administrators. When `false`, also allow local database users. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **managed_instance_id** | string  | - | 
| **login_username** | string  | - | 
| **object_id** | string  | - | 
| **tenant_id** | string  | - | 
| **azuread_authentication_only** | string  | - | 
| **id** | string  | The ID of the SQL Managed Instance Active Directory Administrator. | 