# azurerm_mssql_job_credential

Manages an Elastic Job Credential.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Elastic Job Credential. Changing this forces a new Elastic Job Credential to be created. | 
| **job_agent_id** | string | True | -  |  -  | The ID of the Elastic Job Agent. Changing this forces a new Elastic Job Credential to be created. | 
| **username** | string | True | -  |  -  | The username part of the credential. | 
| **password** | string | True | -  |  -  | The password part of the credential. | 

