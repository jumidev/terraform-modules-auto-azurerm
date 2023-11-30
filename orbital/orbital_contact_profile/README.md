# azurerm_orbital_contact_profile

Manages a Contact profile.

## Example minimal component.hclt

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
         ...
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the contact profile. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the contact profile exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The location where the contact profile exists. Changing this forces a new resource to be created. | 
| **var.minimum_variable_contact_duration** | string | True | -  |  Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station. | 
| **var.auto_tracking** | string | True | `disabled`, `xBand`, `sBand`  |  Auto-tracking configurations for a spacecraft. Possible values are `disabled`, `xBand` and `sBand`. | 
| **var.network_configuration_subnet_id** | string | True | -  |  ARM resource identifier of the subnet delegated to the Microsoft.Orbital/orbitalGateways. Needs to be at least a class C subnet, and should not have any IP created in it. Changing this forces a new resource to be created. | 
| **var.links** | block | True | -  |  A list of spacecraft links. A `links` block. Changing this forces a new resource to be created. | 
| **var.event_hub_uri** | string | False | -  |  ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub. | 
| **var.minimum_elevation_degrees** | string | False | -  |  Maximum elevation of the antenna during the contact in decimal degrees. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 

### `links` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `channels` | block | Yes | - | A list of contact profile link channels. A 'channels' block. Changing this forces a new resource to be created. |
| `direction` | string | Yes | - | Direction of the link. Possible values are 'Uplink' and 'Downlink'. |
| `polarization` | string | Yes | - | Polarization of the link. Possible values are 'LHCP', 'RHCP', 'linearVertical' and 'linearHorizontal'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
