# azurerm_data_factory_data_flow

Manages a Data Flow inside an Azure Data Factory.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Data Factory Data Flow. Changing this forces a new resource to be created. | 
| **var.data_factory_id** | string | True | The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource. | 
| **var.script** | string | False | The script for the Data Factory Data Flow. | 
| **var.script_lines** | string | False | The script lines for the Data Factory Data Flow. | 
| **var.source** | block | True | One or more `source` blocks. | 
| **var.sink** | block | True | One or more `sink` blocks. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Data Flow. | 
| **var.description** | string | False | The description for the Data Factory Data Flow. | 
| **var.folder** | string | False | The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level. | 
| **var.transformation** | block | False | One or more `transformation` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **script** | string  | - | 
| **script_lines** | string  | - | 
| **source** | block  | - | 
| **sink** | block  | - | 
| **annotations** | string  | - | 
| **description** | string  | - | 
| **folder** | string  | - | 
| **transformation** | block  | - | 
| **id** | string  | The ID of the Data Factory Data Flow. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_data_flow" 
}

inputs = {
   name = "name of data_factory_data_flow" 
   data_factory_id = "data_factory_id of data_factory_data_flow" 
   source = "source of data_factory_data_flow" 
   sink = "sink of data_factory_data_flow" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```