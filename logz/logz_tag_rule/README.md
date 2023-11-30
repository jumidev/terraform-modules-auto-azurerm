# azurerm_logz_tag_rule

Manages a logz Tag Rule.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.logz_monitor_id** | string | True | The ID of the Logz Monitor. Changing this forces a new logz Tag Rule to be created. | 
| **var.tag_filter** | block | False | One or more (up to 10) `tag_filter` blocks. | 
| `tag_filter` block structure: || 
|   name (string): (REQUIRED) The name of this 'tag_filter'. ||
|   action (string): (REQUIRED) The action for a filtering tag. Possible values are 'Include' and 'Exclude' is allowed. Note that the 'Exclude' takes priority over the 'Include'. ||
|   value (string): The value of this 'tag_filter'. ||
| **var.send_aad_logs** | string | False | Whether AAD logs should be sent to the Monitor resource? | 
| **var.send_activity_logs** | string | False | Whether activity logs from Azure resources should be sent to the Monitor resource? | 
| **var.send_subscription_logs** | string | False | Whether subscription logs should be sent to the Monitor resource? | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the logz Tag Rule. | 

Additionally, all variables are provided as outputs.
