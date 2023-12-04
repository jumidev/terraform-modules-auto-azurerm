# azurerm_api_management_backend

Manages a backend within an API Management Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_backend" 
}

inputs = {
   name = "name of api_management_backend" 
   api_management_name = "api_management_name of api_management_backend" 
   resource_group_name = "${resource_group}" 
   protocol = "protocol of api_management_backend" 
   url = "url of api_management_backend" 
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
| **name** | string |  -  |  The name of the API Management backend. Changing this forces a new resource to be created. | 
| **api_management_name** | string |  -  |  The Name of the API Management Service where this backend should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **protocol** | string |  `http`, `soap`  |  The protocol used by the backend host. Possible values are `http` or `soap`. | 
| **url** | string |  -  |  The URL of the backend host. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **credentials** | [block](#credentials-block-structure) |  A `credentials` block. | 
| **description** | string |  The description of the backend. | 
| **proxy** | [block](#proxy-block-structure) |  A `proxy` block. | 
| **resource_id** | string |  The management URI of the backend host in an external system. This URI can be the ARM Resource ID of Logic Apps, Function Apps or API Apps, or the management endpoint of a Service Fabric cluster. | 
| **service_fabric_cluster** | [block](#service_fabric_cluster-block-structure) |  A `service_fabric_cluster` block. | 
| **title** | string |  The title of the backend. | 
| **tls** | [block](#tls-block-structure) |  A `tls` block. | 

### `proxy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `password` | string | No | - | The password to connect to the proxy server. |
| `url` | string | Yes | - | The URL of the proxy server. |
| `username` | string | Yes | - | The username to connect to the proxy server. |

### `credentials` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `authorization` | [block](#credentials-block-structure) | No | - | An 'authorization' block. |
| `certificate` | list | No | - | A list of client certificate thumbprints to present to the backend host. The certificates must exist within the API Management Service. |
| `header` | string | No | - | A mapping of header parameters to pass to the backend host. The keys are the header names and the values are a comma separated string of header values. This is converted to a list before being passed to the API. |
| `query` | string | No | - | A mapping of query parameters to pass to the backend host. The keys are the query names and the values are a comma separated string of query values. This is converted to a list before being passed to the API. |

### `service_fabric_cluster` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_certificate_thumbprint` | string | No | - | The client certificate thumbprint for the management endpoint. |
| `client_certificate_id` | string | No | - | The client certificate resource id for the management endpoint. |
| `management_endpoints` | list | Yes | - | A list of cluster management endpoints. |
| `max_partition_resolution_retries` | int | Yes | - | The maximum number of retries when attempting resolve the partition. |
| `server_certificate_thumbprints` | list | No | - | A list of thumbprints of the server certificates of the Service Fabric cluster. |
| `server_x509_name` | list | No | - | One or more 'server_x509_name' blocks. |

### `authorization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parameter` | string | No | - | The authentication Parameter value. |
| `scheme` | string | No | - | The authentication Scheme name. |

### `tls` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `validate_certificate_chain` | string | No | - | Flag indicating whether SSL certificate chain validation should be done when using self-signed certificates for the backend host. |
| `validate_certificate_name` | string | No | - | Flag indicating whether SSL certificate name validation should be done when using self-signed certificates for the backend host. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API. | 

Additionally, all variables are provided as outputs.
