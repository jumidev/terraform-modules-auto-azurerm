# azurerm_stream_analytics_output_powerbi

Manages a Stream Analytics Output powerBI.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_output_powerbi" 
}

inputs = {
   name = "name of stream_analytics_output_powerbi" 
   stream_analytics_job_id = "stream_analytics_job_id of stream_analytics_output_powerbi" 
   dataset = "dataset of stream_analytics_output_powerbi" 
   table = "table of stream_analytics_output_powerbi" 
   group_id = "group_id of stream_analytics_output_powerbi" 
   group_name = "group_name of stream_analytics_output_powerbi" 
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
| **name** | string |  The name of the Stream Output. Changing this forces a new resource to be created. | 
| **stream_analytics_job_id** | string |  The ID of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **dataset** | string |  The name of the Power BI dataset. | 
| **table** | string |  The name of the Power BI table under the specified dataset. | 
| **group_id** | string |  The ID of the Power BI group, this must be a valid UUID. | 
| **group_name** | string |  The name of the Power BI group. Use this property to help remember which specific Power BI group id was used. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **token_user_principal_name** | string |  The user principal name (UPN) of the user that was used to obtain the refresh token. | 
| **token_user_display_name** | string |  The user display name of the user that was used to obtain the refresh token. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
