# azurerm_iot_time_series_insights_access_policy

Manages an Azure IoT Time Series Insights Access Policy.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "time_series_insights/iot_time_series_insights_access_policy" 
}

inputs = {
   name = "name of iot_time_series_insights_access_policy" 
   time_series_insights_environment_id = "time_series_insights_environment_id of iot_time_series_insights_access_policy" 
   principal_object_id = "principal_object_id of iot_time_series_insights_access_policy" 
   roles = "roles of iot_time_series_insights_access_policy" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string  -  |  Specifies the name of the Azure IoT Time Series Insights Access Policy. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.time_series_insights_environment_id** | string  -  |  The resource ID of the Azure IoT Time Series Insights Environment in which to create the Azure IoT Time Series Insights Reference Data Set. Changing this forces a new resource to be created. | 
| **var.principal_object_id** | string  -  |  The id of the principal in Azure Active Directory. Changing this forces a new resource to be created. | 
| **var.roles** | string  `Contributor`, `Reader`  |  A list of roles to apply to the Access Policy. Valid values include `Contributor` and `Reader`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string  The description of the Azure IoT Time Series Insights Access Policy. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoT Time Series Insights Access Policy. | 

Additionally, all variables are provided as outputs.
