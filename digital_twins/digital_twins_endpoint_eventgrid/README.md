# azurerm_digital_twins_endpoint_eventgrid

Manages a Digital Twins Event Grid Endpoint.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Digital Twins Eventgrid Endpoint. Changing this forces a new Digital Twins Eventgrid Endpoint to be created. | 
| **var.digital_twins_id** | string | True | The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Eventgrid Endpoint to be created. | 
| **var.eventgrid_topic_endpoint** | string | True | The endpoint of the Event Grid Topic. | 
| **var.eventgrid_topic_primary_access_key** | string | True | The primary access key of the Event Grid Topic. | 
| **var.eventgrid_topic_secondary_access_key** | string | True | The secondary access key of the Event Grid Topic. | 
| **var.dead_letter_storage_secret** | int | False | The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **digital_twins_id** | string  | - | 
| **eventgrid_topic_endpoint** | string  | - | 
| **eventgrid_topic_primary_access_key** | string  | - | 
| **eventgrid_topic_secondary_access_key** | string  | - | 
| **dead_letter_storage_secret** | int  | - | 
| **id** | string  | The ID of the Digital Twins Event Grid Endpoint. | 