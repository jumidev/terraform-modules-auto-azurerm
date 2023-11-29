# azurerm_mobile_network_sim

Manages a Mobile Network Sim.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Mobile Network Sim. Changing this forces a new Mobile Network Sim to be created. | 
| **mobile_network_sim_group_id** | string | True | -  |  -  | The ID of the Mobile Network which the Mobile Network Sim belongs to. Changing this forces a new Mobile Network Sim to be created. | 
| **authentication_key** | string | True | -  |  -  | The Ki value for the SIM. | 
| **international_mobile_subscriber_identity** | string | True | -  |  -  | The international mobile subscriber identity (IMSI) for the SIM. Changing this forces a new Mobile Network Sim to be created. | 
| **integrated_circuit_card_identifier** | string | True | -  |  -  | The integrated circuit card ID (ICCID) for the SIM. Changing this forces a new Mobile Network Sim to be created. | 
| **operator_key_code** | string | True | -  |  -  | The Opc value for the SIM. | 
| **device_type** | string | False | -  |  -  | An optional free-form text field that can be used to record the device type this SIM is associated with, for example `Video camera`. The Azure portal allows SIMs to be grouped and filtered based on this value. | 
| **sim_policy_id** | string | False | -  |  -  | The ID of SIM policy used by this SIM. | 
| **static_ip_configuration** | block | False | -  |  -  | A `static_ip_configuration` block. | 

