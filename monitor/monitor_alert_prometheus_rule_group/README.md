# azurerm_monitor_alert_prometheus_rule_group

Manages an Alert Management Prometheus Rule Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Alert Management Prometheus Rule Group. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created. | 
| **rule** | block | True | -  |  -  | A `rule` block. | 
| **scopes** | string | True | -  |  -  | Specifies the resource ID of the Azure Monitor Workspace. | 
| **cluster_name** | string | False | -  |  -  | Specifies the name of the Managed Kubernetes Cluster. | 
| **description** | string | False | -  |  -  | The description of the Alert Management Prometheus Rule Group. | 
| **rule_group_enabled** | string | False | -  |  `true`, `false`  | Is this Alert Management Prometheus Rule Group enabled? Possible values are `true` and `false`. | 
| **interval** | string | False | -  |  `PT1M`, `PT15M`  | Specifies the interval in which to run the Alert Management Prometheus Rule Group represented in ISO 8601 duration format. Possible values are between `PT1M` and `PT15M`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Alert Management Prometheus Rule Group. | 

