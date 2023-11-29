# azurerm_monitor_metric_alert

Manages a Metric Alert within Azure Monitor.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Metric Alert. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Metric Alert instance. Changing this forces a new resource to be created. | 
| **scopes** | string | True | -  |  -  | A set of strings of resource IDs at which the metric criteria should be applied. | 
| **criteria** | block | False | -  |  -  | One or more (static) `criteria` blocks. | 
| **dynamic_criteria** | block | False | -  |  -  | A `dynamic_criteria` block. | 
| **application_insights_web_test_location_availability_criteria** | block | False | -  |  -  | A `application_insights_web_test_location_availability_criteria` block. | 
| **action** | block | False | -  |  -  | One or more `action` blocks. | 
| **enabled** | bool | False | `True`  |  -  | Should this Metric Alert be enabled? Defaults to `true`. | 
| **auto_mitigate** | bool | False | `True`  |  -  | Should the alerts in this Metric Alert be auto resolved? Defaults to `true`. | 
| **description** | string | False | -  |  -  | The description of this Metric Alert. | 
| **frequency** | string | False | `PT1M`  |  `PT1M`, `PT5M`, `PT15M`, `PT30M`, `PT1H`  | The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are `PT1M`, `PT5M`, `PT15M`, `PT30M` and `PT1H`. Defaults to `PT1M`. | 
| **severity** | string | False | `3`  |  `0`, `1`, `2`, `3`, `4`  | The severity of this Metric Alert. Possible values are `0`, `1`, `2`, `3` and `4`. Defaults to `3`. | 
| **target_resource_type** | string | False | -  |  -  | The resource type (e.g. `Microsoft.Compute/virtualMachines`) of the target resource. | 
| **target_resource_location** | string | False | -  |  -  | The location of the target resource. | 
| **window_size** | string | False | `PT5M`  |  `PT1M`, `PT5M`, `PT15M`, `PT30M`, `PT1H`, `PT6H`, `PT12H`, `P1D`  | The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than `frequency`. Possible values are `PT1M`, `PT5M`, `PT15M`, `PT30M`, `PT1H`, `PT6H`, `PT12H` and `P1D`. Defaults to `PT5M`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

