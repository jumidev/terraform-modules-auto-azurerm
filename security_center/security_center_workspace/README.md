# azurerm_security_center_workspace

Manages the subscription's Security Center Workspace.~> **NOTE:** Owner access permission is required.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "security_center/security_center_workspace" 
}

inputs = {
   scope = "scope of security_center_workspace" 
   # workspace_id → set in tfstate_inputs
}

tfstate_inputs = {
   workspace_id = "path/to/log_analytics_workspace_component:id" 
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
| **scope** | string |  The scope of VMs to send their security data to the desired workspace, unless overridden by a setting with more specific scope. | 
| **workspace_id** | string |  The ID of the Log Analytics Workspace to save the data in. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Security Center Workspace ID. | 

Additionally, all variables are provided as outputs.
