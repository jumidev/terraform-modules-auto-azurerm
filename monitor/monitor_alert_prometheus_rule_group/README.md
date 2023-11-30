# azurerm_monitor_alert_prometheus_rule_group

Manages an Alert Management Prometheus Rule Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_alert_prometheus_rule_group" 
}

inputs = {
   name = "name of monitor_alert_prometheus_rule_group" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   rule = "rule of monitor_alert_prometheus_rule_group" 
   scopes = "scopes of monitor_alert_prometheus_rule_group" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name which should be used for this Alert Management Prometheus Rule Group. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created. | 
| **var.rule** | block | True | -  |  A `rule` block. | 
| **var.scopes** | string | True | -  |  Specifies the resource ID of the Azure Monitor Workspace. | 
| **var.cluster_name** | string | False | -  |  Specifies the name of the Managed Kubernetes Cluster. | 
| **var.description** | string | False | -  |  The description of the Alert Management Prometheus Rule Group. | 
| **var.rule_group_enabled** | string | False | `true`, `false`  |  Is this Alert Management Prometheus Rule Group enabled? Possible values are `true` and `false`. | 
| **var.interval** | string | False | `PT1M`, `PT15M`  |  Specifies the interval in which to run the Alert Management Prometheus Rule Group represented in ISO 8601 duration format. Possible values are between `PT1M` and `PT15M`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the Alert Management Prometheus Rule Group. | 

### `rule` block structure

> `action` (block): An 'action' block.
> `alert` (string): Specifies the Alert rule name.
> `annotations` (string): Specifies a set of informational labels that can be used to store longer additional information such as alert descriptions or runbook links.
> `enabled` (string): Is this rule enabled? Possible values are 'true' and 'false'.
> `expression` (string): (REQUIRED) Specifies the Prometheus Query Language expression to evaluate. For more details see [this doc](https://prometheus.io/docs/prometheus/latest/querying/basics). Evaluate at the period given by 'interval' and record the result as a new set of time series with the metric name given by 'record'.
> `for` (string): Specifies the amount of time alert must be active before firing, represented in ISO 8601 duration format.
> `labels` (string): Specifies the labels to add or overwrite before storing the result.
> `record` (string): Specifies the recorded metrics name.
> `alert_resolution` (block): An 'alert_resolution' block.
> `severity` (string): Specifies the severity of the alerts fired by the rule. Possible values are between 0 and 4.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Alert Management Prometheus Rule Group. | 

Additionally, all variables are provided as outputs.
