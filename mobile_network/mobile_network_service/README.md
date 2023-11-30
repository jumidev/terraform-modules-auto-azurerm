# azurerm_mobile_network_service

Manages a Mobile Network Service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "mobile_network/mobile_network_service" 
}

inputs = {
   name = "name of mobile_network_service" 
   mobile_network_id = "mobile_network_id of mobile_network_service" 
   location = "${location}" 
   service_precedence = "service_precedence of mobile_network_service" 
   pcc_rule = "pcc_rule of mobile_network_service" 
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
| **var.name** | string | True | Specifies the name which should be used for this Mobile Network Service. Changing this forces a new Mobile Network Service to be created. | 
| **var.mobile_network_id** | string | True | Specifies the ID of the Mobile Network Service. Changing this forces a new Mobile Network Service to be created. | 
| **var.location** | string | True | Specifies the Azure Region where the Mobile Network Service should exist. Changing this forces a new Mobile Network Service to be created. | 
| **var.service_precedence** | string | True | A precedence value that is used to decide between services when identifying the QoS values to use for a particular SIM. A lower value means a higher priority. This value should be unique among all services configured in the mobile network. Must be between `0` and `255`. | 
| **var.pcc_rule** | block | True | A `pcc_rule` block. The set of PCC Rules that make up this service. | 
| `pcc_rule` block structure: || 
|   name (string): (REQUIRED) Specifies the name of the rule. This must be unique within the parent service. You must not use any of the following reserved strings - 'default', 'requested' or 'service'. ||
|   precedence (string): (REQUIRED) A precedence value that is used to decide between data flow policy rules when identifying the QoS values to use for a particular SIM. A lower value means a higher priority. This value should be unique among all data flow policy rules configured in the mobile network. Must be between '0' and '255'. ||
|   qos_policy (block): A 'qos_policy' block. The QoS policy to use for packets matching this rule. If this field is not specified then the Service will define the QoS settings. ||
|   service_data_flow_template (block): (REQUIRED) A 'service_data_flow_template' block. The set of service data flow templates to use for this PCC rule. ||
|   traffic_control_enabled (bool): Determines whether flows that match this data flow policy rule are permitted. Defaults to 'true'. ||
| **var.service_qos_policy** | block | False | A `service_qos_policy` block. The QoS policy to use for packets matching this service. This can be overridden for particular flows using the ruleQosPolicy field in a `pcc_rule`. If this field is not specified then the `sim_policy` of User Equipment (UE) will define the QoS settings. | 
| `service_qos_policy` block structure: || 
|   allocation_and_retention_priority_level (string): QoS Flow allocation and retention priority (ARP) level. Flows with higher priority preempt flows with lower priority, if the settings of 'preemption_capability' and 'preemption_vulnerability' allow it. 1 is the highest level of priority. If this field is not specified then 'qos_indicator' is used to derive the ARP value. Defaults to '9'. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. ||
|   qos_indicator (string): The QoS Indicator (5QI for 5G network /QCI for 4G net work) value identifies a set of QoS characteristics that control QoS forwarding treatment for QoS flows or EPS bearers. Recommended values: 5-9; 69-70; 79-80. Must be between '1' and '127'. ||
|   maximum_bit_rate (block): (REQUIRED) A 'maximum_bit_rate' block. The Maximum Bit Rate (MBR) for all service data flows that use this PCC Rule or Service. ||
|   preemption_capability (string): The Preemption Capability of a QoS Flow controls whether it can preempt another QoS Flow with a lower priority level. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. Possible values are 'NotPreempt' and 'MayPreempt',. ||
|   preemption_vulnerability (string): The Preemption Vulnerability of a QoS Flow controls whether it can be preempted by QoS Flow with a higher priority level. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. Possible values are 'NotPreemptable' and 'Preemptable'. ||
| **var.tags** | map | False | A mapping of tags which should be assigned to the Mobile Network Service. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network Service. | 

Additionally, all variables are provided as outputs.
