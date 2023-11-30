# azurerm_voice_services_communications_gateway

Manages a Voice Services Communications Gateways.!> **NOTE:** You must have signed an Operator Connect agreement with Microsoft to use this resource. For more information, see [`Prerequisites`](https://learn.microsoft.com/en-us/azure/communications-gateway/prepare-to-deploy#prerequisites).!> **NOTE:** Access to Azure Communications Gateway is restricted, see [`Get access to Azure Communications Gateway for your Azure subscription`](https://learn.microsoft.com/en-us/azure/communications-gateway/prepare-to-deploy#9-get-access-to-azure-communications-gateway-for-your-azure-subscription) for details.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "voice_services/voice_services_communications_gateway" 
}

inputs = {
   name = "name of voice_services_communications_gateway" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   connectivity = "connectivity of voice_services_communications_gateway" 
   codecs = "codecs of voice_services_communications_gateway" 
   e911_type = "e911_type of voice_services_communications_gateway" 
   platforms = "platforms of voice_services_communications_gateway" 
   service_location = {
      example_service_location = {
         location = "..."   
         operator_addresses = "..."   
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

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name which should be used for this Voice Services Communications Gateways. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the Azure Region where the Voice Services Communications Gateways should exist. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies the name of the Resource Group where the Voice Services Communications Gateways should exist. Changing this forces a new resource to be created. | 
| **var.connectivity** | string | True | -  |  `PublicAddress`  |  How to connect back to the operator network, e.g. MAPS. Possible values is `PublicAddress`. Changing this forces a new Voice Services Communications Gateways to be created. | 
| **var.codecs** | string | True | -  |  `PCMA`, `PCMU`, `G722`, `G722_2`, `SILK_8`, `SILK_16`  |  The voice codecs expected for communication with Teams. Possible values are `PCMA`, `PCMU`,`G722`,`G722_2`,`SILK_8` and `SILK_16`. | 
| **var.e911_type** | string | True | -  |  `Standard`, `DirectToEsrp`  |  How to handle 911 calls. Possible values are `Standard` and `DirectToEsrp`. | 
| **var.platforms** | string | True | -  |  `OperatorConnect`, `TeamsPhoneMobile`  |  The Voice Services Communications GatewaysAvailable supports platform types. Possible values are `OperatorConnect`, `TeamsPhoneMobile`. | 
| **var.service_location** | block | True | -  |  -  |  A `service_location` block. | 
| **var.auto_generated_domain_name_label_scope** | string | False | `TenantReuse`  |  `TenantReuse`, `SubscriptionReuse`, `ResourceGroupReuse`, `NoReuse`  |  Specifies the scope at which the auto-generated domain name can be re-used. Possible values are `TenantReuse`, `SubscriptionReuse`, `ResourceGroupReuse` and `NoReuse` . Changing this forces a new resource to be created. Defaults to `TenantReuse`. | 
| **var.api_bridge** | string | False | -  |  -  |  Details of API bridge functionality, if required. | 
| **var.emergency_dial_strings** | list | False | -  |  -  |  A list of dial strings used for emergency calling. | 
| **var.on_prem_mcp_enabled** | bool | False | -  |  -  |  Whether an on-premises Mobile Control Point is in use. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Voice Services Communications Gateways. | 
| **var.microsoft_teams_voicemail_pilot_number** | string | False | -  |  -  |  This number is used in Teams Phone Mobile scenarios for access to the voicemail IVR from the native dialer. | 

### `service_location` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `location` | string | Yes | - | Specifies the region in which the resources needed for Teams Calling will be deployed. |
| `operator_addresses` | string | Yes | - | IP address to use to contact the operator network from this region. |
| `allowed_media_source_address_prefixes` | string | No | - | Specifies the allowed source IP address or CIDR ranges for media. |
| `allowed_signaling_source_address_prefixes` | string | No | - | Specifies the allowed source IP address or CIDR ranges for signaling. |
| `esrp_addresses` | string | No | - | IP address to use to contact the ESRP from this region. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Voice Services Communications Gateways. | 

Additionally, all variables are provided as outputs.
