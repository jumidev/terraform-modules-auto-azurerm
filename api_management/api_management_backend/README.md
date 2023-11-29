# azurerm_api_management_backend

Manages a backend within an API Management Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the API Management backend. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The Name of the API Management Service where this backend should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **protocol** | string | True | -  |  `http`, `soap`  | The protocol used by the backend host. Possible values are `http` or `soap`. | 
| **url** | string | True | -  |  -  | The URL of the backend host. | 
| **credentials** | block | False | -  |  -  | A `credentials` block. | 
| **description** | string | False | -  |  -  | The description of the backend. | 
| **proxy** | block | False | -  |  -  | A `proxy` block. | 
| **resource_id** | string | False | -  |  -  | The management URI of the backend host in an external system. This URI can be the ARM Resource ID of Logic Apps, Function Apps or API Apps, or the management endpoint of a Service Fabric cluster. | 
| **service_fabric_cluster** | block | False | -  |  -  | A `service_fabric_cluster` block. | 
| **title** | string | False | -  |  -  | The title of the backend. | 
| **tls** | block | False | -  |  -  | A `tls` block. | 

