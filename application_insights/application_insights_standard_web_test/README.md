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
   request = {
      example_request = {
         url = "..."   
      }
  
   }
 
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
| **var.name** | string |  The name which should be used for this Application Insights Standard WebTest. Changing this forces a new Application Insights Standard WebTest to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. | 
| **var.location** | string |  The Azure Region where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. It needs to correlate with location of the parent resource (azurerm_application_insights) | 
| **var.application_insights_id** | string |  The ID of the Application Insights instance on which the WebTest operates. Changing this forces a new Application Insights Standard WebTest to be created. | 
| **var.geo_locations** | string |  Specifies a list of where to physically run the tests from to give global coverage for accessibility of your application. | 
| **var.request** | block |  A `request` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.description** | string |  -  |  -  |  Purpose/user defined descriptive test for this WebTest. | 
| **var.enabled** | bool |  -  |  -  |  Should the WebTest be enabled? | 
| **var.frequency** | string |  `300`  |  `300`, `600`, `900`  |  Interval in seconds between test runs for this WebTest. Valid options are `300`, `600` and `900`. Defaults to `300`. | 
| **var.retry_enabled** | bool |  -  |  -  |  Should the retry on WebTest failure be enabled? | 
| **var.tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Application Insights Standard WebTest. | 
| **var.timeout** | string |  `30`  |  -  |  Seconds until this WebTest will timeout and fail. Default is `30`. | 
| **var.validation_rules** | block |  -  |  -  |  A `validation_rules` block. | 

### `request` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `url` | string | Yes | - | The WebTest request URL. |
| `body` | string | No | - | The WebTest request body. |
| `follow_redirects_enabled` | bool | No | True | Should the following of redirects be enabled? Defaults to 'true'. |
| `header` | list | No | - | One or more 'header' blocks. |
| `http_verb` | string | No | GET | Which HTTP verb to use for the call. Options are 'GET', 'POST', 'PUT', 'PATCH', and 'DELETE'. Defaults to 'GET'. |
| `parse_dependent_requests_enabled` | bool | No | True | Should the parsing of dependend requests be enabled? Defaults to 'true'. |

### `validation_rules` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content` | block | No | - | A 'content' block. |
| `expected_status_code` | string | No | - | The expected status code of the response. Default is '200', '0' means 'response code < 400' |
| `ssl_cert_remaining_lifetime` | int | No | - | The number of days of SSL certificate validity remaining for the checked endpoint. If the certificate has a shorter remaining lifetime left, the test will fail. This number should be between 1 and 365. |
| `ssl_check_enabled` | bool | No | - | Should the SSL check be enabled? |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Insights Standard WebTest. | 
| **synthetic_monitor_id** | string | No  | Unique ID of this WebTest. This is typically the same value as the Name field. | 

Additionally, all variables are provided as outputs.
