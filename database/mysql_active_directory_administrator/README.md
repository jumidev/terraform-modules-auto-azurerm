# azurerm_mysql_active_directory_administrator

Allows you to set a user or group as the AD administrator for an MySQL server in Azure

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mysql_active_directory_administrator" 
}

inputs = {
   server_name = "server_name of mysql_active_directory_administrator" 
   resource_group_name = "${resource_group}" 
   login = "login of mysql_active_directory_administrator" 
   object_id = "object_id of mysql_active_directory_administrator" 
   tenant_id = "tenant_id of mysql_active_directory_administrator" 
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
| **server_name** | string |  The name of the MySQL Server on which to set the administrator. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group for the MySQL server. Changing this forces a new resource to be created. | 
| **login** | string |  The login name of the principal to set as the server administrator | 
| **object_id** | string |  The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity. | 
| **tenant_id** | string |  The Azure Tenant ID | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MySQL Active Directory Administrator. | 

Additionally, all variables are provided as outputs.
