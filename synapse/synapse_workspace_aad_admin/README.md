# azurerm_synapse_workspace_aad_admin

Manages an Azure Active Directory Administrator setting for a Synapse Workspace

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "synapse/synapse_workspace_aad_admin"   
}

inputs = {
   # synapse_workspace_id → set in tfstate_inputs
   login = "login of synapse_workspace_aad_admin"   
   object_id = "object_id of synapse_workspace_aad_admin"   
   # tenant_id → set in tfstate_inputs
}

tfstate_inputs = {
   synapse_workspace_id = "path/to/synapse_workspace_component:id"   
   tenant_id = "path/to/aadb2c_directory_component:tenant_id"   
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
| **synapse_workspace_id** | string |  The ID of the Synapse Workspace where the Azure AD Administrator should be configured. | 
| **login** | string |  The login name of the Azure AD Administrator of this Synapse Workspace. | 
| **object_id** | string |  The object id of the Azure AD Administrator of this Synapse Workspace. | 
| **tenant_id** | string |  The tenant id of the Azure AD Administrator of this Synapse Workspace. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
