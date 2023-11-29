# azurerm_synapse_workspace_sql_aad_admin

Manages an Azure Active Directory SQL Administrator setting for a Synapse Workspace

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **synapse_workspace_id** | string | True | -  |  -  | The ID of the Synapse Workspace where the Azure AD Administrator should be configured. | 
| **login** | string | True | -  |  -  | The login name of the Azure AD Administrator of this Synapse Workspace. | 
| **object_id** | string | True | -  |  -  | The object id of the Azure AD Administrator of this Synapse Workspace. | 
| **tenant_id** | string | True | -  |  -  | The tenant id of the Azure AD Administrator of this Synapse Workspace. | 

