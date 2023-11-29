# azurerm_orbital_contact_profile

Manages a Contact profile.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the contact profile. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the contact profile exists. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The location where the contact profile exists. Changing this forces a new resource to be created. | 
| **minimum_variable_contact_duration** | string | True | -  |  -  | Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station. | 
| **auto_tracking** | string | True | -  |  `disabled`, `xBand`, `sBand`  | Auto-tracking configurations for a spacecraft. Possible values are `disabled`, `xBand` and `sBand`. | 
| **network_configuration_subnet_id** | string | True | -  |  -  | ARM resource identifier of the subnet delegated to the Microsoft.Orbital/orbitalGateways. Needs to be at least a class C subnet, and should not have any IP created in it. Changing this forces a new resource to be created. | 
| **links** | block | True | -  |  -  | A list of spacecraft links. A `links` block. Changing this forces a new resource to be created. | 
| **event_hub_uri** | string | False | -  |  -  | ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub. | 
| **minimum_elevation_degrees** | string | False | -  |  -  | Maximum elevation of the antenna during the contact in decimal degrees. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

