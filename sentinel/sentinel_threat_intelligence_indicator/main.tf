

resource "azurerm_sentinel_threat_intelligence_indicator" "this" {

  ########################################
  # required vars
  ########################################
  display_name      = var.display_name
  pattern_type      = var.pattern_type
  pattern           = var.pattern
  source            = var.source
  validate_from_utc = var.validate_from_utc
  workspace_id      = var.workspace_id

  ########################################
  # optional vars
  ########################################
  confidence  = var.confidence
  created_by  = var.created_by
  description = var.description
  extension   = var.extension

  dynamic "external_reference" { # var.external_reference
    for_each = var.external_reference != null ? var.external_reference : []
    content {
      description = lookup(external_reference.value, "description", null)
      hashes      = lookup(external_reference.value, "hashes", null)
      source_name = lookup(external_reference.value, "source_name", null)
      url         = lookup(external_reference.value, "url", null)
    }
  }


  dynamic "granular_marking" { # var.granular_marking
    for_each = var.granular_marking != null ? var.granular_marking : []
    content {
      language    = lookup(granular_marking.value, "language", null)
      marking_ref = lookup(granular_marking.value, "marking_ref", null)
      selectors   = lookup(granular_marking.value, "selectors", null)
    }
  }


  dynamic "kill_chain_phase" { # var.kill_chain_phase
    for_each = var.kill_chain_phase != null ? var.kill_chain_phase : []
    content {
      name = kill_chain_phase.key
    }
  }

  tags                = var.tags
  language            = var.language
  object_marking_refs = var.object_marking_refs
  pattern_version     = var.pattern_version
  revoked             = var.revoked
  threat_types        = var.threat_types
  validate_until_utc  = var.validate_until_utc
}
