# azurerm_databox_edge_order

Manages a Databox Edge Order.!> Creation of Databox Edge Order is not supported by the Azure API - as such the `azurerm_databox_edge_order` resource is deprecated and will be removed in v4.0 of the AzureRM Provider.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "databox_edge/databox_edge_order"   
}

inputs = {
   resource_group_name = "${resource_group}"   
   device_name = "The name of the Databox Edge Device this order is for..."   
   contact = {
      company_name = "..."      
      name = "..."      
      emails = "..."      
      phone_number = "..."      
   }
   
   shipment_address = {
      address = "..."      
      city = "..."      
      country = "..."      
      postal_code = "..."      
      state = "..."      
   }
   
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
| **resource_group_name** | string |  The name of the Resource Group where the Databox Edge Order should exist. Changing this forces a new Databox Edge Order to be created. | 
| **device_name** | string |  The name of the Databox Edge Device this order is for. Changing this forces a new Databox Edge Order to be created. | 
| **contact** | [block](#contact-block-structure) |  A `contact` block. | 
| **shipment_address** | [block](#shipment_address-block-structure) |  A `shipment_address` block. | 

### `contact` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `company_name` | string | Yes | - | The name of the company. Changing this forces a new Databox Edge Order to be created. |
| `name` | string | Yes | - | The contact person name. Changing this forces a new Databox Edge Order to be created. |
| `emails` | list | Yes | - | A list of email address to send order notification to. Changing this forces a new Databox Edge Order to be created. |
| `phone_number` | string | Yes | - | The phone number. Changing this forces a new Databox Edge Order to be created. |

### `shipment_address` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `address` | string | Yes | - | The list of upto 3 lines for address information. |
| `city` | string | Yes | - | The city name. Changing this forces a new Databox Edge Order to be created. |
| `country` | string | Yes | - | The name of the country to ship the Databox Edge Device to. Valid values are 'Algeria', 'Argentina', 'Australia', 'Austria', 'Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belgium', 'Bermuda', 'Bolivia', 'Bosnia and Herzegovina', 'Brazil', 'Bulgaria', 'Canada', 'Cayman Islands', 'Chile', 'Colombia', 'Costa Rica', 'Croatia', 'Cyprus', 'Czechia', 'CÃ´te D'ivoire', 'Denmark', 'Dominican Republic', 'Ecuador', 'Egypt', 'El Salvador', 'Estonia', 'Ethiopia', 'Finland', 'France', 'Georgia', 'Germany', 'Ghana', 'Greece', 'Guatemala', 'Honduras', 'Hong Kong SAR', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Ireland', 'Israel', 'Italy', 'Jamaica', 'Japan', 'Jordan', 'Kazakhstan', 'Kenya', 'Kuwait', 'Kyrgyzstan', 'Latvia', 'Libya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Macao SAR', 'Malaysia', 'Malta', 'Mauritius', 'Mexico', 'Moldova', 'Monaco', 'Mongolia', 'Montenegro', 'Morocco', 'Namibia', 'Nepal', 'Netherlands', 'New Zealand', 'Nicaragua', 'Nigeria', 'Norway', 'Oman', 'Pakistan', 'Palestinian Authority', 'Panama', 'Paraguay', 'Peru', 'Philippines', 'Poland', 'Portugal', 'Puerto Rico', 'Qatar', 'Republic of Korea', 'Romania', 'Russia', 'Rwanda', 'Saint Kitts And Nevis', 'Saudi Arabia', 'Senegal', 'Serbia', 'Singapore', 'Slovakia', 'Slovenia', 'South Africa', 'Spain', 'Sri Lanka', 'Sweden', 'Switzerland', 'Taiwan', 'Tajikistan', 'Tanzania', 'Thailand', 'Trinidad And Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'U.S. Virgin Islands', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States', 'Uruguay', 'Uzbekistan', 'Venezuela', 'Vietnam', 'Yemen', 'Zambia' or 'Zimbabwe'. Changing this forces a new Databox Edge Order to be created. |
| `postal_code` | string | Yes | - | The postal code. Changing this forces a new Databox Edge Order to be created. |
| `state` | string | Yes | - | The name of the state to ship the Databox Edge Device to. Changing this forces a new Databox Edge Order to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Databox Edge Order. | 
| **name** | string | No  | The Name of this Databox Edge Order. | 
| **shipment_tracking** | block | No  | Tracking information for the package delivered to the customer whether it has an original or a replacement device. A `shipment_tracking` block. | 
| **status** | block | No  | The current status of the order. A `status` block. | 
| **shipment_history** | block | No  | List of status changes in the order. A `shipment_history` block. | 
| **return_tracking** | block | No  | Tracking information for the package returned from the customer whether it has an original or a replacement device. A `return_tracking` block. | 
| **serial_number** | number | No  | Serial number of the device being tracked. | 
| **carrier_name** | string | No  | Name of the carrier used in the delivery. | 
| **tracking_id** | string | No  | The ID of the tracking. | 
| **tracking_url** | string | No  | Tracking URL of the shipment. | 
| **info** | string | No  | The current status of the order. Possible values include `Untracked`, `AwaitingFulfilment`, `AwaitingPreparation`, `AwaitingShipment`, `Shipped`, `Arriving`, `Delivered`, `ReplacementRequested`, `LostDevice`, `Declined`, `ReturnInitiated`, `AwaitingReturnShipment`, `ShippedBack` or `CollectedAtMicrosoft`. | 
| **additional_details** | string | No  | Dictionary to hold generic information which is not stored by the already existing properties. | 
| **comments** | string | No  | Comments related to this status change. | 
| **last_update** | string | No  | Time of status update. | 

Additionally, all variables are provided as outputs.
