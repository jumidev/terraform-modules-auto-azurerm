# azurerm_application_insights_standard_web_test

Manages a Application Insights Standard WebTest.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Application Insights Standard WebTest. Changing this forces a new Application Insights Standard WebTest to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure Region where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. It needs to correlate with location of the parent resource (azurerm_application_insights) | 
| **var.application_insights_id** | string | True | -  |  -  |  The ID of the Application Insights instance on which the WebTest operates. Changing this forces a new Application Insights Standard WebTest to be created. | 
| **var.geo_locations** | string | True | -  |  -  |  Specifies a list of where to physically run the tests from to give global coverage for accessibility of your application. | 
| **var.request** | block | True | -  |  -  |  A `request` block. | 
| **var.description** | string | False | -  |  -  |  Purpose/user defined descriptive test for this WebTest. | 
| **var.enabled** | bool | False | -  |  -  |  Should the WebTest be enabled? | 
| **var.frequency** | string | False | `300`  |  `300`, `600`, `900`  |  Interval in seconds between test runs for this WebTest. Valid options are `300`, `600` and `900`. Defaults to `300`. | 
| **var.retry_enabled** | bool | False | -  |  -  |  Should the retry on WebTest failure be enabled? | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Application Insights Standard WebTest. | 
| **var.timeout** | string | False | `30`  |  -  |  Seconds until this WebTest will timeout and fail. Default is `30`. | 
| **var.validation_rules** | block | False | -  |  -  |  A `validation_rules` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **application_insights_id** | string  | - | 
| **geo_locations** | string  | - | 
| **request** | block  | - | 
| **description** | string  | - | 
| **enabled** | bool  | - | 
| **frequency** | string  | - | 
| **retry_enabled** | bool  | - | 
| **tags** | map  | - | 
| **timeout** | string  | - | 
| **validation_rules** | block  | - | 
| **id** | string  | The ID of the Application Insights Standard WebTest. | 
| **synthetic_monitor_id** | string  | Unique ID of this WebTest. This is typically the same value as the Name field. | 