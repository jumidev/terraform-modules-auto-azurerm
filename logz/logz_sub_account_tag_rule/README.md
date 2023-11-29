# azurerm_logz_sub_account_tag_rule

Manages a Logz Sub Account Tag Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **logz_sub_account_id** | string | True | -  |  -  | The ID of the Logz Sub Account. Changing this forces a new Logz Sub Account Tag Rule to be created. | 
| **tag_filter** | block | False | -  |  -  | One or more (up to 10) `tag_filter` blocks. | 
| **send_aad_logs** | string | False | -  |  -  | Whether AAD logs should be sent to the Monitor resource? | 
| **send_activity_logs** | string | False | -  |  -  | Whether activity logs from this Logz Sub Account Tag Rule should be sent to the Monitor resource? | 
| **send_subscription_logs** | string | False | -  |  -  | Whether subscription logs should be sent to the Monitor resource? | 

