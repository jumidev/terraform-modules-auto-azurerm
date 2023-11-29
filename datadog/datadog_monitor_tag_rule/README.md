# azurerm_datadog_monitor_tag_rule

Manages TagRules on the datadog Monitor.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **datadog_monitor_id** | string | True | -  |  -  | The Datadog Monitor Id which should be used for this Datadog Monitor Tag Rule. Changing this forces a new Datadog Monitor Tag Rule to be created. | 
| **name** | string | False | `default`  |  -  | The name of the Tag Rules configuration. The allowed value is `default`. Defaults to `default`. | 
| **log** | block | False | -  |  -  | A `log` block. | 
| **metric** | block | False | -  |  -  | A `metric` block. | 

