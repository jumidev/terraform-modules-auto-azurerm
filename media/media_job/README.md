# azurerm_media_job

Manages a Media Job.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **input_asset** | block | True | -  |  -  | A `input_asset` block. Changing this forces a new Media Job to be created. | 
| **media_services_account_name** | string | True | -  |  -  | The Media Services account name. Changing this forces a new Transform to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Media Job. Changing this forces a new Media Job to be created. | 
| **output_asset** | block | True | -  |  -  | One or more `output_asset` blocks. Changing this forces a new Media Job to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Media Job should exist. Changing this forces a new Media Job to be created. | 
| **transform_name** | string | True | -  |  -  | The Transform name. Changing this forces a new Media Job to be created. | 
| **description** | string | False | -  |  -  | Optional customer supplied description of the Job. | 
| **priority** | string | False | `Normal`  |  `High`, `Normal`, `Low`  | Priority with which the job should be processed. Higher priority jobs are processed before lower priority jobs. Changing this forces a new Media Job to be created. Possible values are `High`, `Normal` and `Low`. Defaults to `Normal`. | 

