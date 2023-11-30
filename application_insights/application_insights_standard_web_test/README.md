# azurerm_application_insights_standard_web_test

Manages a Application Insights Standard WebTest.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "application_insights/application_insights_standard_web_test" 
}

inputs = {
   name = "name of application_insights_standard_web_test" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   application_insights_id = "application_insights_id of application_insights_standard_web_test" 
   geo_locations = "geo_locations of application_insights_standard_web_test" 
   request = "request of application_insights_standard_web_test" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

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

### `request` block structure

>`url` (string): (REQUIRED) The WebTest request URL.
>`body` (string): The WebTest request body.
>`follow_redirects_enabled` (bool): Should the following of redirects be enabled? Defaults to 'true'.
>`header` (list): One or more 'header' blocks.
>`http_verb` (string): Which HTTP verb to use for the call. Options are 'GET', 'POST', 'PUT', 'PATCH', and 'DELETE'. Defaults to 'GET'.
>`parse_dependent_requests_enabled` (bool): Should the parsing of dependend requests be enabled? Defaults to 'true'.

### `validation_rules` block structure

>`content` (block): A 'content' block.
>`expected_status_code` (string): The expected status code of the response. Default is '200', '0' means 'response code < 400'
>`ssl_cert_remaining_lifetime` (int): The number of days of SSL certificate validity remaining for the checked endpoint. If the certificate has a shorter remaining lifetime left, the test will fail. This number should be between 1 and 365.
>`ssl_check_enabled` (bool): Should the SSL check be enabled?



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Insights Standard WebTest. | 
| **synthetic_monitor_id** | string | No  | Unique ID of this WebTest. This is typically the same value as the Name field. | 

Additionally, all variables are provided as outputs.
