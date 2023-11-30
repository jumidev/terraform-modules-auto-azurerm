# azurerm_data_factory_flowlet_data_flow

Manages a Flowlet Data Flow inside an Azure Data Factory.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Flowlet Data Flow. | 
| **var.data_factory_id** | string | True | The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource. | 
| **var.name** | string | True | Specifies the name of the Data Factory Flowlet Data Flow. Changing this forces a new resource to be created. | 
| **var.description** | string | False | The description for the Data Factory Flowlet Data Flow. | 
| **var.folder** | string | False | The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level. | 
| **var.source** | block | False | One or more `source` blocks. | 
| `source` block structure: || 
|   description (string): The description for the Data Flow Source. ||
|   dataset (block): A 'dataset' block. ||
|   flowlet (block): A 'flowlet' block. ||
|   linked_service (block): A 'linked_service' block. ||
|   name (string): (REQUIRED) The name for the Data Flow Source. ||
|   rejected_linked_service (block): A 'rejected_linked_service' block. ||
|   schema_linked_service (block): A 'schema_linked_service' block. ||
| **var.sink** | block | False | One or more `sink` blocks. | 
| `sink` block structure: || 
|   description (string): The description for the Data Flow Source. ||
|   dataset (block): A 'dataset' block. ||
|   flowlet (block): A 'flowlet' block. ||
|   linked_service (block): A 'linked_service' block. ||
|   name (string): (REQUIRED) The name for the Data Flow Source. ||
|   rejected_linked_service (block): A 'rejected_linked_service' block. ||
|   schema_linked_service (block): A 'schema_linked_service' block. ||
| **var.script** | string | False | The script for the Data Factory Flowlet Data Flow. | 
| **var.script_lines** | string | False | The script lines for the Data Factory Flowlet Data Flow. | 
| **var.transformation** | block | False | One or more `transformation` blocks. | 
| `transformation` block structure: || 
|   name (string): (REQUIRED) The name for the Data Flow transformation. ||
|   description (string): The description for the Data Flow transformation. ||
|   dataset (block): A 'dataset' block. ||
|   flowlet (block): A 'flowlet' block. ||
|   linked_service (block): A 'linked_service' block. ||



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Flowlet Data Flow. | 

Additionally, all variables are provided as outputs.
