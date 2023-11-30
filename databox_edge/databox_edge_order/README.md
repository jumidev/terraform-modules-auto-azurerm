# azurerm_databox_edge_order

Manages a Databox Edge Order.!> Creation of Databox Edge Order is not supported by the Azure API - as such the `azurerm_databox_edge_order` resource is deprecated and will be removed in v4.0 of the AzureRM Provider.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "databox_edge/databox_edge_order" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   device_name = "device_name of databox_edge_order" 
   contact = "contact of databox_edge_order" 
   shipment_address = "shipment_address of databox_edge_order" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | The name of the Resource Group where the Databox Edge Order should exist. Changing this forces a new Databox Edge Order to be created. | 
| **var.device_name** | string | True | The name of the Databox Edge Device this order is for. Changing this forces a new Databox Edge Order to be created. | 
| **var.contact** | block | True | A `contact` block. | 
| **var.shipment_address** | block | True | A `shipment_address` block. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Databox Edge Order. | 
| **name** | string | No  | The Name of this Databox Edge Order. | 
| **shipment_tracking** | block | No  | Tracking information for the package delivered to the customer whether it has an original or a replacement device. A `shipment_tracking` block. | 
| **status** | block | No  | The current status of the order. A `status` block. | 
| **shipment_history** | block | No  | List of status changes in the order. A `shipment_history` block. | 
| **return_tracking** | block | No  | Tracking information for the package returned from the customer whether it has an original or a replacement device. A `return_tracking` block. | 
| **serial_number** | int | No  | Serial number of the device being tracked. | 
| **carrier_name** | string | No  | Name of the carrier used in the delivery. | 
| **tracking_id** | string | No  | The ID of the tracking. | 
| **tracking_url** | string | No  | Tracking URL of the shipment. | 
| **info** | string | No  | The current status of the order. Possible values include `Untracked`, `AwaitingFulfilment`, `AwaitingPreparation`, `AwaitingShipment`, `Shipped`, `Arriving`, `Delivered`, `ReplacementRequested`, `LostDevice`, `Declined`, `ReturnInitiated`, `AwaitingReturnShipment`, `ShippedBack` or `CollectedAtMicrosoft`. | 
| **additional_details** | string | No  | Dictionary to hold generic information which is not stored by the already existing properties. | 
| **comments** | string | No  | Comments related to this status change. | 
| **last_update** | datetime | No  | Time of status update. | 

Additionally, all variables are provided as outputs.
