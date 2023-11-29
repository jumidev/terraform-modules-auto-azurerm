# azurerm_api_management_backend

Manages a backend within an API Management Service.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the API Management backend. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | -  |  -  | The Name of the API Management Service where this backend should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.protocol** | string | True | -  |  `http`, `soap`  | The protocol used by the backend host. Possible values are `http` or `soap`. | 
| **var.url** | string | True | -  |  -  | The URL of the backend host. | 
| **var.credentials** | block | False | -  |  -  | A `credentials` block. | 
| **var.description** | string | False | -  |  -  | The description of the backend. | 
| **var.proxy** | block | False | -  |  -  | A `proxy` block. | 
| **var.resource_id** | string | False | -  |  -  | The management URI of the backend host in an external system. This URI can be the ARM Resource ID of Logic Apps, Function Apps or API Apps, or the management endpoint of a Service Fabric cluster. | 
| **var.service_fabric_cluster** | block | False | -  |  -  | A `service_fabric_cluster` block. | 
| **var.title** | string | False | -  |  -  | The title of the backend. | 
| **var.tls** | block | False | -  |  -  | A `tls` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **protocol** | string  | - | 
| **url** | string  | - | 
| **credentials** | block  | - | 
| **description** | string  | - | 
| **proxy** | block  | - | 
| **resource_id** | string  | - | 
| **service_fabric_cluster** | block  | - | 
| **title** | string  | - | 
| **tls** | block  | - | 
| **id** | string  | The ID of the API Management API. | 