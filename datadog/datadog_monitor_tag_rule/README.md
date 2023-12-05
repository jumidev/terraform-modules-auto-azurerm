# azurerm_datadog_monitor_tag_rule

Manages TagRules on the datadog Monitor.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "datadog/datadog_monitor_tag_rule"   
}

inputs = {
   datadog_monitor_id = "The Datadog Monitor Id which should be used for this Datadog Monitor Tag Rule..."   
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
| **datadog_monitor_id** | string |  The Datadog Monitor Id which should be used for this Datadog Monitor Tag Rule. Changing this forces a new Datadog Monitor Tag Rule to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  `default`  |  The name of the Tag Rules configuration. The allowed value is `default`. Defaults to `default`. | 
| **log** | [block](#log-block-structure) |  -  |  A `log` block. | 
| **metric** | [block](#metric-block-structure) |  -  |  A `metric` block. | 

### `filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Name of the Tag. |
| `value` | string | Yes | - | Value of the Tag. |
| `action` | string | Yes | - | Allowed values Include or Exclude. |

### `log` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `aad_log_enabled` | bool | No | - | Whether AAD logs should be sent for the Monitor resource? |
| `subscription_log_enabled` | bool | No | - | Whether Azure subscription logs should be sent for the Monitor resource? |
| `resource_log_enabled` | bool | No | - | Whether Azure resource logs should be sent for the Monitor resource? |
| `filter` | [block](#filter-block-structure) | No | - | A 'filter' block. |

### `metric` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `filter` | [block](#filter-block-structure) | No | - | A 'filter' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
