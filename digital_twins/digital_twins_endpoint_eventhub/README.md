# azurerm_digital_twins_endpoint_eventhub

Manages a Digital Twins Event Hub Endpoint.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "digital_twins/digital_twins_endpoint_eventhub"   
}

inputs = {
   name = "name of digital_twins_endpoint_eventhub"   
   digital_twins_id = "digital_twins_id of digital_twins_endpoint_eventhub"   
   eventhub_primary_connection_string = "eventhub_primary_connection_string of digital_twins_endpoint_eventhub"   
   eventhub_secondary_connection_string = "eventhub_secondary_connection_string of digital_twins_endpoint_eventhub"   
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
| **name** | string |  The name which should be used for this Digital Twins Event Hub Endpoint. Changing this forces a new Digital Twins Event Hub Endpoint to be created. | 
| **digital_twins_id** | string |  The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Event Hub Endpoint to be created. | 
| **eventhub_primary_connection_string** | string |  The primary connection string of the Event Hub Authorization Rule with a minimum of `send` permission. | 
| **eventhub_secondary_connection_string** | string |  The secondary connection string of the Event Hub Authorization Rule with a minimum of `send` permission. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **dead_letter_storage_secret** | int |  The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Digital Twins Event Hub Endpoint. | 

Additionally, all variables are provided as outputs.
