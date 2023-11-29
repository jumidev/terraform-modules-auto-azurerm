# azurerm_synapse_workspace_aad_admin

Manages an Azure Active Directory Administrator setting for a Synapse Workspace

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