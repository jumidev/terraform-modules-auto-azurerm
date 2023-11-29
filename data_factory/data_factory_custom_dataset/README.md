# azurerm_data_factory_custom_dataset

Manages a Dataset inside an Azure Data Factory. This is a generic resource that supports all different Dataset Types.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Dataset with. Changing this forces a new resource. | 
| **linked_service** | block | True | -  |  -  | A `linked_service` block. | 
| **type** | string | True | -  |  -  | The type of dataset that will be associated with Data Factory. Changing this forces a new resource to be created. | 
| **type_properties_json** | string | True | -  |  -  | A JSON object that contains the properties of the Data Factory Dataset. | 
| **additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Dataset. | 
| **annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Dataset. | 
| **description** | string | False | -  |  -  | The description for the Data Factory Dataset. | 
| **folder** | string | False | -  |  -  | The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **parameters** | string | False | -  |  -  | A map of parameters to associate with the Data Factory Dataset. | 
| **schema_json** | string | False | -  |  -  | A JSON object that contains the schema of the Data Factory Dataset. | 

