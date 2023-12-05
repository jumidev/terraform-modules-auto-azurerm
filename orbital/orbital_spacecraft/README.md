# azurerm_orbital_spacecraft

Manages a Spacecraft.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "orbital/orbital_spacecraft"   
}

inputs = {
   name = "The name of the Spacecraft"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   norad_id = "NORAD ID of the Spacecraft"   
   links = {
      bandwidth_mhz = "..."      
      center_frequency_mhz = "..."      
      direction = "..."      
      polarization = "..."      
      name = "..."      
   }
   
   two_line_elements = "A list of the two line elements (TLE), the first string being the first of the T..."   
   title_line = "Title of the two line elements (TLE)"   
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
| **name** | string |  The name of the Spacecraft. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Spacecraft exists. Changing this forces a new resource to be created. | 
| **location** | string |  The location where the Spacecraft exists. Changing this forces a new resource to be created. | 
| **norad_id** | string |  NORAD ID of the Spacecraft. | 
| **links** | [block](#links-block-structure) |  A `links` block. Changing this forces a new resource to be created. | 
| **two_line_elements** | list |  A list of the two line elements (TLE), the first string being the first of the TLE, the second string being the second line of the TLE. Changing this forces a new resource to be created. | 
| **title_line** | string |  Title of the two line elements (TLE). | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `links` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `bandwidth_mhz` | string | Yes | - | Bandwidth in Mhz. |
| `center_frequency_mhz` | string | Yes | - | Center frequency in Mhz. |
| `direction` | string | Yes | - | Direction if the communication. Possible values are 'Uplink' and 'Downlink'. |
| `polarization` | string | Yes | - | Polarization. Possible values are 'RHCP', 'LHCP', 'linearVertical' and 'linearHorizontal'. |
| `name` | string | Yes | - | Name of the link. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spacecraft. | 

Additionally, all variables are provided as outputs.
