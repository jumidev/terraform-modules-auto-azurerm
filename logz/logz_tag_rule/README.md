# azurerm_logz_tag_rule

Manages a logz Tag Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logz/logz_tag_rule" 
}

inputs = {
   logz_monitor_id = "logz_monitor_id of logz_tag_rule" 
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
| **var.logz_monitor_id** | string |  The ID of the Logz Monitor. Changing this forces a new logz Tag Rule to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tag_filter** | [block](#tag_filter-block-structure) |  One or more (up to 10) `tag_filter` blocks. | 
| **var.send_aad_logs** | string |  Whether AAD logs should be sent to the Monitor resource? | 
| **var.send_activity_logs** | string |  Whether activity logs from Azure resources should be sent to the Monitor resource? | 
| **var.send_subscription_logs** | string |  Whether subscription logs should be sent to the Monitor resource? | 

### `tag_filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | string | Yes | - | The action for a filtering tag. Possible values are 'Include' and 'Exclude' is allowed. Note that the 'Exclude' takes priority over the 'Include'. |
| `value` | string | No | - | The value of this 'tag_filter'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the logz Tag Rule. | 

Additionally, all variables are provided as outputs.
