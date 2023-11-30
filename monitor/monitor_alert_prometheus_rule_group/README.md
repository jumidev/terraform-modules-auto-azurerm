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



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Alert Management Prometheus Rule Group. | 

Additionally, all variables are provided as outputs.
