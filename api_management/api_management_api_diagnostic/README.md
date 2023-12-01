# azurerm_api_management_api_diagnostic

Manages a API Management Service API Diagnostics Logs.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.api_management_logger_id** | string |  -  |  The ID (name) of the Diagnostics Logger. | 
| **var.api_management_name** | string |  -  |  The name of the API Management Service instance. Changing this forces a new API Management Service API Diagnostics Logs to be created. | 
| **var.api_name** | string |  -  |  The name of the API on which to configure the Diagnostics Logs. Changing this forces a new API Management Service API Diagnostics Logs to be created. | 
| **var.identifier** | string |  `applicationinsights`, `azuremonitor`  |  Identifier of the Diagnostics Logs. Possible values are `applicationinsights` and `azuremonitor`. Changing this forces a new API Management Service API Diagnostics Logs to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the Resource Group where the API Management Service API Diagnostics Logs should exist. Changing this forces a new API Management Service API Diagnostics Logs to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.always_log_errors** | string |  -  |  -  |  Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings. | 
| **var.backend_request** | [block](#backend_request-block-structure) |  -  |  -  |  A `backend_request` block. | 
| **var.backend_response** | [block](#backend_response-block-structure) |  -  |  -  |  A `backend_response` block. | 
| **var.frontend_request** | [block](#frontend_request-block-structure) |  -  |  -  |  A `frontend_request` block. | 
| **var.frontend_response** | [block](#frontend_response-block-structure) |  -  |  -  |  A `frontend_response` block. | 
| **var.http_correlation_protocol** | string |  -  |  `None`, `Legacy`, `W3C`  |  The HTTP Correlation Protocol to use. Possible values are `None`, `Legacy` or `W3C`. | 
| **var.log_client_ip** | string |  -  |  -  |  Log client IP address. | 
| **var.sampling_percentage** | string |  -  |  `0.0`, `100.0`  |  Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between `0.0` and `100.0`. | 
| **var.verbosity** | string |  -  |  `verbose`, `information`, `error`  |  Logging verbosity. Possible values are `verbose`, `information` or `error`. | 
| **var.operation_name_format** | string |  `Name`  |  `Name`, `Url`  |  The format of the Operation Name for Application Insights telemetries. Possible values are `Name`, and `Url`. Defaults to `Name`. | 

### `backend_request` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `body_bytes` | int | No | - | Number of payload bytes to log (up to 8192). |
| `headers_to_log` | string | No | - | Specifies a list of headers to log. |
| `data_masking` | [block](#backend_request-block-structure) | No | - | A 'data_masking' block. |

### `backend_response` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `body_bytes` | int | No | - | Number of payload bytes to log (up to 8192). |
| `headers_to_log` | string | No | - | Specifies a list of headers to log. |
| `data_masking` | [block](#backend_response-block-structure) | No | - | A 'data_masking' block. |

### `frontend_request` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `body_bytes` | int | No | - | Number of payload bytes to log (up to 8192). |
| `headers_to_log` | string | No | - | Specifies a list of headers to log. |
| `data_masking` | [block](#frontend_request-block-structure) | No | - | A 'data_masking' block. |

### `query_params` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | The data masking mode. Possible values are 'Mask' and 'Hide' for 'query_params'. The only possible value is 'Mask' for 'headers'. |
| `value` | string | Yes | - | The name of the header or the query parameter to mask. |

### `data_masking` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `query_params` | [block](#data_masking-block-structure) | No | - | A 'query_params' block. |
| `headers` | [block](#data_masking-block-structure) | No | - | A 'headers' block. |

### `frontend_response` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `body_bytes` | int | No | - | Number of payload bytes to log (up to 8192). |
| `headers_to_log` | string | No | - | Specifies a list of headers to log. |
| `data_masking` | [block](#frontend_response-block-structure) | No | - | A 'data_masking' block. |

### `headers` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | The data masking mode. Possible values are 'Mask' and 'Hide' for 'query_params'. The only possible value is 'Mask' for 'headers'. |
| `value` | string | Yes | - | The name of the header or the query parameter to mask. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Service API Diagnostics Logs. | 

Additionally, all variables are provided as outputs.
