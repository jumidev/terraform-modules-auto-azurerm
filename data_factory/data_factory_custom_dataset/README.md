# azurerm_data_factory_custom_dataset

Manages a Dataset inside an Azure Data Factory. This is a generic resource that supports all different Dataset Types.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_custom_dataset" 
}

inputs = {
   name = "name of data_factory_custom_dataset" 
   # data_factory_id → set in tfstate_inputs
   linked_service = {
      example_linked_service = {
      }
  
   }
 
   type = "type of data_factory_custom_dataset" 
   type_properties_json = "type_properties_json of data_factory_custom_dataset" 
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
| **name** | string |  Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  The Data Factory ID in which to associate the Dataset with. Changing this forces a new resource. | 
| **linked_service** | [block](#linked_service-block-structure) |  A `linked_service` block. | 
| **type** | string |  The type of dataset that will be associated with Data Factory. Changing this forces a new resource to be created. | 
| **type_properties_json** | string |  A JSON object that contains the properties of the Data Factory Dataset. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **additional_properties** | string |  A map of additional properties to associate with the Data Factory Dataset. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Dataset. | 
| **description** | string |  The description for the Data Factory Dataset. | 
| **folder** | string |  The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **parameters** | string |  A map of parameters to associate with the Data Factory Dataset. | 
| **schema_json** | string |  A JSON object that contains the schema of the Data Factory Dataset. | 

### `linked_service` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parameters` | string | No | - | A map of parameters to associate with the Data Factory Linked Service. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Dataset. | 

Additionally, all variables are provided as outputs.
