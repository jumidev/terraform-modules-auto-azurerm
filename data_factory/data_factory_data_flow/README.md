# azurerm_data_factory_data_flow

Manages a Data Flow inside an Azure Data Factory.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Data Factory Data Flow. Changing this forces a new resource to be created. | 
| **data_factory_id** | string | True | -  |  -  | The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource. | 
| **script** | string | False | -  |  -  | The script for the Data Factory Data Flow. | 
| **script_lines** | string | False | -  |  -  | The script lines for the Data Factory Data Flow. | 
| **source** | block | True | -  |  -  | One or more `source` blocks. | 
| **sink** | block | True | -  |  -  | One or more `sink` blocks. | 
| **annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Data Flow. | 
| **description** | string | False | -  |  -  | The description for the Data Factory Data Flow. | 
| **folder** | string | False | -  |  -  | The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level. | 
| **transformation** | block | False | -  |  -  | One or more `transformation` blocks. | 

