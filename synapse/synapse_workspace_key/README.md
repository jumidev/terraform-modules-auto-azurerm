# azurerm_synapse_workspace_key

Manages Synapse Workspace keys-> **Note:** Keys that are actively protecting a workspace cannot be deleted. When the keys resource is deleted, if the key is inactive it will be deleted, if it is active it will not be deleted.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "synapse/synapse_workspace_key"   
}

inputs = {
   customer_managed_key_name = "Specifies the name of the workspace key"   
   # synapse_workspace_id → set in component_inputs
   active = "Specifies if the workspace should be encrypted with this key..."   
}

component_inputs = {
   synapse_workspace_id = "path/to/synapse_workspace_component:id"   
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
| **customer_managed_key_name** | string |  Specifies the name of the workspace key. Should match the name of the key in the synapse workspace. | 
| **synapse_workspace_id** | string |  The ID of the Synapse Workspace where the encryption key should be configured. | 
| **active** | string |  Specifies if the workspace should be encrypted with this key. -> **Note:** Only one key can actively encrypt a workspace. When performing a key rotation, setting a new key as the active key will disable existing keys. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **customer_managed_key_versionless_id** | string |  The Azure Key Vault Key Versionless ID to be used as the Customer Managed Key (CMK) for double encryption | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
