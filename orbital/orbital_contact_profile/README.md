# azurerm_orbital_contact_profile

Manages a Contact profile.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "orbital/orbital_contact_profile" 
}

inputs = {
   name = "name of orbital_contact_profile" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   minimum_variable_contact_duration = "minimum_variable_contact_duration of orbital_contact_profile" 
   auto_tracking = "auto_tracking of orbital_contact_profile" 
   network_configuration_subnet_id = "network_configuration_subnet_id of orbital_contact_profile" 
   links = {
      example_links = {
         channels = "..."   
         direction = "..."   
         polarization = "..."   
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the contact profile. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the contact profile exists. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The location where the contact profile exists. Changing this forces a new resource to be created. | 
| **minimum_variable_contact_duration** | string |  -  |  Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station. | 
| **auto_tracking** | string |  `disabled`, `xBand`, `sBand`  |  Auto-tracking configurations for a spacecraft. Possible values are `disabled`, `xBand` and `sBand`. | 
| **network_configuration_subnet_id** | string |  -  |  ARM resource identifier of the subnet delegated to the Microsoft.Orbital/orbitalGateways. Needs to be at least a class C subnet, and should not have any IP created in it. Changing this forces a new resource to be created. | 
| **links** | [block](#links-block-structure) |  -  |  A list of spacecraft links. A `links` block. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **event_hub_uri** | string |  ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub. | 
| **minimum_elevation_degrees** | string |  Maximum elevation of the antenna during the contact in decimal degrees. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `channels` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `center_frequency_mhz` | string | Yes | - | Center frequency in MHz. |
| `bandwidth_mhz` | string | Yes | - | Bandwidth in MHz. |
| `end_point` | [block](#channels-block-structure) | Yes | - | Customer End point to store/retrieve data during a contact. An 'end_point' block. |
| `modulation_configuration` | string | No | - | Copy of the modem configuration file such as Kratos QRadio. Only valid for uplink directions. If provided, the modem connects to the customer endpoint and accepts commands from the customer instead of a VITA.49 stream. |
| `demodulation_configuration` | string | No | - | Copy of the modem configuration file such as Kratos QRadio or Kratos QuantumRx. Only valid for downlink directions. If provided, the modem connects to the customer endpoint and sends demodulated data instead of a VITA.49 stream. |

### `end_point` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `end_point_name` | string | Yes | - | Name of an end point. |
| `port` | string | Yes | - | TCP port to listen on to receive data. |
| `protocol` | string | Yes | - | Protocol of an end point. Possible values are 'TCP' and 'UDP'. |
| `ip_address` | string | No | - | IP address of an end point. |

### `links` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `channels` | [block](#links-block-structure) | Yes | - | A list of contact profile link channels. A 'channels' block. Changing this forces a new resource to be created. |
| `direction` | string | Yes | - | Direction of the link. Possible values are 'Uplink' and 'Downlink'. |
| `polarization` | string | Yes | - | Polarization of the link. Possible values are 'LHCP', 'RHCP', 'linearVertical' and 'linearHorizontal'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
