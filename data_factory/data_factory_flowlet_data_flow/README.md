# azurerm_data_factory_flowlet_data_flow

Manages a Flowlet Data Flow inside an Azure Data Factory.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Flowlet Data Flow. | 
| **var.data_factory_id** | string | True | The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource. | 
| **var.name** | string | True | Specifies the name of the Data Factory Flowlet Data Flow. Changing this forces a new resource to be created. | 
| **var.description** | string | False | The description for the Data Factory Flowlet Data Flow. | 
| **var.folder** | string | False | The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level. | 
| **var.source** | block | False | One or more `source` blocks. | 
| **var.sink** | block | False | One or more `sink` blocks. | 
| **var.script** | string | False | The script for the Data Factory Flowlet Data Flow. | 
| **var.script_lines** | string | False | The script lines for the Data Factory Flowlet Data Flow. | 
| **var.transformation** | block | False | One or more `transformation` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **annotations** | string  | - | 
| **data_factory_id** | string  | - | 
| **name** | string  | - | 
| **description** | string  | - | 
| **folder** | string  | - | 
| **source** | block  | - | 
| **sink** | block  | - | 
| **script** | string  | - | 
| **script_lines** | string  | - | 
| **transformation** | block  | - | 
| **id** | string  | The ID of the Data Factory Flowlet Data Flow. | 

## Example minimal hclt

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