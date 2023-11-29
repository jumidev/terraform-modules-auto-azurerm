# azurerm_sentinel_log_analytics_workspace_onboarding

Manages a Security Insights Sentinel Onboarding.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | False | -  |  -  | Specifies the name of the Resource Group where the Security Insights Sentinel Onboarding States should exist. Changing this forces the Log Analytics Workspace off the board and onboard again. | 
| **workspace_name** | string | False | -  |  -  | Specifies the Workspace Name. Changing this forces the Log Analytics Workspace off the board and onboard again. Changing this forces a new resource to be created. | 
| **customer_managed_key_enabled** | bool | False | `False`  |  -  | Specifies if the Workspace is using Customer managed key. Defaults to `false`. Changing this forces a new resource to be created. | 

