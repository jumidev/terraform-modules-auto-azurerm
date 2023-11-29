# azurerm_mssql_job_agent

Manages an Elastic Job Agent.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Elastic Job Agent should exist. Changing this forces a new Elastic Job Agent to be created. | 
| **database_id** | string | True | -  |  -  | The ID of the database to store metadata for the Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Database. | 

