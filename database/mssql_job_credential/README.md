# azurerm_mssql_job_credential



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_job_credential"   
}

inputs = {
   name = "The name which should be used for this Elastic Job Credential..."   
   # job_agent_id → set in component_inputs
   username = "The username part of the credential"   
   password = "The password part of the credential"   
}

component_inputs = {
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
| **password** | string | Yes  | The password part of the credential. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Elastic Job Credential. | 

Additionally, all variables are provided as outputs.
