# azurerm_storage_mover_job_definition

Manages a Storage Mover Job Definition.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Storage Mover Job Definition. Changing this forces a new resource to be created. | 
| **storage_mover_project_id** | string | True | -  |  -  | Specifies the ID of the Storage Mover Project. Changing this forces a new resource to be created. | 
| **source_name** | string | True | -  |  -  | Specifies the name of the Storage Mover Source Endpoint. Changing this forces a new resource to be created. | 
| **target_name** | string | True | -  |  -  | Specifies the name of the Storage Mover target Endpoint. Changing this forces a new resource to be created. | 
| **copy_mode** | string | True | -  |  `Additive`, `Mirror`  | Specifies the strategy to use for copy. Possible values are `Additive` and `Mirror`. | 
| **source_sub_path** | string | False | -  |  -  | Specifies the sub path to use when reading from the Storage Mover Source Endpoint. Changing this forces a new resource to be created. | 
| **target_sub_path** | string | False | -  |  -  | Specifies the sub path to use when writing to the Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 
| **agent_name** | string | False | -  |  -  | Specifies the name of the Storage Mover Agent to assign for new Job Runs of this Storage Mover Job Definition. | 
| **description** | string | False | -  |  -  | Specifies a description for this Storage Mover Job Definition. | 

