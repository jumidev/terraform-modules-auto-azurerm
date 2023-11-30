# azurerm_api_management_api_diagnostic

Manages a API Management Service API Diagnostics Logs.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.api_management_logger_id** | string | True | -  |  -  |  The ID (name) of the Diagnostics Logger. | 
| **var.api_management_name** | string | True | -  |  -  |  The name of the API Management Service instance. Changing this forces a new API Management Service API Diagnostics Logs to be created. | 
| **var.api_name** | string | True | -  |  -  |  The name of the API on which to configure the Diagnostics Logs. Changing this forces a new API Management Service API Diagnostics Logs to be created. | 
| **var.identifier** | string | True | -  |  `applicationinsights`, `azuremonitor`  |  Identifier of the Diagnostics Logs. Possible values are `applicationinsights` and `azuremonitor`. Changing this forces a new API Management Service API Diagnostics Logs to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the API Management Service API Diagnostics Logs should exist. Changing this forces a new API Management Service API Diagnostics Logs to be created. | 
| **var.always_log_errors** | string | False | -  |  -  |  Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings. | 
| **var.backend_request** | block | False | -  |  -  |  A `backend_request` block. | 
| **var.backend_response** | block | False | -  |  -  |  A `backend_response` block. | 
| **var.frontend_request** | block | False | -  |  -  |  A `frontend_request` block. | 
| **var.frontend_response** | block | False | -  |  -  |  A `frontend_response` block. | 
| **var.http_correlation_protocol** | string | False | -  |  `None`, `Legacy`, `W3C`  |  The HTTP Correlation Protocol to use. Possible values are `None`, `Legacy` or `W3C`. | 
| **var.log_client_ip** | string | False | -  |  -  |  Log client IP address. | 
| **var.sampling_percentage** | string | False | -  |  `0.0`, `100.0`  |  Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between `0.0` and `100.0`. | 
| **var.verbosity** | string | False | -  |  `verbose`, `information`, `error`  |  Logging verbosity. Possible values are `verbose`, `information` or `error`. | 
| **var.operation_name_format** | string | False | `Name`  |  `Name`, `Url`  |  The format of the Operation Name for Application Insights telemetries. Possible values are `Name`, and `Url`. Defaults to `Name`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_logger_id** | string  | - | 
| **api_management_name** | string  | - | 
| **api_name** | string  | - | 
| **identifier** | string  | - | 
| **resource_group_name** | string  | - | 
| **always_log_errors** | string  | - | 
| **backend_request** | block  | - | 
| **backend_response** | block  | - | 
| **frontend_request** | block  | - | 
| **frontend_response** | block  | - | 
| **http_correlation_protocol** | string  | - | 
| **log_client_ip** | string  | - | 
| **sampling_percentage** | string  | - | 
| **verbosity** | string  | - | 
| **operation_name_format** | string  | - | 
| **id** | string  | The ID of the API Management Service API Diagnostics Logs. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_api_diagnostic" 
}

inputs = {
   api_management_logger_id = "api_management_logger_id of api_management_api_diagnostic" 
   api_management_name = "api_management_name of api_management_api_diagnostic" 
   api_name = "api_name of api_management_api_diagnostic" 
   identifier = "identifier of api_management_api_diagnostic" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```