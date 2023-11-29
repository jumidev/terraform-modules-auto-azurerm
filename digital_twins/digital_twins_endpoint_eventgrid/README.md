# azurerm_digital_twins_endpoint_eventgrid

Manages a Digital Twins Event Grid Endpoint.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Digital Twins Eventgrid Endpoint. Changing this forces a new Digital Twins Eventgrid Endpoint to be created. | 
| **digital_twins_id** | string | True | -  |  -  | The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Eventgrid Endpoint to be created. | 
| **eventgrid_topic_endpoint** | string | True | -  |  -  | The endpoint of the Event Grid Topic. | 
| **eventgrid_topic_primary_access_key** | string | True | -  |  -  | The primary access key of the Event Grid Topic. | 
| **eventgrid_topic_secondary_access_key** | string | True | -  |  -  | The secondary access key of the Event Grid Topic. | 
| **dead_letter_storage_secret** | int | False | -  |  -  | The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account. | 

