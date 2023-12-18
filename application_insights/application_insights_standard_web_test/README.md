# azurerm_application_insights_standard_web_test

Manages a Application Insights Standard WebTest.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "application_insights/application_insights_standard_web_test"   
}

inputs = {
   name = "The name which should be used for this Application Insights Standard WebTest..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # application_insights_id → set in tfstate_inputs
   geo_locations = "Specifies a list of where to physically run the tests from to give global covera..."   
   request = {
      url = "..."      
   }
   
}

tfstate_inputs = {
   application_insights_id = "path/to/application_insights_component:id"   
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
| **name** | string |  The name which should be used for this Application Insights Standard WebTest. Changing this forces a new Application Insights Standard WebTest to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. | 
| **location** | string |  The Azure Region where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. It needs to correlate with location of the parent resource (azurerm_application_insights) | 
| **application_insights_id** | string |  The ID of the Application Insights instance on which the WebTest operates. Changing this forces a new Application Insights Standard WebTest to be created. | 
| **geo_locations** | string |  Specifies a list of where to physically run the tests from to give global coverage for accessibility of your application. | 
| **request** | [block](#request-block-structure) |  A `request` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **description** | string |  -  |  -  |  Purpose/user defined descriptive test for this WebTest. | 
| **enabled** | bool |  -  |  -  |  Should the WebTest be enabled? | 
| **frequency** | string |  `300`  |  `300`, `600`, `900`  |  Interval in seconds between test runs for this WebTest. Valid options are `300`, `600` and `900`. Defaults to `300`. | 
| **retry_enabled** | bool |  -  |  -  |  Should the retry on WebTest failure be enabled? | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Application Insights Standard WebTest. | 
| **timeout** | string |  `30`  |  -  |  Seconds until this WebTest will timeout and fail. Default is `30`. | 
| **validation_rules** | [block](#validation_rules-block-structure) |  -  |  -  |  A `validation_rules` block. | 

### `content` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content_match` | string | Yes | - | A string value containing the content to match on. |
| `ignore_case` | string | No | - | Ignore the casing in the 'content_match' value. |
| `pass_if_text_found` | string | No | - | If the content of 'content_match' is found, pass the test. If set to 'false', the WebTest is failing if the content of 'content_match' is found. |

### `validation_rules` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content` | [block](#content-block-structure) | No | - | A 'content' block. |
| `expected_status_code` | string | No | - | The expected status code of the response. Default is '200', '0' means 'response code < 400' |
| `ssl_cert_remaining_lifetime` | number | No | - | The number of days of SSL certificate validity remaining for the checked endpoint. If the certificate has a shorter remaining lifetime left, the test will fail. This number should be between 1 and 365. |
| `ssl_check_enabled` | bool | No | - | Should the SSL check be enabled? |

### `request` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `url` | string | Yes | - | The WebTest request URL. |
| `body` | string | No | - | The WebTest request body. |
| `follow_redirects_enabled` | bool | No | True | Should the following of redirects be enabled? Defaults to 'true'. |
| `header` | list | No | - | One or more 'header' blocks. |
| `http_verb` | string | No | GET | Which HTTP verb to use for the call. Options are 'GET', 'POST', 'PUT', 'PATCH', and 'DELETE'. Defaults to 'GET'. |
| `parse_dependent_requests_enabled` | bool | No | True | Should the parsing of dependend requests be enabled? Defaults to 'true'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Insights Standard WebTest. | 
| **synthetic_monitor_id** | string | No  | Unique ID of this WebTest. This is typically the same value as the Name field. | 

Additionally, all variables are provided as outputs.
