# azurerm_digital_twins_endpoint_eventgrid

Manages a Digital Twins Event Grid Endpoint.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "digital_twins/digital_twins_endpoint_eventgrid"   
}

inputs = {
   name = "The name which should be used for this Digital Twins Eventgrid Endpoint..."   
   digital_twins_id = "The resource ID of the Digital Twins Instance"   
   eventgrid_topic_endpoint = "The endpoint of the Event Grid Topic"   
   eventgrid_topic_primary_access_key = "The primary access key of the Event Grid Topic"   
   eventgrid_topic_secondary_access_key = "The secondary access key of the Event Grid Topic"   
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
| **name** | string |  The name which should be used for this Digital Twins Eventgrid Endpoint. Changing this forces a new Digital Twins Eventgrid Endpoint to be created. | 
| **digital_twins_id** | string |  The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Eventgrid Endpoint to be created. | 
| **eventgrid_topic_endpoint** | string |  The endpoint of the Event Grid Topic. | 
| **eventgrid_topic_primary_access_key** | string |  The primary access key of the Event Grid Topic. | 
| **eventgrid_topic_secondary_access_key** | string |  The secondary access key of the Event Grid Topic. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **dead_letter_storage_secret** | number |  The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Digital Twins Event Grid Endpoint. | 

Additionally, all variables are provided as outputs.
