# azurerm_api_management_diagnostic

Manages an API Management Service Diagnostic.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **identifier** | string | True | -  |  -  | The diagnostic identifier for the API Management Service. At this time the supported values are `applicationinsights` and `azuremonitor`. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The Name of the API Management Service where this Diagnostic should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **api_management_logger_id** | string | True | -  |  -  | The id of the target API Management Logger where the API Management Diagnostic should be saved. | 
| **always_log_errors** | string | False | -  |  -  | Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings. | 
| **backend_request** | block | False | -  |  -  | A `backend_request` block. | 
| **backend_response** | block | False | -  |  -  | A `backend_response` block. | 
| **frontend_request** | block | False | -  |  -  | A `frontend_request` block. | 
| **frontend_response** | block | False | -  |  -  | A `frontend_response` block. | 
| **http_correlation_protocol** | string | False | -  |  `None`, `Legacy`, `W3C`  | The HTTP Correlation Protocol to use. Possible values are `None`, `Legacy` or `W3C`. | 
| **log_client_ip** | string | False | -  |  -  | Log client IP address. | 
| **sampling_percentage** | string | False | -  |  `0.0`, `100.0`  | Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between `0.0` and `100.0`. | 
| **verbosity** | string | False | -  |  `verbose`, `information`, `error`  | Logging verbosity. Possible values are `verbose`, `information` or `error`. | 
| **operation_name_format** | string | False | `Name`  |  `Name`, `Url`  | The format of the Operation Name for Application Insights telemetries. Possible values are `Name`, and `Url`. Defaults to `Name`. | 

