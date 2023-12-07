# azurerm_mobile_network_sim

Manages a Mobile Network Sim.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "mobile_network/mobile_network_sim"   
}

inputs = {
   name = "The name which should be used for this Mobile Network Sim..."   
   # mobile_network_sim_group_id → set in tfstate_inputs
   authentication_key = "The Ki value for the SIM"   
   international_mobile_subscriber_identity = "The international mobile subscriber identity (IMSI) for the SIM..."   
   integrated_circuit_card_identifier = "The integrated circuit card ID (ICCID) for the SIM"   
   operator_key_code = "The Opc value for the SIM"   
}

tfstate_inputs = {
   mobile_network_sim_group_id = "path/to/mobile_network_sim_group_component:id"   
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
| **name** | string |  The name which should be used for this Mobile Network Sim. Changing this forces a new Mobile Network Sim to be created. | 
| **mobile_network_sim_group_id** | string |  The ID of the Mobile Network which the Mobile Network Sim belongs to. Changing this forces a new Mobile Network Sim to be created. | 
| **authentication_key** | string |  The Ki value for the SIM. | 
| **international_mobile_subscriber_identity** | string |  The international mobile subscriber identity (IMSI) for the SIM. Changing this forces a new Mobile Network Sim to be created. | 
| **integrated_circuit_card_identifier** | string |  The integrated circuit card ID (ICCID) for the SIM. Changing this forces a new Mobile Network Sim to be created. | 
| **operator_key_code** | string |  The Opc value for the SIM. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **device_type** | string |  `Video camera`  |  An optional free-form text field that can be used to record the device type this SIM is associated with, for example `Video camera`. The Azure portal allows SIMs to be grouped and filtered based on this value. | 
| **sim_policy_id** | string |  -  |  The ID of SIM policy used by this SIM. | 
| **static_ip_configuration** | [block](#static_ip_configuration-block-structure) |  -  |  A `static_ip_configuration` block. | 

### `static_ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `attached_data_network_id` | string | Yes | - | The ID of attached data network on which the static IP address will be used. The combination of attached data network and slice defines the network scope of the IP address. |
| `slice_id` | string | Yes | - | The ID of network slice on which the static IP address will be used. The combination of attached data network and slice defines the network scope of the IP address. |
| `static_ipv4_address` | string | No | - | The IPv4 address assigned to the SIM at this network scope. This address must be in the userEquipmentStaticAddressPoolPrefix defined in the attached data network. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network Sim. | 
| **sim_state** | string | No  | The state of the SIM resource. | 
| **vendor_key_fingerprint** | string | No  | The public key fingerprint of the SIM vendor who provided this SIM, if any. | 
| **vendor_name** | string | No  | The name of the SIM vendor who provided this SIM, if any. | 

Additionally, all variables are provided as outputs.
