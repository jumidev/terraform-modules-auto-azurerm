# azurerm_synapse_role_assignment

Manages a Synapse Role Assignment.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_role_assignment" 
}

inputs = {
   role_name = "role_name of synapse_role_assignment" 
   principal_id = "principal_id of synapse_role_assignment" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.synapse_workspace_id** | string | False | -  |  The Synapse Workspace which the Synapse Role Assignment applies to. Changing this forces a new resource to be created. | 
| **var.synapse_spark_pool_id** | string | False | -  |  The Synapse Spark Pool which the Synapse Role Assignment applies to. Changing this forces a new resource to be created. | 
| **var.role_name** | string | True | `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator`, `Synapse User`  |  The Role Name of the Synapse Built-In Role. Possible values are `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator` and `Synapse User`. Changing this forces a new resource to be created. | 
| **var.principal_id** | string | True | -  |  The ID of the Principal (User, Group or Service Principal) to assign the Synapse Role Definition to. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Synapse Role Assignment ID. | 

Additionally, all variables are provided as outputs.
