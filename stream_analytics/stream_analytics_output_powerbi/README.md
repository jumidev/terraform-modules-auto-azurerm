# azurerm_stream_analytics_output_powerbi

Manages a Stream Analytics Output powerBI.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Stream Output. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_id** | string | True | -  |  -  | The ID of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.dataset** | string | True | -  |  -  | The name of the Power BI dataset. | 
| **var.table** | string | True | -  |  -  | The name of the Power BI table under the specified dataset. | 
| **var.group_id** | string | True | -  |  -  | The ID of the Power BI group, this must be a valid UUID. | 
| **var.group_name** | string | True | -  |  -  | The name of the Power BI group. Use this property to help remember which specific Power BI group id was used. | 
| **var.token_user_principal_name** | string | False | -  |  -  | The user principal name (UPN) of the user that was used to obtain the refresh token. | 
| **var.token_user_display_name** | string | False | -  |  -  | The user display name of the user that was used to obtain the refresh token. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **stream_analytics_job_id** | string  | - | 
| **dataset** | string  | - | 
| **table** | string  | - | 
| **group_id** | string  | - | 
| **group_name** | string  | - | 
| **token_user_principal_name** | string  | - | 
| **token_user_display_name** | string  | - | 