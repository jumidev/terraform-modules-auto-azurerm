# azurerm_security_center_workspace

Manages the subscription's Security Center Workspace.~> **NOTE:** Owner access permission is required.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.scope** | string | True | The scope of VMs to send their security data to the desired workspace, unless overridden by a setting with more specific scope. | 
| **var.workspace_id** | string | True | The ID of the Log Analytics Workspace to save the data in. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **scope** | string  | - | 
| **workspace_id** | string  | - | 
| **id** | string  | The Security Center Workspace ID. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "security_center/security_center_workspace" 
}

inputs = {
   scope = "scope of security_center_workspace" 
   workspace_id = "workspace_id of security_center_workspace" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```