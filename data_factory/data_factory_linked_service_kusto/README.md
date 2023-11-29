# azurerm_data_factory_linked_service_kusto

Manages a Linked Service (connection) between a Kusto Cluster and Azure Data Factory.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **description** | string | False | -  |  -  | The description for the Data Factory Linked Service. | 
| **integration_runtime_name** | string | False | -  |  -  | The integration runtime reference to associate with the Data Factory Linked Service. | 
| **annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Linked Service. | 
| **parameters** | string | False | -  |  -  | A map of parameters to associate with the Data Factory Linked Service. | 
| **additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Linked Service. | 
| **kusto_endpoint** | string | True | -  |  -  | The URI of the Kusto Cluster endpoint. | 
| **kusto_database_name** | string | True | -  |  -  | The Kusto Database Name. | 
| **use_managed_identity** | bool | False | -  |  -  | Whether to use the Data Factory's managed identity to authenticate against the Kusto Database. | 
| **service_principal_id** | string | False | -  |  -  | The service principal id in which to authenticate against the Kusto Database. | 
| **service_principal_key** | string | False | -  |  -  | The service principal key in which to authenticate against the Kusto Database. | 
| **tenant** | string | False | -  |  -  | The service principal tenant id or name in which to authenticate against the Kusto Database. | 

