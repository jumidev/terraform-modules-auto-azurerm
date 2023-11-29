# azurerm_databox_edge_order

Manages a Databox Edge Order.!> Creation of Databox Edge Order is not supported by the Azure API - as such the `azurerm_databox_edge_order` resource is deprecated and will be removed in v4.0 of the AzureRM Provider.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | The name of the Resource Group where the Databox Edge Order should exist. Changing this forces a new Databox Edge Order to be created. | 
| **var.device_name** | string | True | The name of the Databox Edge Device this order is for. Changing this forces a new Databox Edge Order to be created. | 
| **var.contact** | block | True | A `contact` block. | 
| **var.shipment_address** | block | True | A `shipment_address` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **device_name** | string  | - | 
| **contact** | block  | - | 
| **shipment_address** | block  | - | 
| **id** | string  | The ID of the Databox Edge Order. | 
| **name** | string  | The Name of this Databox Edge Order. | 
| **shipment_tracking** | block  | Tracking information for the package delivered to the customer whether it has an original or a replacement device. A `shipment_tracking` block. | 
| **status** | block  | The current status of the order. A `status` block. | 
| **shipment_history** | block  | List of status changes in the order. A `shipment_history` block. | 
| **return_tracking** | block  | Tracking information for the package returned from the customer whether it has an original or a replacement device. A `return_tracking` block. | 
| **serial_number** | int  | Serial number of the device being tracked. | 
| **carrier_name** | string  | Name of the carrier used in the delivery. | 
| **tracking_id** | string  | The ID of the tracking. | 
| **tracking_url** | string  | Tracking URL of the shipment. | 
| **info** | string  | The current status of the order. Possible values include `Untracked`, `AwaitingFulfilment`, `AwaitingPreparation`, `AwaitingShipment`, `Shipped`, `Arriving`, `Delivered`, `ReplacementRequested`, `LostDevice`, `Declined`, `ReturnInitiated`, `AwaitingReturnShipment`, `ShippedBack` or `CollectedAtMicrosoft`. | 
| **additional_details** | string  | Dictionary to hold generic information which is not stored by the already existing properties. | 
| **comments** | string  | Comments related to this status change. | 
| **last_update** | datetime  | Time of status update. | 