output "resource_group_name" {
  value = azurerm_databox_edge_order.this.resource_group_name
}

output "device_name" {
  value = azurerm_databox_edge_order.this.device_name
}

output "contact" {
  value = azurerm_databox_edge_order.this.contact
}

output "shipment_address" {
  value = azurerm_databox_edge_order.this.shipment_address
}

output "id" {
  description = "The ID of the Databox Edge Order."
  value       = azurerm_databox_edge_order.this.id
}

output "name" {
  description = "The Name of this Databox Edge Order."
  value       = azurerm_databox_edge_order.this.name
}

output "shipment_tracking" {
  description = "Tracking information for the package delivered to the customer whether it has an original or a replacement device. A 'shipment_tracking' block."
  value       = azurerm_databox_edge_order.this.shipment_tracking
}

output "status" {
  description = "The current status of the order. A 'status' block."
  value       = azurerm_databox_edge_order.this.status
}

output "shipment_history" {
  description = "List of status changes in the order. A 'shipment_history' block."
  value       = azurerm_databox_edge_order.this.shipment_history
}

output "return_tracking" {
  description = "Tracking information for the package returned from the customer whether it has an original or a replacement device. A 'return_tracking' block."
  value       = azurerm_databox_edge_order.this.return_tracking
}

output "serial_number" {
  description = "Serial number of the device being tracked."
  value       = azurerm_databox_edge_order.this.serial_number
}

output "carrier_name" {
  description = "Name of the carrier used in the delivery."
  value       = azurerm_databox_edge_order.this.carrier_name
}

output "tracking_id" {
  description = "The ID of the tracking."
  value       = azurerm_databox_edge_order.this.tracking_id
}

output "tracking_url" {
  description = "Tracking URL of the shipment."
  value       = azurerm_databox_edge_order.this.tracking_url
}

output "info" {
  description = "The current status of the order. Possible values include 'Untracked', 'AwaitingFulfilment', 'AwaitingPreparation', 'AwaitingShipment', 'Shipped', 'Arriving', 'Delivered', 'ReplacementRequested', 'LostDevice', 'Declined', 'ReturnInitiated', 'AwaitingReturnShipment', 'ShippedBack' or 'CollectedAtMicrosoft'."
  value       = azurerm_databox_edge_order.this.info
}

output "additional_details" {
  description = "Dictionary to hold generic information which is not stored by the already existing properties."
  value       = azurerm_databox_edge_order.this.additional_details
}

output "comments" {
  description = "Comments related to this status change."
  value       = azurerm_databox_edge_order.this.comments
}

output "last_update" {
  description = "Time of status update."
  value       = azurerm_databox_edge_order.this.last_update
}

