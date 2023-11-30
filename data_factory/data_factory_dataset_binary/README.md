# azurerm_data_factory_dataset_binary

Manages a Data Factory Binary Dataset inside an Azure Data Factory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_dataset_binary" 
}

inputs = {
   name = "name of data_factory_dataset_binary" 
   data_factory_id = "data_factory_id of data_factory_dataset_binary" 
   linked_service_name = "linked_service_name of data_factory_dataset_binary" 
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
| **var.name** | string | True | Specifies the name of the Data Factory Binary Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.linked_service_name** | string | True | The Data Factory Linked Service name in which to associate the Binary Dataset with. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Binary Dataset. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Binary Dataset. | 
| **var.compression** | block | False | A `compression` block. | 
| **var.description** | string | False | The description for the Data Factory Dataset. | 
| **var.folder** | string | False | The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **var.parameters** | string | False | Specifies a list of parameters to associate with the Data Factory Binary Dataset. | 
| **var.http_server_location** | block | False | A `http_server_location` block. | 
| **var.azure_blob_storage_location** | block | False | A `azure_blob_storage_location` block. | 
| **var.sftp_server_location** | block | False | A `sftp_server_location` block. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Dataset. | 

Additionally, all variables are provided as outputs.
