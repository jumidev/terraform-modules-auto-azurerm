# azurerm_mssql_job_credential

Manages an Elastic Job Credential.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_job_credential" 
}

inputs = {
   name = "name of mssql_job_credential" 
   job_agent_id = "job_agent_id of mssql_job_credential" 
   username = "username of mssql_job_credential" 
   password = "password of mssql_job_credential" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Elastic Job Credential. Changing this forces a new Elastic Job Credential to be created. | 
| **var.job_agent_id** | string | True | The ID of the Elastic Job Agent. Changing this forces a new Elastic Job Credential to be created. | 
| **var.username** | string | True | The username part of the credential. | 
| **var.password** | string | True | The password part of the credential. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Elastic Job Credential. | 

Additionally, all variables are provided as outputs.
