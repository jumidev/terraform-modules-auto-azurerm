# azurerm_logz_sub_account_tag_rule

Manages a Logz Sub Account Tag Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "logz/logz_sub_account_tag_rule"   
}

inputs = {
   # logz_sub_account_id → set in component_inputs
}

component_inputs = {
   logz_sub_account_id = "path/to/logz_sub_account_component:id"   
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
| **logz_sub_account_id** | string |  The ID of the Logz Sub Account. Changing this forces a new Logz Sub Account Tag Rule to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tag_filter** | [block](#tag_filter-block-structure) |  One or more (up to 10) `tag_filter` blocks. | 
| **send_aad_logs** | string |  Whether AAD logs should be sent to the Monitor resource? | 
| **send_activity_logs** | string |  Whether activity logs from this Logz Sub Account Tag Rule should be sent to the Monitor resource? | 
| **send_subscription_logs** | string |  Whether subscription logs should be sent to the Monitor resource? | 

### `tag_filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the tag to match. |
| `action` | string | Yes | - | The action is used to limit logs collection to include or exclude Azure resources with specific tags. Possible values are 'Include' and 'Exclude'. Note that the 'Exclude' takes priority over the 'Include'. |
| `value` | string | No | - | The value of the tag to match. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Logz Sub Account Tag Rule. | 

Additionally, all variables are provided as outputs.
