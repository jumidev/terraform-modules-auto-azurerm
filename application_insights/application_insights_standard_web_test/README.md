# azurerm_application_insights_standard_web_test

Manages a Application Insights Standard WebTest.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Application Insights Standard WebTest. Changing this forces a new Application Insights Standard WebTest to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. It needs to correlate with location of the parent resource (azurerm_application_insights) | 
| **application_insights_id** | string | True | -  |  -  | The ID of the Application Insights instance on which the WebTest operates. Changing this forces a new Application Insights Standard WebTest to be created. | 
| **geo_locations** | string | True | -  |  -  | Specifies a list of where to physically run the tests from to give global coverage for accessibility of your application. | 
| **request** | block | True | -  |  -  | A `request` block. | 
| **description** | string | False | -  |  -  | Purpose/user defined descriptive test for this WebTest. | 
| **enabled** | bool | False | -  |  -  | Should the WebTest be enabled? | 
| **frequency** | string | False | `300`  |  `300`, `600`, `900`  | Interval in seconds between test runs for this WebTest. Valid options are `300`, `600` and `900`. Defaults to `300`. | 
| **retry_enabled** | bool | False | -  |  -  | Should the retry on WebTest failure be enabled? | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Application Insights Standard WebTest. | 
| **timeout** | string | False | `30`  |  -  | Seconds until this WebTest will timeout and fail. Default is `30`. | 
| **validation_rules** | block | False | -  |  -  | A `validation_rules` block. | 

