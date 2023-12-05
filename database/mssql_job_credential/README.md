# azurerm_mssql_job_credential

Manages an Elastic Job Credential.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_job_credential"   
}

inputs = {
   name = "name of mssql_job_credential"   
   # job_agent_id → set in tfstate_inputs
   username = "username of mssql_job_credential"   
   password = "password of mssql_job_credential"   
}

tfstate_inputs = {
   job_agent_id = "path/to/mssql_job_agent_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Elastic Job Credential. Changing this forces a new Elastic Job Credential to be created. | 
| **job_agent_id** | string |  The ID of the Elastic Job Agent. Changing this forces a new Elastic Job Credential to be created. | 
| **username** | string |  The username part of the credential. | 
| **password** | string |  The password part of the credential. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Elastic Job Credential. | 

Additionally, all variables are provided as outputs.
