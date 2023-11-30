# azurerm_digital_twins_endpoint_eventgrid

Manages a Digital Twins Event Grid Endpoint.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "digital_twins/digital_twins_endpoint_eventgrid" 
}

inputs = {
   name = "name of digital_twins_endpoint_eventgrid" 
   digital_twins_id = "digital_twins_id of digital_twins_endpoint_eventgrid" 
   eventgrid_topic_endpoint = "eventgrid_topic_endpoint of digital_twins_endpoint_eventgrid" 
   eventgrid_topic_primary_access_key = "eventgrid_topic_primary_access_key of digital_twins_endpoint_eventgrid" 
   eventgrid_topic_secondary_access_key = "eventgrid_topic_secondary_access_key of digital_twins_endpoint_eventgrid" 
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
| **var.name** | string  The name which should be used for this Digital Twins Eventgrid Endpoint. Changing this forces a new Digital Twins Eventgrid Endpoint to be created. | 
| **var.digital_twins_id** | string  The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Eventgrid Endpoint to be created. | 
| **var.eventgrid_topic_endpoint** | string  The endpoint of the Event Grid Topic. | 
| **var.eventgrid_topic_primary_access_key** | string  The primary access key of the Event Grid Topic. | 
| **var.eventgrid_topic_secondary_access_key** | string  The secondary access key of the Event Grid Topic. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.dead_letter_storage_secret** | int  The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Digital Twins Event Grid Endpoint. | 

Additionally, all variables are provided as outputs.
