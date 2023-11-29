# azurerm_voice_services_communications_gateway

Manages a Voice Services Communications Gateways.!> **NOTE:** You must have signed an Operator Connect agreement with Microsoft to use this resource. For more information, see [`Prerequisites`](https://learn.microsoft.com/en-us/azure/communications-gateway/prepare-to-deploy#prerequisites).!> **NOTE:** Access to Azure Communications Gateway is restricted, see [`Get access to Azure Communications Gateway for your Azure subscription`](https://learn.microsoft.com/en-us/azure/communications-gateway/prepare-to-deploy#9-get-access-to-azure-communications-gateway-for-your-azure-subscription) for details.

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



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **connectivity** | string  | - | 
| **codecs** | string  | - | 
| **e911_type** | string  | - | 
| **platforms** | string  | - | 
| **service_location** | block  | - | 
| **auto_generated_domain_name_label_scope** | string  | - | 
| **api_bridge** | string  | - | 
| **emergency_dial_strings** | list  | - | 
| **on_prem_mcp_enabled** | bool  | - | 
| **tags** | map  | - | 
| **microsoft_teams_voicemail_pilot_number** | string  | - | 
| **id** | string  | The ID of the Voice Services Communications Gateways. | 