# azurerm_postgresql_flexible_server_active_directory_administrator

Allows you to set a user or group as the AD administrator for a PostgreSQL Flexible Server.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/postgresql_flexible_server_active_directory_administrator" 
}

inputs = {
   server_name = "server_name of postgresql_flexible_server_active_directory_administrator" 
   resource_group_name = "${resource_group}" 
   object_id = "object_id of postgresql_flexible_server_active_directory_administrator" 
   tenant_id = "tenant_id of postgresql_flexible_server_active_directory_administrator" 
   principal_name = "principal_name of postgresql_flexible_server_active_directory_administrator" 
   principal_type = "principal_type of postgresql_flexible_server_active_directory_administrator" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.server_name** | string |  -  |  The name of the PostgreSQL Flexible Server on which to set the administrator. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the resource group for the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **var.object_id** | string |  -  |  The object ID of a user, service principal or security group in the Azure Active Directory tenant set as the Flexible Server Admin. Changing this forces a new resource to be created. | 
| **var.tenant_id** | string |  -  |  The Azure Tenant ID. Changing this forces a new resource to be created. | 
| **var.principal_name** | string |  -  |  The name of Azure Active Directory principal. Changing this forces a new resource to be created. | 
| **var.principal_type** | string |  `Group`, `ServicePrincipal`, `User`  |  The type of Azure Active Directory principal. Possible values are `Group`, `ServicePrincipal` and `User`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the PostgreSQL Flexible Server Active Directory Administrator. | 

Additionally, all variables are provided as outputs.
