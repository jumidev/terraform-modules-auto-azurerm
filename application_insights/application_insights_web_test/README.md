# azurerm_application_insights_web_test

Manages an Application Insights WebTest.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Application Insights WebTest. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Application Insights WebTest. Changing this forces a new resource | 
| **var.application_insights_id** | string | True | -  |  -  |  The ID of the Application Insights component on which the WebTest operates. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. It needs to correlate with location of parent resource (azurerm_application_insights). | 
| **var.kind** | string | True | -  |  -  |  The kind of web test that this web test watches. Choices are `ping` and `multistep`. Changing this forces a new resource to be created. | 
| **var.geo_locations** | list | True | -  |  -  |  A list of where to physically run the tests from to give global coverage for accessibility of your application. | 
| **var.configuration** | string | True | -  |  -  |  An XML configuration specification for a WebTest ([see here for more information](https://docs.microsoft.com/rest/api/application-insights/webtests/createorupdate/)). | 
| **var.frequency** | string | False | `300`  |  `300`, `600`, `900`  |  Interval in seconds between test runs for this WebTest. Valid options are `300`, `600` and `900`. Defaults to `300`. | 
| **var.timeout** | string | False | `30`  |  -  |  Seconds until this WebTest will timeout and fail. Default is `30`. | 
| **var.enabled** | bool | False | -  |  -  |  Is the test actively being monitored. | 
| **var.retry_enabled** | bool | False | -  |  -  |  Allow for retries should this WebTest fail. | 
| **var.description** | string | False | -  |  -  |  Purpose/user defined descriptive test for this WebTest. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **application_insights_id** | string  | - | 
| **location** | string  | - | 
| **kind** | string  | - | 
| **geo_locations** | list  | - | 
| **configuration** | string  | - | 
| **frequency** | string  | - | 
| **timeout** | string  | - | 
| **enabled** | bool  | - | 
| **retry_enabled** | bool  | - | 
| **description** | string  | - | 
| **tags** | map  | - | 

## Example minimal hclt

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