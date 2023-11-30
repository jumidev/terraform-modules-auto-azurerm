# azurerm_synapse_workspace_key

Manages Synapse Workspace keys-> **Note:** Keys that are actively protecting a workspace cannot be deleted. When the keys resource is deleted, if the key is inactive it will be deleted, if it is active it will not be deleted.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_workspace_key" 
}

inputs = {
   customer_managed_key_name = "customer_managed_key_name of synapse_workspace_key" 
   synapse_workspace_id = "synapse_workspace_id of synapse_workspace_key" 
   active = "active of synapse_workspace_key" 
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
| **var.customer_managed_key_name** | string  Specifies the name of the workspace key. Should match the name of the key in the synapse workspace. | 
| **var.synapse_workspace_id** | string  The ID of the Synapse Workspace where the encryption key should be configured. | 
| **var.active** | string  Specifies if the workspace should be encrypted with this key. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.customer_managed_key_versionless_id** | string  The Azure Key Vault Key Versionless ID to be used as the Customer Managed Key (CMK) for double encryption | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
