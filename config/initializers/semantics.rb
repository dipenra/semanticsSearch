require 'semantics_config'

SemanticsConfig.config = YAML.load_file("config/semantics.yml")[Rails.env].symbolize_keys