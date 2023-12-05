# azurerm_logz_tag_rule

Manages a logz Tag Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "logz/logz_tag_rule"   
}

inputs = {
   # logz_monitor_id → set in tfstate_inputs
}

tfstate_inputs = {
   logz_monitor_id = "path/to/logz_monitor_component:id"   
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
| **logz_monitor_id** | string |  The ID of the Logz Monitor. Changing this forces a new logz Tag Rule to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tag_filter** | [block](#tag_filter-block-structure) |  One or more (up to 10) `tag_filter` blocks. | 
| **send_aad_logs** | string |  Whether AAD logs should be sent to the Monitor resource? | 
| **send_activity_logs** | string |  Whether activity logs from Azure resources should be sent to the Monitor resource? | 
| **send_subscription_logs** | string |  Whether subscription logs should be sent to the Monitor resource? | 

### `tag_filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of this 'tag_filter'. |
| `action` | string | Yes | - | The action for a filtering tag. Possible values are 'Include' and 'Exclude' is allowed. Note that the 'Exclude' takes priority over the 'Include'. |
| `value` | string | No | - | The value of this 'tag_filter'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the logz Tag Rule. | 

Additionally, all variables are provided as outputs.
