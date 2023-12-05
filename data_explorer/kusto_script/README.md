# azurerm_kusto_script

Manages a Kusto Script.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_explorer/kusto_script"   
}

inputs = {
   name = "The name which should be used for this Kusto Script..."   
   database_id = "The ID of the Kusto Database"   
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
| **name** | string |  The name which should be used for this Kusto Script. Changing this forces a new Kusto Script to be created. | 
| **database_id** | string |  The ID of the Kusto Database. Changing this forces a new Kusto Script to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **continue_on_errors_enabled** | bool |  Flag that indicates whether to continue if one of the command fails. | 
| **force_an_update_when_value_changed** | string |  A unique string. If changed the script will be applied again. | 
| **script_content** | string |  The script content. This property should be used when the script is provide inline and not through file in a SA. Must not be used together with `url` and `sas_token` properties. Changing this forces a new resource to be created. | 
| **sas_token** | string |  The SAS token used to access the script. Must be provided when using scriptUrl property. Changing this forces a new resource to be created. | 
| **url** | string |  The url to the KQL script blob file. Must not be used together with scriptContent property. Please reference [this documentation](https://docs.microsoft.com/azure/data-explorer/database-script) that describes the commands that are allowed in the script. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Kusto Script. | 

Additionally, all variables are provided as outputs.
