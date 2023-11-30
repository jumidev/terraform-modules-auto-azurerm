# azurerm_synapse_workspace_aad_admin

Manages an Azure Active Directory Administrator setting for a Synapse Workspace

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_workspace_aad_admin" 
}

inputs = {
   synapse_workspace_id = "synapse_workspace_id of synapse_workspace_aad_admin" 
   login = "login of synapse_workspace_aad_admin" 
   object_id = "object_id of synapse_workspace_aad_admin" 
   tenant_id = "tenant_id of synapse_workspace_aad_admin" 
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
| **var.synapse_workspace_id** | string |  The ID of the Synapse Workspace where the Azure AD Administrator should be configured. | 
| **var.login** | string |  The login name of the Azure AD Administrator of this Synapse Workspace. | 
| **var.object_id** | string |  The object id of the Azure AD Administrator of this Synapse Workspace. | 
| **var.tenant_id** | string |  The tenant id of the Azure AD Administrator of this Synapse Workspace. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
