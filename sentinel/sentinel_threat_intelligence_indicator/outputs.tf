output "display_name" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.display_name
}

output "pattern_type" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.pattern_type
}

output "pattern" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.pattern
}

output "source" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.source
}

output "validate_from_utc" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.validate_from_utc
}

output "workspace_id" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.workspace_id
}

output "confidence" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.confidence
}

output "created_by" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.created_by
}

output "description" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.description
}

output "extension" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.extension
}

output "external_reference" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.external_reference
}

output "granular_marking" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.granular_marking
}

output "kill_chain_phase" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.kill_chain_phase
}

output "tags" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.tags
}

output "language" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.language
}

output "object_marking_refs" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.object_marking_refs
}

output "pattern_version" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.pattern_version
}

output "revoked" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.revoked
}

output "threat_types" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.threat_types
}

output "validate_until_utc" {
  value = azurerm_sentinel_threat_intelligence_indicator.this.validate_until_utc
}

output "id" {
  description = "The ID of the Sentinel Threat Intelligence Indicator."
  value       = azurerm_sentinel_threat_intelligence_indicator.this.id
}

output "created_on" {
  description = "The date of this Threat Intelligence Indicator created."
  value       = azurerm_sentinel_threat_intelligence_indicator.this.created_on
}

output "defanged" {
  description = "Whether the Threat Intelligence entity is defanged?"
  value       = azurerm_sentinel_threat_intelligence_indicator.this.defanged
}

output "external_id" {
  description = "The external ID of the Threat Intelligence Indicator."
  value       = azurerm_sentinel_threat_intelligence_indicator.this.external_id
}

output "external_last_updated_time_utc" {
  description = "the External last updated time in UTC."
  value       = azurerm_sentinel_threat_intelligence_indicator.this.external_last_updated_time_utc
}

output "indicator_type" {
  description = "A list of indicator types of this Threat Intelligence Indicator."
  value       = azurerm_sentinel_threat_intelligence_indicator.this.indicator_type
}

output "last_updated_time_utc" {
  description = "The last updated time of the Threat Intelligence Indicator in UTC."
  value       = azurerm_sentinel_threat_intelligence_indicator.this.last_updated_time_utc
}

output "guid" {
  description = "The guid of this Sentinel Threat Intelligence Indicator."
  value       = azurerm_sentinel_threat_intelligence_indicator.this.guid
}

output "parsed_pattern" {
  description = "A 'parsed_pattern' block."
  value       = azurerm_sentinel_threat_intelligence_indicator.this.parsed_pattern
}

output "pattern_type_key" {
  description = "The type key of parsed pattern."
  value       = azurerm_sentinel_threat_intelligence_indicator.this.pattern_type_key
}

output "pattern_type_values" {
  description = "A 'pattern_type_values' block."
  value       = azurerm_sentinel_threat_intelligence_indicator.this.pattern_type_values
}

output "value" {
  description = "The value of the parsed pattern type."
  value       = azurerm_sentinel_threat_intelligence_indicator.this.value
}

output "value_type" {
  description = "The type of the value of the parsed pattern type value."
  value       = azurerm_sentinel_threat_intelligence_indicator.this.value_type
}

