# azurerm_stream_analytics_output_powerbi

Manages a Stream Analytics Output powerBI.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "stream_analytics/stream_analytics_output_powerbi"   
}

inputs = {
   name = "The name of the Stream Output"   
   # stream_analytics_job_id → set in component_inputs
   dataset = "The name of the Power BI dataset"   
   table = "The name of the Power BI table under the specified dataset..."   
   group_id = "The ID of the Power BI group, this must be a valid UUID..."   
   group_name = "The name of the Power BI group"   
}

component_inputs = {
   stream_analytics_job_id = "path/to/stream_analytics_job_component:id"   
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
