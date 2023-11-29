# azurerm_logz_tag_rule

Manages a logz Tag Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **logz_monitor_id** | string | True | -  |  -  | The ID of the Logz Monitor. Changing this forces a new logz Tag Rule to be created. | 
| **tag_filter** | block | False | -  |  -  | One or more (up to 10) `tag_filter` blocks. | 
| **send_aad_logs** | string | False | -  |  -  | Whether AAD logs should be sent to the Monitor resource? | 
| **send_activity_logs** | string | False | -  |  -  | Whether activity logs from Azure resources should be sent to the Monitor resource? | 
| **send_subscription_logs** | string | False | -  |  -  | Whether subscription logs should be sent to the Monitor resource? | 

