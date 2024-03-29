# azurerm_mssql_job_agent

Manages an Elastic Job Agent.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_job_agent"   
}

inputs = {
   name = "The name which should be used for this Elastic Job Agent..."   
   location = "${location}"   
   # database_id → set in component_inputs
}

component_inputs = {
   database_id = "path/to/mssql_database_component:id"   
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
| **name** | string |  The name which should be used for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created. | 
| **location** | string |  The Azure Region where the Elastic Job Agent should exist. Changing this forces a new Elastic Job Agent to be created. | 
| **database_id** | string |  The ID of the database to store metadata for the Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Database. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags which should be assigned to the Database. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Elastic Job Agent. | 

Additionally, all variables are provided as outputs.
