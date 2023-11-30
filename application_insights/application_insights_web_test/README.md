# azurerm_application_insights_web_test

Manages an Application Insights WebTest.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "application_insights/application_insights_web_test" 
}

inputs = {
   name = "name of application_insights_web_test" 
   resource_group_name = "${resource_group}" 
   application_insights_id = "application_insights_id of application_insights_web_test" 
   location = "${location}" 
   kind = "kind of application_insights_web_test" 
   geo_locations = "geo_locations of application_insights_web_test" 
   configuration = "configuration of application_insights_web_test" 
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
| **var.name** | string |  Specifies the name of the Application Insights WebTest. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which to create the Application Insights WebTest. Changing this forces a new resource | 
| **var.application_insights_id** | string |  The ID of the Application Insights component on which the WebTest operates. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. It needs to correlate with location of parent resource (azurerm_application_insights). | 
| **var.kind** | string |  The kind of web test that this web test watches. Choices are `ping` and `multistep`. Changing this forces a new resource to be created. | 
| **var.geo_locations** | list |  A list of where to physically run the tests from to give global coverage for accessibility of your application. | 
| **var.configuration** | string |  An XML configuration specification for a WebTest ([see here for more information](https://docs.microsoft.com/rest/api/application-insights/webtests/createorupdate/)). | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.frequency** | string |  `300`  |  `300`, `600`, `900`  |  Interval in seconds between test runs for this WebTest. Valid options are `300`, `600` and `900`. Defaults to `300`. | 
| **var.timeout** | string |  `30`  |  -  |  Seconds until this WebTest will timeout and fail. Default is `30`. | 
| **var.enabled** | bool |  -  |  -  |  Is the test actively being monitored. | 
| **var.retry_enabled** | bool |  -  |  -  |  Allow for retries should this WebTest fail. | 
| **var.description** | string |  -  |  -  |  Purpose/user defined descriptive test for this WebTest. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
