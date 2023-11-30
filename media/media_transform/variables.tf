# REQUIRED VARIABLES

variable "media_services_account_name" {
  description = "(REQUIRED) The Media Services account name. Changing this forces a new Transform to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Transform. Changing this forces a new Transform to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Transform should exist. Changing this forces a new Transform to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "An optional verbose description of the Transform."
  type        = string
  default     = null
}
variable "output" {
  description = "One or more 'output' blocks. At least one 'output' must be defined."
  type        = map(map(any))
  default     = null
}
#
# output block structure       :
#   audio_analyzer_preset (block): An 'audio_analyzer_preset' block.
#   builtin_preset (block)       : A 'builtin_preset' block.
#   custom_preset (block)        : A 'custom_preset' block.
#   face_detector_preset (block) : A 'face_detector_preset' block.
#   on_error_action (string)     : A Transform can define more than one outputs. This property defines what the service should do when one output fails - either continue to produce other outputs, or, stop the other outputs. The overall Job state will not reflect failures of outputs that are specified with 'ContinueJob'. Possible values are 'StopProcessingJob' or 'ContinueJob'. Defaults to 'StopProcessingJob'.
#   relative_priority (string)   : Sets the relative priority of the TransformOutputs within a Transform. This sets the priority that the service uses for processing Transform Outputs. Possible values are 'High', 'Normal' or 'Low'. Defaults to 'Normal'.
#   video_analyzer_preset (block): A 'video_analyzer_preset' block.
#
# crop_rectangle block structure:
#   height (string)               : The height of the rectangular region in pixels. This can be absolute pixel value (e.g '100'), or relative to the size of the video (For example, '50%').
#   left (int)                    : The number of pixels from the left-margin. This can be absolute pixel value (e.g '100'), or relative to the size of the video (For example, '50%').
#   top (int)                     : The number of pixels from the top-margin. This can be absolute pixel value (e.g '100'), or relative to the size of the video (For example, '50%').
#   width (string)                : The width of the rectangular region in pixels. This can be absolute pixel value (e.g' 100'), or relative to the size of the video (For example, '50%').
#
# mp4 block structure      :
#   filename_pattern (string): (REQUIRED) The file naming pattern used for the creation of output files. The following macros are supported in the file name: '{Basename}' - An expansion macro that will use the name of the input video file. If the base name(the file suffix is not included) of the input video file is less than 32 characters long, the base name of input video files will be used. If the length of base name of the input video file exceeds 32 characters, the base name is truncated to the first 32 characters in total length. '{Extension}' - The appropriate extension for this format. '{Label}' - The label assigned to the codec/layer. '{Index}' - A unique index for thumbnails. Only applicable to thumbnails. '{AudioStream}' - string 'Audio' plus audio stream number(start from 1). '{Bitrate}' - The audio/video bitrate in kbps. Not applicable to thumbnails. '{Codec}' - The type of the audio/video codec. '{Resolution}' - The video resolution. Any unsubstituted macros will be collapsed and removed from the filename.
#   output_file (block)      : One or more 'output_file' blocks.
#
# format block structure  :
#   jpg (block)             : A 'jpg' block.
#   mp4 (block)             : A 'mp4' block.
#   png (block)             : A 'png' block.
#   transport_stream (block): A 'transport_stream' block.
#
# fade_in block structure:
#   duration (string)      : (REQUIRED) The duration of the fade effect in the video. The value can be in ISO 8601 format (For example, PT05S to fade In/Out a color during 5 seconds), or a frame count (For example, 10 to fade 10 frames from the start time), or a relative value to stream duration (For example, 10% to fade 10% of stream duration).
#   fade_color (string)    : (REQUIRED) The color for the fade in/out. It can be on the [CSS Level1 colors](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value/color_keywords) or an RGB/hex value: e.g: 'rgb(255,0,0)', '0xFF0000' or '#FF0000'.
#   start (string)         : The position in the input video from where to start fade. The value can be in ISO 8601 format (For example, 'PT05S' to start at 5 seconds), or a frame count (For example, '10' to start at the 10th frame), or a relative value to stream duration (For example, '10%' to start at 10% of stream duration). Default to '0'.
#
# custom_preset block structure:
#   codec (list)                 : (REQUIRED) One or more 'codec' blocks.
#   format (block)               : (REQUIRED) One or more 'format' blocks.
#   experimental_options (string): Dictionary containing key value pairs for parameters not exposed in the preset itself.
#   filter (block)               : A 'filter' block.
#
# deinterlace block structure:
#   parity (string)            : The field parity to use for deinterlacing. Possible values are 'Auto', 'TopFieldFirst' or 'BottomFieldFirst'. Default to 'Auto'.
#   mode (string)              : The deinterlacing mode. Possible values are 'AutoPixelAdaptive' or 'Off'. Default to 'AutoPixelAdaptive'.
#
# fade_out block structure:
#   duration (string)       : (REQUIRED) The duration of the fade effect in the video. The value can be in ISO 8601 format (For example, PT05S to fade In/Out a color during 5 seconds), or a frame count (For example, 10 to fade 10 frames from the start time), or a relative value to stream duration (For example, 10% to fade 10% of stream duration).
#   fade_color (string)     : (REQUIRED) The color for the fade in/out. It can be on the [CSS Level1 colors](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value/color_keywords) or an RGB/hex value: e.g: 'rgb(255,0,0)', '0xFF0000' or '#FF0000'.
#   start (string)          : The position in the input video from where to start fade. The value can be in ISO 8601 format (For example, 'PT05S' to start at 5 seconds), or a frame count (For example, '10' to start at the 10th frame), or a relative value to stream duration (For example, '10%' to start at 10% of stream duration). Default to '0'.
#
# builtin_preset block structure:
#   preset_name (string)          : (REQUIRED) The built-in preset to be used for encoding videos. The Possible values are 'AACGoodQualityAudio', 'AdaptiveStreaming', 'ContentAwareEncoding', 'ContentAwareEncodingExperimental', 'CopyAllBitrateNonInterleaved', 'DDGoodQualityAudio', 'H265AdaptiveStreaming', 'H265ContentAwareEncoding', 'H265SingleBitrate4K', 'H265SingleBitrate1080p', 'H265SingleBitrate720p', 'H264MultipleBitrate1080p', 'H264MultipleBitrateSD', 'H264MultipleBitrate720p', 'H264SingleBitrate1080p', 'H264SingleBitrateSD' and 'H264SingleBitrate720p'.
#   preset_configuration (block)  : A 'preset_configuration' block.
#
# video block structure     :
#   input_label (string)      : (REQUIRED) The label of the job input which is to be used as an overlay. The input must specify exact one file. You can specify an image file in JPG, PNG, GIF or BMP format, or an audio file (such as a WAV, MP3, WMA or M4A file), or a video file.
#   audio_gain_level (string) : The gain level of audio in the overlay. The value should be in range between '0' to '1.0'. The default is '1.0'.
#   crop_rectangle (block)    : A 'crop_rectangle' block.
#   end (string)              : The end position, with reference to the input video, at which the overlay ends. The value should be in ISO 8601 format. For example, 'PT30S' to end the overlay at 30 seconds into the input video. If not specified or the value is greater than the input video duration, the overlay will be applied until the end of the input video if the overlay media duration is greater than the input video duration, else the overlay will last as long as the overlay media duration.
#   fade_in_duration (string) : The duration over which the overlay fades in onto the input video. The value should be in ISO 8601 duration format. If not specified the default behavior is to have no fade in (same as 'PT0S').
#   fade_out_duration (string): The duration over which the overlay fades out of the input video. The value should be in ISO 8601 duration format. If not specified the default behavior is to have no fade out (same as 'PT0S').
#   opacity (string)          : The opacity of the overlay. The value should be in the range between '0' to '1.0'. Default to '1.0', which means the overlay is opaque.
#   position (block)          : A 'position' block.
#   start (string)            : The start position, with reference to the input video, at which the overlay starts. The value should be in ISO 8601 format. For example, 'PT05S' to start the overlay at 5 seconds into the input video. If not specified the overlay starts from the beginning of the input video.
#
# output_file block structure:
#   labels (string)            : (REQUIRED) The list of labels that describe how the encoder should multiplex video and audio into an output file. For example, if the encoder is producing two video layers with labels 'v1' and 'v2', and one audio layer with label 'a1', then an array like '['v1', 'a1']' tells the encoder to produce an output file with the video track represented by 'v1' and the audio track represented by 'a1'.
#
# position block structure:
#   height (string)         : The height of the rectangular region in pixels. This can be absolute pixel value (e.g '100'), or relative to the size of the video (For example, '50%').
#   left (int)              : The number of pixels from the left-margin. This can be absolute pixel value (e.g '100'), or relative to the size of the video (For example, '50%').
#   top (int)               : The number of pixels from the top-margin. This can be absolute pixel value (e.g '100'), or relative to the size of the video (For example, '50%').
#   width (string)          : The width of the rectangular region in pixels. This can be absolute pixel value (e.g' 100'), or relative to the size of the video (For example, '50%').
#
# audio_analyzer_preset block structure:
#   audio_language (string)              : The language for the audio payload in the input using the BCP-47 format of 'language tag-region' (e.g: 'en-US'). If you know the language of your content, it is recommended that you specify it. The language must be specified explicitly for AudioAnalysisMode:Basic, since automatic language detection is not included in basic mode. If the language isn't specified, automatic language detection will choose the first language detected and process with the selected language for the duration of the file. It does not currently support dynamically switching between languages after the first language is detected. The automatic detection works best with audio recordings with clearly discernible speech. If automatic detection fails to find the language, transcription would fall back to 'en-US'. The list of supported languages is available here: <https://go.microsoft.com/fwlink/?linkid=2109463>.
#   audio_analysis_mode (string)         : Possible values are 'Basic' or 'Standard'. Determines the set of audio analysis operations to be performed. Default to 'Standard'.
#   experimental_options (string)        : Dictionary containing key value pairs for parameters not exposed in the preset itself.
#
# jpg block structure      :
#   filename_pattern (string): (REQUIRED) The file naming pattern used for the creation of output files. The following macros are supported in the file name: '{Basename}' - An expansion macro that will use the name of the input video file. If the base name(the file suffix is not included) of the input video file is less than 32 characters long, the base name of input video files will be used. If the length of base name of the input video file exceeds 32 characters, the base name is truncated to the first 32 characters in total length. '{Extension}' - The appropriate extension for this format. '{Label}' - The label assigned to the codec/layer. '{Index}' - A unique index for thumbnails. Only applicable to thumbnails. '{AudioStream}' - string 'Audio' plus audio stream number(start from 1). '{Bitrate}' - The audio/video bitrate in kbps. Not applicable to thumbnails. '{Codec}' - The type of the audio/video codec. '{Resolution}' - The video resolution. Any unsubstituted macros will be collapsed and removed from the filename.
#
# preset_configuration block structure:
#   complexity (string)                 : The complexity of the encoding. Possible values are 'Balanced', 'Speed' or 'Quality'.
#   interleave_output (string)          : Specifies the interleave mode of the output to control how audio are stored in the container format. Possible values are 'InterleavedOutput' and 'NonInterleavedOutput'.
#   key_frame_interval_in_seconds (int) : The key frame interval in seconds. Possible value is a positive float. For example, set as '2.0' to reduce the playback buffering for some players.
#   max_bitrate_bps (int)               : The maximum bitrate in bits per second (threshold for the top video layer). For example, set as '6000000' to avoid producing very high bitrate outputs for contents with high complexity.
#   max_height (string)                 : The maximum height of output video layers. For example, set as '720' to produce output layers up to 720P even if the input is 4K.
#   max_layers (int)                    : The maximum number of output video layers. For example, set as '4' to make sure at most 4 output layers are produced to control the overall cost of the encoding job.
#   min_bitrate_bps (int)               : The minimum bitrate in bits per second (threshold for the bottom video layer). For example, set as '200000' to have a bottom layer that covers users with low network bandwidth.
#   min_height (string)                 : The minimum height of output video layers. For example, set as '360' to avoid output layers of smaller resolutions like 180P.
#
# audio block structure     :
#   input_label (string)      : (REQUIRED) The label of the job input which is to be used as an overlay. The input must specify exact one file. You can specify an image file in JPG, PNG, GIF or BMP format, or an audio file (such as a WAV, MP3, WMA or M4A file), or a video file.
#   audio_gain_level (string) : The gain level of audio in the overlay. The value should be in the range '0' to '1.0'. The default is '1.0'.
#   end (string)              : The end position, with reference to the input video, at which the overlay ends. The value should be in ISO 8601 format. For example, 'PT30S' to end the overlay at 30 seconds into the input video. If not specified or the value is greater than the input video duration, the overlay will be applied until the end of the input video if the overlay media duration is greater than the input video duration, else the overlay will last as long as the overlay media duration.
#   fade_in_duration (string) : The duration over which the overlay fades in onto the input video. The value should be in ISO 8601 duration format. If not specified the default behavior is to have no fade in (same as 'PT0S').
#   fade_out_duration (string): The duration over which the overlay fades out of the input video. The value should be in ISO 8601 duration format. If not specified the default behavior is to have no fade out (same as 'PT0S').
#   start (string)            : The start position, with reference to the input video, at which the overlay starts. The value should be in ISO 8601 format. For example, 'PT05S' to start the overlay at 5 seconds into the input video. If not specified the overlay starts from the beginning of the input video.
#
# face_detector_preset block structure:
#   analysis_resolution (string)        : Possible values are 'SourceResolution' or 'StandardDefinition'. Specifies the maximum resolution at which your video is analyzed. which will keep the input video at its original resolution when analyzed. Using 'StandardDefinition' will resize input videos to standard definition while preserving the appropriate aspect ratio. It will only resize if the video is of higher resolution. For example, a 1920x1080 input would be scaled to 640x360 before processing. Switching to 'StandardDefinition' will reduce the time it takes to process high resolution video. It may also reduce the cost of using this component (see <https://azure.microsoft.com/en-us/pricing/details/media-services/#analytics> for details). However, faces that end up being too small in the resized video may not be detected. Default to 'SourceResolution'.
#   blur_type (string)                  : Specifies the type of blur to apply to faces in the output video. Possible values are 'Black', 'Box', 'High', 'Low',and 'Med'.
#   experimental_options (string)       : Dictionary containing key value pairs for parameters not exposed in the preset itself.
#   face_redactor_mode (string)         : This mode provides the ability to choose between the following settings: 1) 'Analyze' - For detection only. This mode generates a metadata JSON file marking appearances of faces throughout the video. Where possible, appearances of the same person are assigned the same ID. 2) 'Combined' - Additionally redacts(blurs) detected faces. 3) 'Redact' - This enables a 2-pass process, allowing for selective redaction of a subset of detected faces. It takes in the metadata file from a prior analyze pass, along with the source video, and a user-selected subset of IDs that require redaction. Default to 'Analyze'.
#
# filter block structure:
#   crop_rectangle (block): A 'crop_rectangle' block.
#   deinterlace (block)   : A 'deinterlace' block.
#   fade_in (block)       : A 'fade_in' block.
#   fade_out (block)      : A 'fade_out' block.
#   overlay (block)       : One or more 'overlay' blocks.
#   rotation (string)     : The rotation to be applied to the input video before it is encoded. Possible values are 'Auto', 'None', 'Rotate90', 'Rotate180', 'Rotate270',or 'Rotate0'. Default to 'Auto'.
#
# video_analyzer_preset block structure:
#   audio_language (string)              : The language for the audio payload in the input using the BCP-47 format of 'language tag-region' (e.g: 'en-US'). If you know the language of your content, it is recommended that you specify it. The language must be specified explicitly for AudioAnalysisMode:Basic, since automatic language detection is not included in basic mode. If the language isn't specified, automatic language detection will choose the first language detected and process with the selected language for the duration of the file. It does not currently support dynamically switching between languages after the first language is detected. The automatic detection works best with audio recordings with clearly discernible speech. If automatic detection fails to find the language, transcription would fall back to 'en-US'. The list of supported languages is available here: <https://go.microsoft.com/fwlink/?linkid=2109463>.
#   audio_analysis_mode (string)         : Possible values are 'Basic' or 'Standard'. Determines the set of audio analysis operations to be performed. Default to 'Standard'.
#   experimental_options (string)        : Dictionary containing key value pairs for parameters not exposed in the preset itself.
#   insights_type (string)               : Defines the type of insights that you want the service to generate. The allowed values are 'AudioInsightsOnly', 'VideoInsightsOnly', and 'AllInsights'. If you set this to 'AllInsights' and the input is audio only, then only audio insights are generated. Similarly, if the input is video only, then only video insights are generated. It is recommended that you not use 'AudioInsightsOnly' if you expect some of your inputs to be video only; or use 'VideoInsightsOnly' if you expect some of your inputs to be audio only. Your Jobs in such conditions would error out. Default to 'AllInsights'.
#
# png block structure      :
#   filename_pattern (string): (REQUIRED) The file naming pattern used for the creation of output files. The following macros are supported in the file name: '{Basename}' - An expansion macro that will use the name of the input video file. If the base name(the file suffix is not included) of the input video file is less than 32 characters long, the base name of input video files will be used. If the length of base name of the input video file exceeds 32 characters, the base name is truncated to the first 32 characters in total length. '{Extension}' - The appropriate extension for this format. '{Label}' - The label assigned to the codec/layer. '{Index}' - A unique index for thumbnails. Only applicable to thumbnails. '{AudioStream}' - string 'Audio' plus audio stream number(start from 1). '{Bitrate}' - The audio/video bitrate in kbps. Not applicable to thumbnails. '{Codec}' - The type of the audio/video codec. '{Resolution}' - The video resolution. Any unsubstituted macros will be collapsed and removed from the filename.
#
# transport_stream block structure:
#   filename_pattern (string)       : (REQUIRED) The file naming pattern used for the creation of output files. The following macros are supported in the file name: '{Basename}' - An expansion macro that will use the name of the input video file. If the base name(the file suffix is not included) of the input video file is less than 32 characters long, the base name of input video files will be used. If the length of base name of the input video file exceeds 32 characters, the base name is truncated to the first 32 characters in total length. '{Extension}' - The appropriate extension for this format. '{Label}' - The label assigned to the codec/layer. '{Index}' - A unique index for thumbnails. Only applicable to thumbnails. '{AudioStream}' - string 'Audio' plus audio stream number(start from 1). '{Bitrate}' - The audio/video bitrate in kbps. Not applicable to thumbnails. '{Codec}' - The type of the audio/video codec. '{Resolution}' - The video resolution. Any unsubstituted macros will be collapsed and removed from the filename.
#   output_file (list)              : One or more 'output_file' blocks.
#
# overlay block structure:
#   audio (block)          : An 'audio' block.
#   video (block)          : A 'video' block.


