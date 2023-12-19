# azurerm_data_factory_linked_custom_service

Manages a Linked Service (connection) between a resource and Azure Data Factory. This is a generic resource that supports all different Linked Service Types.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory_linked_custom_service"   
}

inputs = {
   name = "Specifies the name of the Data Factory Linked Service..."   
   # data_factory_id → set in component_inputs
   type = "The type of data stores that will be connected to Data Factory..."   
   type_properties_json = "A JSON object that contains the properties of the Data Factory Linked Service..."   
}

component_inputs = {
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
| **type** | string |  The type of data stores that will be connected to Data Factory. For full list of supported data stores, please refer to [Azure Data Factory connector](https://docs.microsoft.com/azure/data-factory/connector-overview). Changing this forces a new resource to be created. | 
| **type_properties_json** | string |  A JSON object that contains the properties of the Data Factory Linked Service. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **additional_properties** | string |  A map of additional properties to associate with the Data Factory Linked Service. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Linked Service. | 
| **description** | string |  The description for the Data Factory Linked Service. | 
| **integration_runtime** | [block](#integration_runtime-block-structure) |  An `integration_runtime` block. | 
| **parameters** | string |  A map of parameters to associate with the Data Factory Linked Service. | 

### `integration_runtime` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The integration runtime reference to associate with the Data Factory Linked Service. |
| `parameters` | string | No | - | A map of parameters to associate with the integration runtime. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
