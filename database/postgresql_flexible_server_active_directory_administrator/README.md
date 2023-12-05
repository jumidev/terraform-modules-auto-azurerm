# azurerm_postgresql_flexible_server_active_directory_administrator

Allows you to set a user or group as the AD administrator for a PostgreSQL Flexible Server.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/postgresql_flexible_server_active_directory_administrator"   
}

inputs = {
   # server_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   object_id = "The object ID of a user, service principal or security group in the Azure Active..."   
   # tenant_id → set in tfstate_inputs
   principal_name = "The name of Azure Active Directory principal"   
   principal_type = "The type of Azure Active Directory principal"   
}

tfstate_inputs = {
   server_name = "path/to/postgresql_server_component:name"   
   tenant_id = "path/to/aadb2c_directory_component:tenant_id"   
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
| **server_name** | string |  -  |  The name of the PostgreSQL Flexible Server on which to set the administrator. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group for the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **object_id** | string |  -  |  The object ID of a user, service principal or security group in the Azure Active Directory tenant set as the Flexible Server Admin. Changing this forces a new resource to be created. | 
| **tenant_id** | string |  -  |  The Azure Tenant ID. Changing this forces a new resource to be created. | 
| **principal_name** | string |  -  |  The name of Azure Active Directory principal. Changing this forces a new resource to be created. | 
| **principal_type** | string |  `Group`, `ServicePrincipal`, `User`  |  The type of Azure Active Directory principal. Possible values are `Group`, `ServicePrincipal` and `User`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the PostgreSQL Flexible Server Active Directory Administrator. | 

Additionally, all variables are provided as outputs.
