# azurerm_data_factory_managed_private_endpoint

Manages a Data Factory Managed Private Endpoint.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **var.data_factory_id** | string | True | The ID of the Data Factory on which to create the Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | The ID of the Private Link Enabled Remote Resource which this Data Factory Private Endpoint should be connected to. Changing this forces a new resource to be created. | 
| **var.subresource_name** | string | False | Specifies the sub resource name which the Data Factory Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 
| **var.fqdns** | string | False | Fully qualified domain names. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **target_resource_id** | string  | - | 
| **subresource_name** | string  | - | 
| **fqdns** | string  | - | 
| **id** | string  | The ID of the Data Factory Managed Private Endpoint. | 