# azurerm_machine_learning_synapse_spark

Manages the linked service to link an Azure Machine learning workspace to an Azure Synapse workspace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **machine_learning_workspace_id** | string | True | -  |  -  | The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Machine Learning Synapse Spark should exist. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **synapse_spark_pool_id** | string | True | -  |  -  | The ID of the linked Synapse Spark Pool. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **description** | string | False | -  |  -  | The description of the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **local_auth_enabled** | bool | False | `True`  |  -  | Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created. | 

