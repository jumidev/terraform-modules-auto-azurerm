# azurerm_logz_sub_account_tag_rule

Manages a Logz Sub Account Tag Rule.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.logz_sub_account_id** | string | True | The ID of the Logz Sub Account. Changing this forces a new Logz Sub Account Tag Rule to be created. | 
| **var.tag_filter** | block | False | One or more (up to 10) `tag_filter` blocks. | 
| **var.send_aad_logs** | string | False | Whether AAD logs should be sent to the Monitor resource? | 
| **var.send_activity_logs** | string | False | Whether activity logs from this Logz Sub Account Tag Rule should be sent to the Monitor resource? | 
| **var.send_subscription_logs** | string | False | Whether subscription logs should be sent to the Monitor resource? | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **logz_sub_account_id** | string  | - | 
| **tag_filter** | block  | - | 
| **send_aad_logs** | string  | - | 
| **send_activity_logs** | string  | - | 
| **send_subscription_logs** | string  | - | 
| **id** | string  | The ID of the Logz Sub Account Tag Rule. | 

## Example minimal hclt

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