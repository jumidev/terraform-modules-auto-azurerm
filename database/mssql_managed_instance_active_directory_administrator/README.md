# azurerm_mssql_managed_instance_active_directory_administrator

Allows you to set a user, group or service principal as the AAD Administrator for an Azure SQL Managed Instance.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_managed_instance_active_directory_administrator" 
}

inputs = {
   managed_instance_id = "managed_instance_id of mssql_managed_instance_active_directory_administrator" 
   login_username = "login_username of mssql_managed_instance_active_directory_administrator" 
   object_id = "object_id of mssql_managed_instance_active_directory_administrator" 
   tenant_id = "tenant_id of mssql_managed_instance_active_directory_administrator" 
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
| **var.managed_instance_id** | string  The ID of the Azure SQL Managed Instance for which to set the administrator. Changing this forces a new resource to be created. | 
| **var.login_username** | string  The login name of the principal to set as the Managed Instance Administrator. | 
| **var.object_id** | string  The Object ID of the principal to set as the Managed Instance Administrator. | 
| **var.tenant_id** | string  The Azure Active Directory Tenant ID. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.azuread_authentication_only** | string  When `true`, only permit logins from AAD users and administrators. When `false`, also allow local database users. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SQL Managed Instance Active Directory Administrator. | 

Additionally, all variables are provided as outputs.
