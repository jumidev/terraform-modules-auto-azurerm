# azurerm_data_factory_linked_service_data_lake_storage_gen2

Manages a Linked Service (connection) between Data Lake Storage Gen2 and Azure Data Factory.~> **Note:** All arguments including the `service_principal_key` will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory_linked_service_data_lake_storage_gen2"   
}

inputs = {
   name = "Specifies the name of the Data Factory Linked Service..."   
   # data_factory_id → set in tfstate_inputs
   url = "The endpoint for the Azure Data Lake Storage Gen2 service..."   
}

tfstate_inputs = {
   data_factory_id = "path/to/data_factory_component:id"   
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
| **url** | string |  The endpoint for the Azure Data Lake Storage Gen2 service. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description for the Data Factory Linked Service. | 
| **integration_runtime_name** | string |  The integration runtime reference to associate with the Data Factory Linked Service. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Linked Service. | 
| **parameters** | string |  A map of parameters to associate with the Data Factory Linked Service. | 
| **additional_properties** | string |  A map of additional properties to associate with the Data Factory Linked Service. | 
| **storage_account_key** | string |  The Storage Account Key with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `service_principal_id`, `service_principal_key`, `tenant` and `use_managed_identity`. | 
| **use_managed_identity** | bool |  Whether to use the Data Factory's managed identity to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `service_principal_id`, `service_principal_key`, `tenant` and `storage_account_key`. | 
| **service_principal_id** | string |  The service principal id with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `storage_account_key` and `use_managed_identity`. | 
| **service_principal_key** | string |  The service principal key with which to authenticate against the Azure Data Lake Storage Gen2 account. | 
| **tenant** | string |  The tenant id or name in which the service principal exists to authenticate against the Azure Data Lake Storage Gen2 account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Data Lake Storage Gen2 Linked Service. | 

Additionally, all variables are provided as outputs.
