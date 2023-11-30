# azurerm_orbital_spacecraft

Manages a Spacecraft.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "orbital/orbital_spacecraft" 
}

inputs = {
   name = "name of orbital_spacecraft" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   norad_id = "norad_id of orbital_spacecraft" 
   links = "links of orbital_spacecraft" 
   two_line_elements = "two_line_elements of orbital_spacecraft" 
   title_line = "title_line of orbital_spacecraft" 
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
| **var.name** | string | True | The name of the Spacecraft. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Spacecraft exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The location where the Spacecraft exists. Changing this forces a new resource to be created. | 
| **var.norad_id** | string | True | NORAD ID of the Spacecraft. | 
| **var.links** | block | True | A `links` block. Changing this forces a new resource to be created. | | `links` block structure: || 
|   bandwidth_mhz (string): (REQUIRED) Bandwidth in Mhz. ||
|   center_frequency_mhz (string): (REQUIRED) Center frequency in Mhz. ||
|   direction (string): (REQUIRED) Direction if the communication. Possible values are 'Uplink' and 'Downlink'. ||
|   polarization (string): (REQUIRED) Polarization. Possible values are 'RHCP', 'LHCP', 'linearVertical' and 'linearHorizontal'. ||
|   name (string): (REQUIRED) Name of the link. ||

| **var.two_line_elements** | list | True | A list of the two line elements (TLE), the first string being the first of the TLE, the second string being the second line of the TLE. Changing this forces a new resource to be created. | 
| **var.title_line** | string | True | Title of the two line elements (TLE). | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spacecraft. | 

Additionally, all variables are provided as outputs.
