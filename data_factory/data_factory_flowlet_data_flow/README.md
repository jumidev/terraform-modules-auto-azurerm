# azurerm_data_factory_flowlet_data_flow

Manages a Flowlet Data Flow inside an Azure Data Factory.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_flowlet_data_flow" 
}

inputs = {
   data_factory_id = "data_factory_id of data_factory_flowlet_data_flow" 
   name = "name of data_factory_flowlet_data_flow" 
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
| **data_factory_id** | string |  The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource. | 
| **name** | string |  Specifies the name of the Data Factory Flowlet Data Flow. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **annotations** | string |  List of tags that can be used for describing the Data Factory Flowlet Data Flow. | 
| **description** | string |  The description for the Data Factory Flowlet Data Flow. | 
| **folder** | string |  The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level. | 
| **source** | [block](#source-block-structure) |  One or more `source` blocks. | 
| **sink** | [block](#sink-block-structure) |  One or more `sink` blocks. | 
| **script** | string |  The script for the Data Factory Flowlet Data Flow. | 
| **script_lines** | string |  The script lines for the Data Factory Flowlet Data Flow. | 
| **transformation** | [block](#transformation-block-structure) |  One or more `transformation` blocks. | 

### `dataset` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parameters` | string | No | - | A map of parameters to associate with the Data Factory dataset. |

### `source` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `description` | string | No | - | The description for the Data Flow Source. |
| `dataset` | [block](#source-block-structure) | No | - | A 'dataset' block. |
| `flowlet` | [block](#source-block-structure) | No | - | A 'flowlet' block. |
| `linked_service` | [block](#source-block-structure) | No | - | A 'linked_service' block. |
| `rejected_linked_service` | [block](#source-block-structure) | No | - | A 'rejected_linked_service' block. |
| `schema_linked_service` | [block](#source-block-structure) | No | - | A 'schema_linked_service' block. |

### `rejected_linked_service` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parameters` | string | No | - | A map of parameters to associate with the Data Factory Linked Service. |

### `flowlet` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dataset_parameters` | string | No | - | Specifies the reference data flow parameters from dataset. |
| `parameters` | string | No | - | A map of parameters to associate with the Data Factory Flowlet. |

### `schema_linked_service` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parameters` | string | No | - | A map of parameters to associate with the Data Factory Linked Service. |

### `linked_service` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parameters` | string | No | - | A map of parameters to associate with the Data Factory Linked Service. |

### `transformation` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `description` | string | No | - | The description for the Data Flow transformation. |
| `dataset` | [block](#transformation-block-structure) | No | - | A 'dataset' block. |
| `flowlet` | [block](#transformation-block-structure) | No | - | A 'flowlet' block. |
| `linked_service` | [block](#transformation-block-structure) | No | - | A 'linked_service' block. |

### `sink` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `description` | string | No | - | The description for the Data Flow Source. |
| `dataset` | [block](#sink-block-structure) | No | - | A 'dataset' block. |
| `flowlet` | [block](#sink-block-structure) | No | - | A 'flowlet' block. |
| `linked_service` | [block](#sink-block-structure) | No | - | A 'linked_service' block. |
| `rejected_linked_service` | [block](#sink-block-structure) | No | - | A 'rejected_linked_service' block. |
| `schema_linked_service` | [block](#sink-block-structure) | No | - | A 'schema_linked_service' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Flowlet Data Flow. | 

Additionally, all variables are provided as outputs.
