# azurerm_api_management_diagnostic

Manages an API Management Service Diagnostic.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.identifier** | string |  The diagnostic identifier for the API Management Service. At this time the supported values are `applicationinsights` and `azuremonitor`. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string |  The Name of the API Management Service where this Diagnostic should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.api_management_logger_id** | string |  The id of the target API Management Logger where the API Management Diagnostic should be saved. | 

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

### `query_params` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | The data masking mode. Possible values are 'Mask' and 'Hide' for 'query_params'. The only possible value is 'Mask' for 'headers'. |
| `value` | string | Yes | - | The name of the header or the query parameter to mask. |

### `frontend_response` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `body_bytes` | int | No | - | Number of payload bytes to log (up to 8192). |
| `headers_to_log` | string | No | - | Specifies a list of headers to log. |
| `data_masking` | block | No | - | A 'data_masking' block. |

### `data_masking` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `query_params` | block | No | - | A 'query_params' block. |
| `headers` | block | No | - | A 'headers' block. |

### `backend_request` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `body_bytes` | int | No | - | Number of payload bytes to log (up to 8192). |
| `headers_to_log` | string | No | - | Specifies a list of headers to log. |
| `data_masking` | block | No | - | A 'data_masking' block. |

### `headers` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | The data masking mode. Possible values are 'Mask' and 'Hide' for 'query_params'. The only possible value is 'Mask' for 'headers'. |
| `value` | string | Yes | - | The name of the header or the query parameter to mask. |

### `backend_response` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `body_bytes` | int | No | - | Number of payload bytes to log (up to 8192). |
| `headers_to_log` | string | No | - | Specifies a list of headers to log. |
| `data_masking` | block | No | - | A 'data_masking' block. |

### `frontend_request` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `body_bytes` | int | No | - | Number of payload bytes to log (up to 8192). |
| `headers_to_log` | string | No | - | Specifies a list of headers to log. |
| `data_masking` | block | No | - | A 'data_masking' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Diagnostic. | 

Additionally, all variables are provided as outputs.
