# azurerm_machine_learning_synapse_spark

Manages the linked service to link an Azure Machine learning workspace to an Azure Synapse workspace.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **var.machine_learning_workspace_id** | string | True | -  |  -  | The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Machine Learning Synapse Spark should exist. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **var.synapse_spark_pool_id** | string | True | -  |  -  | The ID of the linked Synapse Spark Pool. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **var.description** | string | False | -  |  -  | The description of the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **var.local_auth_enabled** | bool | False | `True`  |  -  | Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **machine_learning_workspace_id** | string  | - | 
| **location** | string  | - | 
| **synapse_spark_pool_id** | string  | - | 
| **description** | string  | - | 
| **identity** | block  | - | 
| **local_auth_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Machine Learning Synapse Spark. | 
| **identity** | block  | An `identity` block, which contains the Managed Service Identity information for this Machine Learning Synapse Spark. | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Synapse Spark. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Synapse Spark. | 