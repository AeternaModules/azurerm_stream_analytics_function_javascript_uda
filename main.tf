resource "azurerm_stream_analytics_function_javascript_uda" "stream_analytics_function_javascript_udas" {
  for_each = var.stream_analytics_function_javascript_udas

  name                    = each.value.name
  script                  = each.value.script
  stream_analytics_job_id = each.value.stream_analytics_job_id

  dynamic "input" {
    for_each = each.value.input
    content {
      configuration_parameter = input.value.configuration_parameter
      type                    = input.value.type
    }
  }

  output {
    type = each.value.output.type
  }
}

