# azurerm_monitor_alert_prometheus_rule_group

Manages an Alert Management Prometheus Rule Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "monitor/monitor_alert_prometheus_rule_group"   
}

inputs = {
   name = "Specifies the name which should be used for this Alert Management Prometheus Rul..."   
   location = "${location}"   
   resource_group_name = "${resource_group}"   
   rule = {
      expression = "..."      
   }
   
   scopes = "Specifies the resource ID of the Azure Monitor Workspace..."   
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
| **name** | string |  Specifies the name which should be used for this Alert Management Prometheus Rule Group. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the Azure Region where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created. | 
| **rule** | [block](#rule-block-structure) |  A `rule` block. | 
| **scopes** | string |  Specifies the resource ID of the Azure Monitor Workspace. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **cluster_name** | string |  -  |  Specifies the name of the Managed Kubernetes Cluster. | 
| **description** | string |  -  |  The description of the Alert Management Prometheus Rule Group. | 
| **rule_group_enabled** | string |  `true`, `false`  |  Is this Alert Management Prometheus Rule Group enabled? Possible values are `true` and `false`. | 
| **interval** | string |  `PT1M`, `PT15M`  |  Specifies the interval in which to run the Alert Management Prometheus Rule Group represented in ISO 8601 duration format. Possible values are between `PT1M` and `PT15M`. | 
| **tags** | map |  -  |  A mapping of tags to assign to the Alert Management Prometheus Rule Group. | 

### `alert_resolution` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `auto_resolved` | string | No | - | Is the alert auto-resolution? Possible values are 'true' and 'false'. |
| `time_to_resolve` | string | No | - | Specifies the alert auto-resolution interval, represented in ISO 8601 duration format. |

### `action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action_group_id` | string | Yes | - | Specifies the resource id of the monitor action group. |
| `action_properties` | string | No | - | Specifies the properties of an action group object. |

### `rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | [block](#action-block-structure) | No | - | An 'action' block. |
| `alert` | string | No | - | Specifies the Alert rule name. |
| `annotations` | string | No | - | Specifies a set of informational labels that can be used to store longer additional information such as alert descriptions or runbook links. |
| `enabled` | string | No | - | Is this rule enabled? Possible values are 'true' and 'false'. |
| `expression` | string | Yes | - | Specifies the Prometheus Query Language expression to evaluate. For more details see [this doc](https://prometheus.io/docs/prometheus/latest/querying/basics). Evaluate at the period given by 'interval' and record the result as a new set of time series with the metric name given by 'record'. |
| `for` | string | No | - | Specifies the amount of time alert must be active before firing, represented in ISO 8601 duration format. |
| `labels` | string | No | - | Specifies the labels to add or overwrite before storing the result. |
| `record` | string | No | - | Specifies the recorded metrics name. |
| `alert_resolution` | [block](#alert_resolution-block-structure) | No | - | An 'alert_resolution' block. |
| `severity` | string | No | - | Specifies the severity of the alerts fired by the rule. Possible values are between 0 and 4. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Alert Management Prometheus Rule Group. | 

Additionally, all variables are provided as outputs.
