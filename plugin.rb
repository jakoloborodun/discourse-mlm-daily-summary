# name: discourse-mlm-daily-summary
# about: Brings back the Derivative daily summary email for mailing list mode users.
# version: 0.2
# author: Joe Buhlig joebuhlig.com, Johann Janzen
# url: https://www.github.com/jakoloborodun/discourse-mlm-daily-summary

enabled_site_setting :mlm_daily_summary_enabled

DiscoursePluginRegistry.serialized_current_user_fields << "user_mlm_daily_summary_enabled"

load File.expand_path('../lib/discourse_mlm_daily_summary/engine.rb', __FILE__)

after_initialize do
  register_editable_user_custom_field :user_mlm_daily_summary_enabled
end
