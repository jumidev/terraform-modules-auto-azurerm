# azurerm_sql_managed_instance_active_directory_administrator

Allows you to set a user or group as the AD administrator for an Azure SQL Managed Instance.-> **Note:** The `azurerm_sql_managed_instance_active_directory_administrator` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_managed_instance_active_directory_administrator`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_managed_instance_active_directory_administrator) resource instead.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/sql_managed_instance_active_directory_administrator" 
}

inputs = {
   managed_instance_name = "managed_instance_name of sql_managed_instance_active_directory_administrator" 
   resource_group_name = "${resource_group}" 
   login = "login of sql_managed_instance_active_directory_administrator" 
   object_id = "object_id of sql_managed_instance_active_directory_administrator" 
   tenant_id = "tenant_id of sql_managed_instance_active_directory_administrator" 
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
| **var.managed_instance_name** | string |  The name of the SQL Managed Instance on which to set the administrator. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group for the SQL Managed Instance. Changing this forces a new resource to be created. | 
| **var.login** | string |  The login name of the principal to set as the Managed Instance administrator | 
| **var.object_id** | string |  The ID of the principal to set as the Managed Instance administrator | 
| **var.tenant_id** | string |  The Azure Tenant ID | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.azuread_authentication_only** | bool |  `False`  |  Specifies whether only AD Users and administrators can be used to login (`true`) or also local database users (`false`). Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SQL Managed Instance Active Directory Administrator. | 

Additionally, all variables are provided as outputs.
