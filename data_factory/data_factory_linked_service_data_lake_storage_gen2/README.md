# azurerm_data_factory_linked_service_data_lake_storage_gen2

Manages a Linked Service (connection) between Data Lake Storage Gen2 and Azure Data Factory.~> **Note:** All arguments including the `service_principal_key` will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_data_lake_storage_gen2" 
}

inputs = {
   name = "name of data_factory_linked_service_data_lake_storage_gen2" 
   data_factory_id = "data_factory_id of data_factory_linked_service_data_lake_storage_gen2" 
   url = "url of data_factory_linked_service_data_lake_storage_gen2" 
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
| **var.name** | string |  Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.url** | string |  The endpoint for the Azure Data Lake Storage Gen2 service. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string |  The description for the Data Factory Linked Service. | 
| **var.integration_runtime_name** | string |  The integration runtime reference to associate with the Data Factory Linked Service. | 
| **var.annotations** | string |  List of tags that can be used for describing the Data Factory Linked Service. | 
| **var.parameters** | string |  A map of parameters to associate with the Data Factory Linked Service. | 
| **var.additional_properties** | string |  A map of additional properties to associate with the Data Factory Linked Service. | 
| **var.storage_account_key** | string |  The Storage Account Key with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `service_principal_id`, `service_principal_key`, `tenant` and `use_managed_identity`. | 
| **var.use_managed_identity** | bool |  Whether to use the Data Factory's managed identity to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `service_principal_id`, `service_principal_key`, `tenant` and `storage_account_key`. | 
| **var.service_principal_id** | string |  The service principal id with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `storage_account_key` and `use_managed_identity`. | 
| **var.service_principal_key** | string |  The service principal key with which to authenticate against the Azure Data Lake Storage Gen2 account. | 
| **var.tenant** | string |  The tenant id or name in which the service principal exists to authenticate against the Azure Data Lake Storage Gen2 account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Data Lake Storage Gen2 Linked Service. | 

Additionally, all variables are provided as outputs.
