# azurerm_datadog_monitor_tag_rule

Manages TagRules on the datadog Monitor.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "datadog/datadog_monitor_tag_rule" 
}

inputs = {
   datadog_monitor_id = "datadog_monitor_id of datadog_monitor_tag_rule" 
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
| **var.datadog_monitor_id** | string | True | -  |  The Datadog Monitor Id which should be used for this Datadog Monitor Tag Rule. Changing this forces a new Datadog Monitor Tag Rule to be created. | 
| **var.name** | string | False | `default`  |  The name of the Tag Rules configuration. The allowed value is `default`. Defaults to `default`. | 
| **var.log** | block | False | -  |  A `log` block. | 
| **var.metric** | block | False | -  |  A `metric` block. | 

### `log` block structure

> `aad_log_enabled` (bool): Whether AAD logs should be sent for the Monitor resource?\
> `subscription_log_enabled` (bool): Whether Azure subscription logs should be sent for the Monitor resource?\
> `resource_log_enabled` (bool): Whether Azure resource logs should be sent for the Monitor resource?\
> `filter` (block): A 'filter' block.\

### `metric` block structure

> `filter` (block): A 'filter' block.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
