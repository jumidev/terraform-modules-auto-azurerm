# azurerm_new_relic_tag_rule

Manages an Azure Native New Relic Tag Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **monitor_id** | string | True | -  |  -  | Specifies the ID of the New Relic Monitor this Tag Rule should be created within. Changing this forces a new Azure Native New Relic Tag Rule to be created. | 
| **azure_active_directory_log_enabled** | bool | False | `False`  |  -  | Whether Azure Active Directory logs should be sent for the Monitor resource. Defaults to `false`. | 
| **activity_log_enabled** | bool | False | `False`  |  -  | Whether activity logs from Azure resources should be sent for the Monitor resource. Defaults to `false`. | 
| **log_tag_filter** | block | False | -  |  -  | A `log_tag_filter` block. | 
| **metric_enabled** | bool | False | `False`  |  -  | Whether metrics should be sent for the Monitor resource. Defaults to `false`. | 
| **metric_tag_filter** | block | False | -  |  -  | A `metric_tag_filter` block. | 
| **subscription_log_enabled** | bool | False | `False`  |  -  | Whether subscription logs should be sent for the Monitor resource. Defaults to `false`. | 

