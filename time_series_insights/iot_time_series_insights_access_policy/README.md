# azurerm_iot_time_series_insights_access_policy

Manages an Azure IoT Time Series Insights Access Policy.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Azure IoT Time Series Insights Access Policy. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.time_series_insights_environment_id** | string | True | -  |  The resource ID of the Azure IoT Time Series Insights Environment in which to create the Azure IoT Time Series Insights Reference Data Set. Changing this forces a new resource to be created. | 
| **var.principal_object_id** | string | True | -  |  The id of the principal in Azure Active Directory. Changing this forces a new resource to be created. | 
| **var.roles** | string | True | `Contributor`, `Reader`  |  A list of roles to apply to the Access Policy. Valid values include `Contributor` and `Reader`. | 
| **var.description** | string | False | -  |  The description of the Azure IoT Time Series Insights Access Policy. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **time_series_insights_environment_id** | string  | - | 
| **principal_object_id** | string  | - | 
| **roles** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the IoT Time Series Insights Access Policy. | 