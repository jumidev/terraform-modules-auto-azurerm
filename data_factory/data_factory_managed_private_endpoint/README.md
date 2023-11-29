# azurerm_data_factory_managed_private_endpoint

Manages a Data Factory Managed Private Endpoint.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **data_factory_id** | string | True | -  |  -  | The ID of the Data Factory on which to create the Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **target_resource_id** | string | True | -  |  -  | The ID of the Private Link Enabled Remote Resource which this Data Factory Private Endpoint should be connected to. Changing this forces a new resource to be created. | 
| **subresource_name** | string | False | -  |  -  | Specifies the sub resource name which the Data Factory Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 
| **fqdns** | string | False | -  |  -  | Fully qualified domain names. Changing this forces a new resource to be created. | 

