# azurerm_new_relic_tag_rule

Manages an Azure Native New Relic Tag Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "new_relic/new_relic_tag_rule"   
}

inputs = {
   monitor_id = "Specifies the ID of the New Relic Monitor this Tag Rule should be created within..."   
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
| **monitor_id** | string |  Specifies the ID of the New Relic Monitor this Tag Rule should be created within. Changing this forces a new Azure Native New Relic Tag Rule to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **azure_active_directory_log_enabled** | bool |  `False`  |  Whether Azure Active Directory logs should be sent for the Monitor resource. Defaults to `false`. | 
| **activity_log_enabled** | bool |  `False`  |  Whether activity logs from Azure resources should be sent for the Monitor resource. Defaults to `false`. | 
| **log_tag_filter** | [block](#log_tag_filter-block-structure) |  -  |  A `log_tag_filter` block. | 
| **metric_enabled** | bool |  `False`  |  Whether metrics should be sent for the Monitor resource. Defaults to `false`. | 
| **metric_tag_filter** | [block](#metric_tag_filter-block-structure) |  -  |  A `metric_tag_filter` block. | 
| **subscription_log_enabled** | bool |  `False`  |  Whether subscription logs should be sent for the Monitor resource. Defaults to `false`. | 

### `metric_tag_filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name (also known as the key) of the tag. |
| `action` | string | Yes | - | Valid actions for a filtering tag. Possible values are 'Exclude' and 'Include'. Exclusion takes priority over inclusion. |
| `value` | string | Yes | - | Specifies the value of the tag. |

### `log_tag_filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name (also known as the key) of the tag. |
| `action` | string | Yes | - | Valid actions for a filtering tag. Possible values are 'Exclude' and 'Include'. Exclusion takes priority over inclusion. |
| `value` | string | Yes | - | Specifies the value of the tag. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Native New Relic Tag Rule. | 

Additionally, all variables are provided as outputs.
