project_name: "extension_framework"

application: explore_assistant {
  label: "Explore Assistant (Select)"
  file: "/extension_sources/select_explore.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
    # external_api_urls: ["cloud function url"]
  }
}

# application: cloud_cost_forecasting {
#   label: "Cloud Cost Forecasting"
#   file: "cloud_cost_forecasting.js"
#   entitlements: {
#     core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
#     navigation: yes
#     use_embeds: yes
#     use_iframes: yes
#     new_window: yes
#     new_window_external_urls: ["https://developers.generativeai.google/*"]
#     local_storage: yes
#     # external_api_urls: ["cloud function url"]
#   }
#   mount_points: {
#     dashboard_vis: yes
#     dashboard_tile: yes
#     standalone: yes
#   }
# }


# application: fhir_with_explore_assistant {
#   label: "FHIR with Explore Assistant"
#   # url: "https://localhost:8080/bundle.js"
#   # file: "explore_assistant_multi_explores.js"

#   file: "fhir_flattened.js"
#   entitlements: {
#     core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
#     navigation: yes
#     use_embeds: yes
#     use_iframes: yes
#     new_window: yes
#     new_window_external_urls: ["https://developers.generativeai.google/*"]
#     local_storage: yes
#     # external_api_urls: ["cloud function url"]
#   }
# }


# application: kitchensink {
#   label: "Kitchen sink"
#   # url: "https://localhost:8080/bundle.js"
#   file: "kitchensink.js"
#   entitlements: {
#     local_storage: yes
#     navigation: yes
#     new_window: yes
#     use_form_submit: yes
#     use_embeds: yes
#     core_api_methods: ["all_connections","search_folders", "run_inline_query", "me", "all_looks", "run_look"]
#     external_api_urls: ["http://127.0.0.1:3000", "http://localhost:3000", "https://*.googleapis.com", "https://*.github.com", "https://REPLACE_ME.auth0.com"]
#     oauth2_urls: ["https://accounts.google.com/o/oauth2/v2/auth", "https://github.com/login/oauth/authorize", "https://dev-5eqts7im.auth0.com/authorize", "https://dev-5eqts7im.auth0.com/login/oauth/token", "https://github.com/login/oauth/access_token"]
#     scoped_user_attributes: ["user_value"]
#     global_user_attributes: ["locale"]
#   }
# }


application: dashboard-summarization {
  label: "Dashboard Insights Powered by Vertex AI"
  file: "/extension_sources/dashboard_summarization.js"
  # url: "http://localhost:8080/bundle.js"
  mount_points: {
    dashboard_vis: yes
    dashboard_tile: yes
    standalone: yes
  }
  entitlements: {
    local_storage: yes
    use_form_submit: yes
    core_api_methods: ["run_inline_query","all_lookml_models","dashboard","dashboard_dashboard_elements"]
    external_api_urls: [
      "https://websocket-service-806789612143.us-central1.run.app", "https://websocket-service-b32qynntlq-uc.a.run.app", "http://localhost:5000","http://localhost:3000","https://*.googleapis.com","https://slack.com/api/*","https://slack.com/*"
    ]
    #
    oauth2_urls: [
      "https://accounts.google.com/o/oauth2/v2/auth",
      "https://www.googleapis.com/auth/chat.spaces",
      "https://www.googleapis.com/auth/drive.metadata.readonly",
      "https://www.googleapis.com/auth/spreadsheets.readonly",
      "https://www.googleapis.com/auth/userinfo.profile",
      "https://www.googleapis.com/auth/chat.spaces.readonly",
      "https://www.googleapis.com/auth/chat.bot",
      "https://www.googleapis.com/auth/chat.messages",
      "https://www.googleapis.com/auth/chat.messages.create",
      "https://slack.com/oauth/v2/authorize"
    ]
    scoped_user_attributes: []
    global_user_attributes: []
  }
}
