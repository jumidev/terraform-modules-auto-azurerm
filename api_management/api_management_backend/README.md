# azurerm_api_management_backend

Manages a backend within an API Management Service.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the API Management backend. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | -  |  The Name of the API Management Service where this backend should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.protocol** | string | True | `http`, `soap`  |  The protocol used by the backend host. Possible values are `http` or `soap`. | 
| **var.url** | string | True | -  |  The URL of the backend host. | 
| **var.credentials** | block | False | -  |  A `credentials` block. | 
| **var.description** | string | False | -  |  The description of the backend. | 
| **var.proxy** | block | False | -  |  A `proxy` block. | 
| **var.resource_id** | string | False | -  |  The management URI of the backend host in an external system. This URI can be the ARM Resource ID of Logic Apps, Function Apps or API Apps, or the management endpoint of a Service Fabric cluster. | 
| **var.service_fabric_cluster** | block | False | -  |  A `service_fabric_cluster` block. | 
| **var.title** | string | False | -  |  The title of the backend. | 
| **var.tls** | block | False | -  |  A `tls` block. | 

### `credentials` block structure

> `authorization` (block): An 'authorization' block.\
> `certificate` (list): A list of client certificate thumbprints to present to the backend host. The certificates must exist within the API Management Service.\
> `header` (string): A mapping of header parameters to pass to the backend host. The keys are the header names and the values are a comma separated string of header values. This is converted to a list before being passed to the API.\
> `query` (string): A mapping of query parameters to pass to the backend host. The keys are the query names and the values are a comma separated string of query values. This is converted to a list before being passed to the API.\

### `proxy` block structure

> `password` (string): The password to connect to the proxy server.\
> `url` (string): (REQUIRED) The URL of the proxy server.\
> `username` (string): (REQUIRED) The username to connect to the proxy server.\

### `service_fabric_cluster` block structure

> `client_certificate_thumbprint` (string): The client certificate thumbprint for the management endpoint.\
> `client_certificate_id` (string): The client certificate resource id for the management endpoint.\
> `management_endpoints` (list): (REQUIRED) A list of cluster management endpoints.\
> `max_partition_resolution_retries` (int): (REQUIRED) The maximum number of retries when attempting resolve the partition.\
> `server_certificate_thumbprints` (list): A list of thumbprints of the server certificates of the Service Fabric cluster.\
> `server_x509_name` (list): One or more 'server_x509_name' blocks.\

### `tls` block structure

> `validate_certificate_chain` (string): Flag indicating whether SSL certificate chain validation should be done when using self-signed certificates for the backend host.\
> `validate_certificate_name` (string): Flag indicating whether SSL certificate name validation should be done when using self-signed certificates for the backend host.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API. | 

Additionally, all variables are provided as outputs.
