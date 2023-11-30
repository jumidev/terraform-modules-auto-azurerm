# azurerm_data_factory_linked_service_kusto

Manages a Linked Service (connection) between a Kusto Cluster and Azure Data Factory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_kusto" 
}

inputs = {
   name = "name of data_factory_linked_service_kusto" 
   data_factory_id = "data_factory_id of data_factory_linked_service_kusto" 
   kusto_endpoint = "kusto_endpoint of data_factory_linked_service_kusto" 
   kusto_database_name = "kusto_database_name of data_factory_linked_service_kusto" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.description** | string | False | The description for the Data Factory Linked Service. | 
| **var.integration_runtime_name** | string | False | The integration runtime reference to associate with the Data Factory Linked Service. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Linked Service. | 
| **var.parameters** | string | False | A map of parameters to associate with the Data Factory Linked Service. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Linked Service. | 
| **var.kusto_endpoint** | string | True | The URI of the Kusto Cluster endpoint. | 
| **var.kusto_database_name** | string | True | The Kusto Database Name. | 
| **var.use_managed_identity** | bool | False | Whether to use the Data Factory's managed identity to authenticate against the Kusto Database. | 
| **var.service_principal_id** | string | False | The service principal id in which to authenticate against the Kusto Database. | 
| **var.service_principal_key** | string | False | The service principal key in which to authenticate against the Kusto Database. | 
| **var.tenant** | string | False | The service principal tenant id or name in which to authenticate against the Kusto Database. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
