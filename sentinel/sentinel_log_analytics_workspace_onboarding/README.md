# azurerm_sentinel_log_analytics_workspace_onboarding

Manages a Security Insights Sentinel Onboarding.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_log_analytics_workspace_onboarding" 
}

inputs = {
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.resource_group_name** | string | False | -  |  Specifies the name of the Resource Group where the Security Insights Sentinel Onboarding States should exist. Changing this forces the Log Analytics Workspace off the board and onboard again. | 
| **var.workspace_name** | string | False | -  |  Specifies the Workspace Name. Changing this forces the Log Analytics Workspace off the board and onboard again. Changing this forces a new resource to be created. | 
| **var.customer_managed_key_enabled** | bool | False | `False`  |  Specifies if the Workspace is using Customer managed key. Defaults to `false`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Security Insights Sentinel Onboarding States. | 

Additionally, all variables are provided as outputs.
