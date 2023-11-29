# azurerm_mssql_managed_instance_active_directory_administrator

Allows you to set a user, group or service principal as the AAD Administrator for an Azure SQL Managed Instance.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **managed_instance_id** | string | True | -  |  -  | The ID of the Azure SQL Managed Instance for which to set the administrator. Changing this forces a new resource to be created. | 
| **login_username** | string | True | -  |  -  | The login name of the principal to set as the Managed Instance Administrator. | 
| **object_id** | string | True | -  |  -  | The Object ID of the principal to set as the Managed Instance Administrator. | 
| **tenant_id** | string | True | -  |  -  | The Azure Active Directory Tenant ID. | 
| **azuread_authentication_only** | string | False | -  |  -  | When `true`, only permit logins from AAD users and administrators. When `false`, also allow local database users. | 

