# azurerm_digital_twins_endpoint_servicebus

Manages a Digital Twins Service Bus Endpoint.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Digital Twins Service Bus Endpoint. Changing this forces a new Digital Twins Service Bus Endpoint to be created. | 
| **var.digital_twins_id** | string | True | The ID of the Digital Twins Instance. Changing this forces a new Digital Twins Service Bus Endpoint to be created. | 
| **var.servicebus_primary_connection_string** | string | True | The primary connection string of the Service Bus Topic Authorization Rule with a minimum of `send` permission. . | 
| **var.servicebus_secondary_connection_string** | string | True | The secondary connection string of the Service Bus Topic Authorization Rule with a minimum of `send` permission. | 
| **var.dead_letter_storage_secret** | int | False | The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **digital_twins_id** | string  | - | 
| **servicebus_primary_connection_string** | string  | - | 
| **servicebus_secondary_connection_string** | string  | - | 
| **dead_letter_storage_secret** | int  | - | 
| **id** | string  | The ID of the Digital Twins Service Bus Endpoint. | 