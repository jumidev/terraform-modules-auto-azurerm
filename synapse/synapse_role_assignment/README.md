# azurerm_synapse_role_assignment

Manages a Synapse Role Assignment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **synapse_workspace_id** | string | False | -  |  -  | The Synapse Workspace which the Synapse Role Assignment applies to. Changing this forces a new resource to be created. | 
| **synapse_spark_pool_id** | string | False | -  |  -  | The Synapse Spark Pool which the Synapse Role Assignment applies to. Changing this forces a new resource to be created. | 
| **role_name** | string | True | -  |  `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator`, `Synapse User`  | The Role Name of the Synapse Built-In Role. Possible values are `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator` and `Synapse User`. Changing this forces a new resource to be created. | 
| **principal_id** | string | True | -  |  -  | The ID of the Principal (User, Group or Service Principal) to assign the Synapse Role Definition to. Changing this forces a new resource to be created. | 

