# azurerm_data_factory_linked_service_kusto

Manages a Linked Service (connection) between a Kusto Cluster and Azure Data Factory.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory_linked_service_kusto"   
}

inputs = {
   name = "Specifies the name of the Data Factory Linked Service..."   
   # data_factory_id → set in tfstate_inputs
   kusto_endpoint = "The URI of the Kusto Cluster endpoint"   
   # kusto_database_name → set in tfstate_inputs
}

tfstate_inputs = {
   data_factory_id = "path/to/data_factory_component:id"   
   kusto_database_name = "path/to/kusto_database_component:name"   
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
| **name** | string |  Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **kusto_endpoint** | string |  The URI of the Kusto Cluster endpoint. | 
| **kusto_database_name** | string |  The Kusto Database Name. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description for the Data Factory Linked Service. | 
| **integration_runtime_name** | string |  The integration runtime reference to associate with the Data Factory Linked Service. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Linked Service. | 
| **parameters** | string |  A map of parameters to associate with the Data Factory Linked Service. | 
| **additional_properties** | string |  A map of additional properties to associate with the Data Factory Linked Service. | 
| **use_managed_identity** | bool |  Whether to use the Data Factory's managed identity to authenticate against the Kusto Database. | 
| **service_principal_id** | string |  The service principal id in which to authenticate against the Kusto Database. | 
| **service_principal_key** | string |  The service principal key in which to authenticate against the Kusto Database. | 
| **tenant** | string |  The service principal tenant id or name in which to authenticate against the Kusto Database. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
