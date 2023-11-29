# azurerm_kusto_script

Manages a Kusto Script.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Kusto Script. Changing this forces a new Kusto Script to be created. | 
| **var.database_id** | string | True | -  |  -  | The ID of the Kusto Database. Changing this forces a new Kusto Script to be created. | 
| **var.continue_on_errors_enabled** | bool | False | -  |  -  | Flag that indicates whether to continue if one of the command fails. | 
| **var.force_an_update_when_value_changed** | string | False | -  |  -  | A unique string. If changed the script will be applied again. | 
| **var.script_content** | string | False | -  |  -  | The script content. This property should be used when the script is provide inline and not through file in a SA. Must not be used together with `url` and `sas_token` properties. Changing this forces a new resource to be created. | 
| **var.sas_token** | string | False | -  |  -  | The SAS token used to access the script. Must be provided when using scriptUrl property. Changing this forces a new resource to be created. | 
| **var.url** | string | False | -  |  -  | The url to the KQL script blob file. Must not be used together with scriptContent property. Please reference [this documentation](https://docs.microsoft.com/azure/data-explorer/database-script) that describes the commands that are allowed in the script. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **database_id** | string  | - | 
| **continue_on_errors_enabled** | bool  | - | 
| **force_an_update_when_value_changed** | string  | - | 
| **script_content** | string  | - | 
| **sas_token** | string  | - | 
| **url** | string  | - | 
| **id** | string  | The ID of the Kusto Script. | 