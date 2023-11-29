data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_media_transform" "this" {

  ########################################
  # required vars
  ########################################
  media_services_account_name = var.media_services_account_name
  name                        = var.name
  resource_group_name         = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  description = var.description

  dynamic "output" { # var.output
    for_each = var.output != null ? var.output : []
    content {

      dynamic "audio_analyzer_preset" { # output.value.audio_analyzer_preset
        for_each = output.value.audio_analyzer_preset != null ? output.value.audio_analyzer_preset : []
        content {
          audio_language       = lookup(audio_analyzer_preset.value, "audio_language", null)
          audio_analysis_mode  = lookup(audio_analyzer_preset.value, "audio_analysis_mode", "Standard")
          experimental_options = lookup(audio_analyzer_preset.value, "experimental_options", null)
        }
      }


      dynamic "builtin_preset" { # output.value.builtin_preset
        for_each = output.value.builtin_preset != null ? output.value.builtin_preset : []
        content {
          preset_name = lookup(builtin_preset.value, "preset_name") # (Required) possible values: AACGoodQualityAudio | AdaptiveStreaming | ContentAwareEncoding | ContentAwareEncodingExperimental | CopyAllBitrateNonInterleaved | DDGoodQualityAudio | H265AdaptiveStreaming | H265ContentAwareEncoding | H265SingleBitrate4K | H265SingleBitrate1080p | H265SingleBitrate720p | H264MultipleBitrate1080p | H264MultipleBitrateSD | H264MultipleBitrate720p | H264SingleBitrate1080p | H264SingleBitrateSD | H264SingleBitrate720p

          dynamic "preset_configuration" { # builtin_preset.value.preset_configuration
            for_each = builtin_preset.value.preset_configuration != null ? builtin_preset.value.preset_configuration : []
            content {
              complexity                    = lookup(preset_configuration.value, "complexity", null)
              interleave_output             = lookup(preset_configuration.value, "interleave_output", null)
              key_frame_interval_in_seconds = lookup(preset_configuration.value, "key_frame_interval_in_seconds", null)
              max_bitrate_bps               = lookup(preset_configuration.value, "max_bitrate_bps", null)
              max_height                    = lookup(preset_configuration.value, "max_height", null)
              max_layers                    = lookup(preset_configuration.value, "max_layers", null)
              min_bitrate_bps               = lookup(preset_configuration.value, "min_bitrate_bps", null)
              min_height                    = lookup(preset_configuration.value, "min_height", null)
            }
          }

        }
      }


      dynamic "custom_preset" { # output.value.custom_preset
        for_each = output.value.custom_preset != null ? output.value.custom_preset : []
        content {
          codec = lookup(custom_preset.value, "codec") # (Required) 

          dynamic "format" { # custom_preset.value.format
            for_each = custom_preset.value.format != null ? custom_preset.value.format : []
            content {

              dynamic "jpg" { # format.value.jpg
                for_each = format.value.jpg != null ? format.value.jpg : []
                content {
                  filename_pattern = lookup(jpg.value, "filename_pattern") # (Required) 
                }
              }


              dynamic "mp4" { # format.value.mp4
                for_each = format.value.mp4 != null ? format.value.mp4 : []
                content {
                  filename_pattern = lookup(mp4.value, "filename_pattern") # (Required) 

                  dynamic "output_file" { # mp4.value.output_file
                    for_each = mp4.value.output_file != null ? mp4.value.output_file : []
                    content {
                      labels = lookup(output_file.value, "labels") # (Required) 
                    }
                  }

                }
              }


              dynamic "png" { # format.value.png
                for_each = format.value.png != null ? format.value.png : []
                content {
                  filename_pattern = lookup(png.value, "filename_pattern") # (Required) 
                }
              }


              dynamic "transport_stream" { # format.value.transport_stream
                for_each = format.value.transport_stream != null ? format.value.transport_stream : []
                content {
                  filename_pattern = lookup(transport_stream.value, "filename_pattern") # (Required) 
                  output_file      = lookup(transport_stream.value, "output_file", null)
                }
              }

            }
          }

          experimental_options = lookup(custom_preset.value, "experimental_options", null)

          dynamic "filter" { # custom_preset.value.filter
            for_each = custom_preset.value.filter != null ? custom_preset.value.filter : []
            content {

              dynamic "crop_rectangle" { # filter.value.crop_rectangle
                for_each = filter.value.crop_rectangle != null ? filter.value.crop_rectangle : []
                content {
                  height = lookup(crop_rectangle.value, "height", null)
                  left   = lookup(crop_rectangle.value, "left", null)
                  top    = lookup(crop_rectangle.value, "top", null)
                  width  = lookup(crop_rectangle.value, "width", null)
                }
              }


              dynamic "deinterlace" { # filter.value.deinterlace
                for_each = filter.value.deinterlace != null ? filter.value.deinterlace : []
                content {
                  parity = lookup(deinterlace.value, "parity", "Auto")
                  mode   = lookup(deinterlace.value, "mode", "AutoPixelAdaptive")
                }
              }


              dynamic "fade_in" { # filter.value.fade_in
                for_each = filter.value.fade_in != null ? filter.value.fade_in : []
                content {
                  duration   = lookup(fade_in.value, "duration")   # (Required) 
                  fade_color = lookup(fade_in.value, "fade_color") # (Required) 
                  start      = lookup(fade_in.value, "start", "0")
                }
              }


              dynamic "fade_out" { # filter.value.fade_out
                for_each = filter.value.fade_out != null ? filter.value.fade_out : []
                content {
                  duration   = lookup(fade_out.value, "duration")   # (Required) 
                  fade_color = lookup(fade_out.value, "fade_color") # (Required) 
                  start      = lookup(fade_out.value, "start", "0")
                }
              }


              dynamic "overlay" { # filter.value.overlay
                for_each = filter.value.overlay != null ? filter.value.overlay : []
                content {

                  dynamic "audio" { # overlay.value.audio
                    for_each = overlay.value.audio != null ? overlay.value.audio : []
                    content {
                      input_label       = lookup(audio.value, "input_label") # (Required) 
                      audio_gain_level  = lookup(audio.value, "audio_gain_level", "1.0")
                      end               = lookup(audio.value, "end", null)
                      fade_in_duration  = lookup(audio.value, "fade_in_duration", null)
                      fade_out_duration = lookup(audio.value, "fade_out_duration", null)
                      start             = lookup(audio.value, "start", null)
                    }
                  }


                  dynamic "video" { # overlay.value.video
                    for_each = overlay.value.video != null ? overlay.value.video : []
                    content {
                      input_label      = lookup(video.value, "input_label") # (Required) 
                      audio_gain_level = lookup(video.value, "audio_gain_level", "1.0")

                      dynamic "crop_rectangle" { # video.value.crop_rectangle
                        for_each = video.value.crop_rectangle != null ? video.value.crop_rectangle : []
                        content {
                          height = lookup(crop_rectangle.value, "height", null)
                          left   = lookup(crop_rectangle.value, "left", null)
                          top    = lookup(crop_rectangle.value, "top", null)
                          width  = lookup(crop_rectangle.value, "width", null)
                        }
                      }

                      end               = lookup(video.value, "end", null)
                      fade_in_duration  = lookup(video.value, "fade_in_duration", null)
                      fade_out_duration = lookup(video.value, "fade_out_duration", null)
                      opacity           = lookup(video.value, "opacity", "1.0")

                      dynamic "position" { # video.value.position
                        for_each = video.value.position != null ? video.value.position : []
                        content {
                          height = lookup(position.value, "height", null)
                          left   = lookup(position.value, "left", null)
                          top    = lookup(position.value, "top", null)
                          width  = lookup(position.value, "width", null)
                        }
                      }

                      start = lookup(video.value, "start", null)
                    }
                  }

                }
              }

              rotation = lookup(filter.value, "rotation", "Auto")
            }
          }

        }
      }


      dynamic "face_detector_preset" { # output.value.face_detector_preset
        for_each = output.value.face_detector_preset != null ? output.value.face_detector_preset : []
        content {
          analysis_resolution  = lookup(face_detector_preset.value, "analysis_resolution", "SourceResolution")
          blur_type            = lookup(face_detector_preset.value, "blur_type", null)
          experimental_options = lookup(face_detector_preset.value, "experimental_options", null)
          face_redactor_mode   = lookup(face_detector_preset.value, "face_redactor_mode", "Analyze")
        }
      }

      on_error_action   = lookup(output.value, "on_error_action", "StopProcessingJob")
      relative_priority = lookup(output.value, "relative_priority", "Normal")

      dynamic "video_analyzer_preset" { # output.value.video_analyzer_preset
        for_each = output.value.video_analyzer_preset != null ? output.value.video_analyzer_preset : []
        content {
          audio_language       = lookup(video_analyzer_preset.value, "audio_language", null)
          audio_analysis_mode  = lookup(video_analyzer_preset.value, "audio_analysis_mode", "Standard")
          experimental_options = lookup(video_analyzer_preset.value, "experimental_options", null)
          insights_type        = lookup(video_analyzer_preset.value, "insights_type", "AllInsights")
        }
      }

    }
  }

}
