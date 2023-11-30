# azurerm_synapse_workspace_sql_aad_admin

Manages an Azure Active Directory SQL Administrator setting for a Synapse Workspace

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.synapse_workspace_id** | string | True | The ID of the Synapse Workspace where the Azure AD Administrator should be configured. | 
| **var.login** | string | True | The login name of the Azure AD Administrator of this Synapse Workspace. | 
| **var.object_id** | string | True | The object id of the Azure AD Administrator of this Synapse Workspace. | 
| **var.tenant_id** | string | True | The tenant id of the Azure AD Administrator of this Synapse Workspace. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **synapse_workspace_id** | string  | - | 
| **login** | string  | - | 
| **object_id** | string  | - | 
| **tenant_id** | string  | - | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_workspace_sql_aad_admin" 
}

inputs = {
   synapse_workspace_id = "synapse_workspace_id of synapse_workspace_sql_aad_admin" 
   login = "login of synapse_workspace_sql_aad_admin" 
   object_id = "object_id of synapse_workspace_sql_aad_admin" 
   tenant_id = "tenant_id of synapse_workspace_sql_aad_admin" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```