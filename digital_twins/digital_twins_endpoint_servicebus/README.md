# azurerm_digital_twins_endpoint_servicebus

Manages a Digital Twins Service Bus Endpoint.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "digital_twins/digital_twins_endpoint_servicebus"   
}

inputs = {
   name = "name of digital_twins_endpoint_servicebus"   
   digital_twins_id = "digital_twins_id of digital_twins_endpoint_servicebus"   
   servicebus_primary_connection_string = "servicebus_primary_connection_string of digital_twins_endpoint_servicebus"   
   servicebus_secondary_connection_string = "servicebus_secondary_connection_string of digital_twins_endpoint_servicebus"   
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
| **name** | string |  The name which should be used for this Digital Twins Service Bus Endpoint. Changing this forces a new Digital Twins Service Bus Endpoint to be created. | 
| **digital_twins_id** | string |  The ID of the Digital Twins Instance. Changing this forces a new Digital Twins Service Bus Endpoint to be created. | 
| **servicebus_primary_connection_string** | string |  The primary connection string of the Service Bus Topic Authorization Rule with a minimum of `send` permission. . | 
| **servicebus_secondary_connection_string** | string |  The secondary connection string of the Service Bus Topic Authorization Rule with a minimum of `send` permission. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **dead_letter_storage_secret** | int |  The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Digital Twins Service Bus Endpoint. | 

Additionally, all variables are provided as outputs.
