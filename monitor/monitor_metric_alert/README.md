# azurerm_monitor_metric_alert

Manages a Metric Alert within Azure Monitor.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Metric Alert. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Metric Alert instance. Changing this forces a new resource to be created. | 
| **var.scopes** | string | True | -  |  -  |  A set of strings of resource IDs at which the metric criteria should be applied. | 
| **var.criteria** | block | False | -  |  -  |  One or more (static) `criteria` blocks. | 
| **var.dynamic_criteria** | block | False | -  |  -  |  A `dynamic_criteria` block. | 
| **var.application_insights_web_test_location_availability_criteria** | block | False | -  |  -  |  A `application_insights_web_test_location_availability_criteria` block. | 
| **var.action** | block | False | -  |  -  |  One or more `action` blocks. | 
| **var.enabled** | bool | False | `True`  |  -  |  Should this Metric Alert be enabled? Defaults to `true`. | 
| **var.auto_mitigate** | bool | False | `True`  |  -  |  Should the alerts in this Metric Alert be auto resolved? Defaults to `true`. | 
| **var.description** | string | False | -  |  -  |  The description of this Metric Alert. | 
| **var.frequency** | string | False | `PT1M`  |  `PT1M`, `PT5M`, `PT15M`, `PT30M`, `PT1H`  |  The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are `PT1M`, `PT5M`, `PT15M`, `PT30M` and `PT1H`. Defaults to `PT1M`. | 
| **var.severity** | string | False | `3`  |  `0`, `1`, `2`, `3`, `4`  |  The severity of this Metric Alert. Possible values are `0`, `1`, `2`, `3` and `4`. Defaults to `3`. | 
| **var.target_resource_type** | string | False | -  |  -  |  The resource type (e.g. `Microsoft.Compute/virtualMachines`) of the target resource. | 
| **var.target_resource_location** | string | False | -  |  -  |  The location of the target resource. | 
| **var.window_size** | string | False | `PT5M`  |  `PT1M`, `PT5M`, `PT15M`, `PT30M`, `PT1H`, `PT6H`, `PT12H`, `P1D`  |  The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than `frequency`. Possible values are `PT1M`, `PT5M`, `PT15M`, `PT30M`, `PT1H`, `PT6H`, `PT12H` and `P1D`. Defaults to `PT5M`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **scopes** | string  | - | 
| **criteria** | block  | - | 
| **dynamic_criteria** | block  | - | 
| **application_insights_web_test_location_availability_criteria** | block  | - | 
| **action** | block  | - | 
| **enabled** | bool  | - | 
| **auto_mitigate** | bool  | - | 
| **description** | string  | - | 
| **frequency** | string  | - | 
| **severity** | string  | - | 
| **target_resource_type** | string  | - | 
| **target_resource_location** | string  | - | 
| **window_size** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the metric alert. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_metric_alert" 
}

inputs = {
   name = "name of monitor_metric_alert" 
   resource_group_name = "${resource_group}" 
   scopes = "scopes of monitor_metric_alert" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```