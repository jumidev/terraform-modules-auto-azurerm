# azurerm_postgresql_active_directory_administrator

Allows you to set a user or group as the AD administrator for an PostgreSQL server in Azure

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/postgresql_active_directory_administrator" 
}

inputs = {
   server_name = "server_name of postgresql_active_directory_administrator" 
   resource_group_name = "${resource_group}" 
   login = "login of postgresql_active_directory_administrator" 
   object_id = "object_id of postgresql_active_directory_administrator" 
   tenant_id = "tenant_id of postgresql_active_directory_administrator" 
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
| **var.server_name** | string  The name of the PostgreSQL Server on which to set the administrator. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group for the PostgreSQL server. Changing this forces a new resource to be created. | 
| **var.login** | string  The login name of the principal to set as the server administrator | 
| **var.object_id** | string  The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity. | 
| **var.tenant_id** | string  The Azure Tenant ID | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the PostgreSQL Active Directory Administrator. | 

Additionally, all variables are provided as outputs.
