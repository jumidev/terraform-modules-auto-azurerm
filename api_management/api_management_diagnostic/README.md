# azurerm_api_management_diagnostic

Manages an API Management Service Diagnostic.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_diagnostic" 
}

inputs = {
   identifier = "identifier of api_management_diagnostic" 
   api_management_name = "api_management_name of api_management_diagnostic" 
   resource_group_name = "${resource_group}" 
   api_management_logger_id = "api_management_logger_id of api_management_diagnostic" 
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
| **var.identifier** | string | True | -  |  -  |  The diagnostic identifier for the API Management Service. At this time the supported values are `applicationinsights` and `azuremonitor`. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | -  |  -  |  The Name of the API Management Service where this Diagnostic should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.api_management_logger_id** | string | True | -  |  -  |  The id of the target API Management Logger where the API Management Diagnostic should be saved. | 
| **var.always_log_errors** | string | False | -  |  -  |  Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings. | 
| **var.backend_request** | block | False | -  |  -  |  A `backend_request` block. | | `backend_request` block structure: || 
|   body_bytes (int): Number of payload bytes to log (up to 8192). ||
|   headers_to_log (string): Specifies a list of headers to log. ||
|   data_masking (block): A 'data_masking' block. ||

| **var.backend_response** | block | False | -  |  -  |  A `backend_response` block. | | `backend_response` block structure: || 
|   body_bytes (int): Number of payload bytes to log (up to 8192). ||
|   headers_to_log (string): Specifies a list of headers to log. ||
|   data_masking (block): A 'data_masking' block. ||

| **var.frontend_request** | block | False | -  |  -  |  A `frontend_request` block. | | `frontend_request` block structure: || 
|   body_bytes (int): Number of payload bytes to log (up to 8192). ||
|   headers_to_log (string): Specifies a list of headers to log. ||
|   data_masking (block): A 'data_masking' block. ||

| **var.frontend_response** | block | False | -  |  -  |  A `frontend_response` block. | | `frontend_response` block structure: || 
|   body_bytes (int): Number of payload bytes to log (up to 8192). ||
|   headers_to_log (string): Specifies a list of headers to log. ||
|   data_masking (block): A 'data_masking' block. ||

| **var.http_correlation_protocol** | string | False | -  |  `None`, `Legacy`, `W3C`  |  The HTTP Correlation Protocol to use. Possible values are `None`, `Legacy` or `W3C`. | 
| **var.log_client_ip** | string | False | -  |  -  |  Log client IP address. | 
| **var.sampling_percentage** | string | False | -  |  `0.0`, `100.0`  |  Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between `0.0` and `100.0`. | 
| **var.verbosity** | string | False | -  |  `verbose`, `information`, `error`  |  Logging verbosity. Possible values are `verbose`, `information` or `error`. | 
| **var.operation_name_format** | string | False | `Name`  |  `Name`, `Url`  |  The format of the Operation Name for Application Insights telemetries. Possible values are `Name`, and `Url`. Defaults to `Name`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Diagnostic. | 

Additionally, all variables are provided as outputs.
