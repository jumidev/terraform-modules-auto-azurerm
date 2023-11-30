# azurerm_mobile_network_slice

Manages a Mobile Network Slice.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "mobile_network/mobile_network_slice" 
}

inputs = {
   name = "name of mobile_network_slice" 
   mobile_network_id = "mobile_network_id of mobile_network_slice" 
   location = "${location}" 
   single_network_slice_selection_assistance_information = "single_network_slice_selection_assistance_information of mobile_network_slice" 
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
| **var.name** | string | True | Specifies the name which should be used for this Mobile Network Slice. Changing this forces a new Mobile Network Slice to be created. | 
| **var.mobile_network_id** | string | True | The ID of Mobile Network which the Mobile Network Slice belongs to. Changing this forces a new Mobile Network Slice to be created. | 
| **var.location** | string | True | Specifies the Azure Region where the Mobile Network Slice should exist. Changing this forces a new Mobile Network Slice to be created. | 
| **var.single_network_slice_selection_assistance_information** | block | True | A `single_network_slice_selection_assistance_information` block. Single-network slice selection assistance information (S-NSSAI). Unique at the scope of a mobile network. | 
| **var.description** | string | False | A description for this Mobile Network Slice. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Mobile Network Slice. | 

### `single_network_slice_selection_assistance_information` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `slice_differentiator` | string | No | - | Slice differentiator (SD). Must be a 6 digit hex string. |
| `slice_service_type` | string | Yes | - | Slice/service type (SST). Must be between '0' and '255'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network Slice. | 

Additionally, all variables are provided as outputs.
