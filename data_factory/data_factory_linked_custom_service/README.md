# azurerm_data_factory_linked_custom_service

Manages a Linked Service (connection) between a resource and Azure Data Factory. This is a generic resource that supports all different Linked Service Types.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_custom_service" 
}

inputs = {
   name = "name of data_factory_linked_custom_service" 
   data_factory_id = "data_factory_id of data_factory_linked_custom_service" 
   type = "type of data_factory_linked_custom_service" 
   type_properties_json = "type_properties_json of data_factory_linked_custom_service" 
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
| **var.type** | string | True | The type of data stores that will be connected to Data Factory. For full list of supported data stores, please refer to [Azure Data Factory connector](https://docs.microsoft.com/azure/data-factory/connector-overview). Changing this forces a new resource to be created. | 
| **var.type_properties_json** | string | True | A JSON object that contains the properties of the Data Factory Linked Service. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Linked Service. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Linked Service. | 
| **var.description** | string | False | The description for the Data Factory Linked Service. | 
| **var.integration_runtime** | block | False | An `integration_runtime` block. | 
| **var.parameters** | string | False | A map of parameters to associate with the Data Factory Linked Service. | 

### `integration_runtime` block structure

>`name` (string): (REQUIRED) The integration runtime reference to associate with the Data Factory Linked Service.
>`parameters` (string): A map of parameters to associate with the integration runtime.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
