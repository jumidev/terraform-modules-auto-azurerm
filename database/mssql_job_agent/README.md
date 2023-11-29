# azurerm_mssql_job_agent

Manages an Elastic Job Agent.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created. | 
| **var.location** | string | True | The Azure Region where the Elastic Job Agent should exist. Changing this forces a new Elastic Job Agent to be created. | 
| **var.database_id** | string | True | The ID of the database to store metadata for the Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Database. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **database_id** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Elastic Job Agent. | 