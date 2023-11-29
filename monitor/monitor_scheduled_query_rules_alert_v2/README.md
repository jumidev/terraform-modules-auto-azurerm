# azurerm_monitor_scheduled_query_rules_alert_v2

Manages an AlertingAction Scheduled Query Rules Version 2 resource within Azure Monitor

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Monitor Scheduled Query Rule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created. | 
| **criteria** | block | True | -  |  -  | A `criteria` block. | 
| **evaluation_frequency** | string | False | -  |  `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`  | How often the scheduled query rule is evaluated, represented in ISO 8601 duration format. Possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`. | 
| **scopes** | string | True | -  |  -  | Specifies the list of resource IDs that this scheduled query rule is scoped to. Changing this forces a new resource to be created. Currently, the API supports exactly 1 resource ID in the scopes list. | 
| **severity** | string | True | -  |  -  | Severity of the alert. Should be an integer between 0 and 4. Value of 0 is severest. | 
| **window_duration** | string | True | -  |  `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`  | Specifies the period of time in ISO 8601 duration format on which the Scheduled Query Rule will be executed (bin size). If `evaluation_frequency` is `PT1M`, possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, and `PT6H`. Otherwise, possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`, and `P2D`. | 
| **action** | block | False | -  |  -  | An `action` block. | 
| **auto_mitigation_enabled** | bool | False | `False`  |  -  | Specifies the flag that indicates whether the alert should be automatically resolved or not. Value should be `true` or `false`. The default is `false`. | 
| **workspace_alerts_storage_enabled** | bool | False | `False`  |  -  | Specifies the flag which indicates whether this scheduled query rule check if storage is configured. Value should be `true` or `false`. The default is `false`. | 
| **description** | string | False | -  |  -  | Specifies the description of the scheduled query rule. | 
| **display_name** | string | False | -  |  -  | Specifies the display name of the alert rule. | 
| **enabled** | bool | False | `True`  |  -  | Specifies the flag which indicates whether this scheduled query rule is enabled. Value should be `true` or `false`. Defaults to `true`. | 
| **mute_actions_after_alert_duration** | string | False | -  |  `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`, `P2D`  | Mute actions for the chosen period of time in ISO 8601 duration format after the alert is fired. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`. | 
| **query_time_range_override** | string | False | -  |  `PT5M`, `PT10M`, `PT15M`, `PT20M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`, `P2D`  | Set this if the alert evaluation period is different from the query time range. If not specified, the value is `window_duration`*`number_of_evaluation_periods`. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT20M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`. | 
| **skip_query_validation** | bool | False | -  |  -  | Specifies the flag which indicates whether the provided query should be validated or not. The default is false. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Monitor Scheduled Query Rule. | 
| **target_resource_types** | string | False | -  |  -  | List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is `Microsoft.Compute/virtualMachines`, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria. | 

