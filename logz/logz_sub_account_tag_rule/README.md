# azurerm_logz_sub_account_tag_rule

Manages a Logz Sub Account Tag Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logz/logz_sub_account_tag_rule" 
}

inputs = {
   logz_sub_account_id = "logz_sub_account_id of logz_sub_account_tag_rule" 
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
| **var.logz_sub_account_id** | string | True | The ID of the Logz Sub Account. Changing this forces a new Logz Sub Account Tag Rule to be created. | 
| **var.tag_filter** | block | False | One or more (up to 10) `tag_filter` blocks. | 
| `tag_filter` block structure: || 
|   name (string): (REQUIRED) The name of the tag to match. ||
|   action (string): (REQUIRED) The action is used to limit logs collection to include or exclude Azure resources with specific tags. Possible values are 'Include' and 'Exclude'. Note that the 'Exclude' takes priority over the 'Include'. ||
|   value (string): The value of the tag to match. ||
| **var.send_aad_logs** | string | False | Whether AAD logs should be sent to the Monitor resource? | 
| **var.send_activity_logs** | string | False | Whether activity logs from this Logz Sub Account Tag Rule should be sent to the Monitor resource? | 
| **var.send_subscription_logs** | string | False | Whether subscription logs should be sent to the Monitor resource? | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Logz Sub Account Tag Rule. | 

Additionally, all variables are provided as outputs.
