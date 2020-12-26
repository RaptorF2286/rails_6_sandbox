# frozen_string_literal: true
#
# Uncomment this and change the path if necessary to include your own
# components.
# See https://github.com/plataformatec/simple_form#custom-components to know
# more about custom components.
# Dir[Rails.root.join('lib/components/**/*.rb')].each { |f| require f }
#
# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.input_mappings = { /country/ => :string }
  # Wrappers are used by the form builder to generate a
  # complete input. You can remove any component from the
  # wrapper, change the order or even add your own to the
  # stack. The options given below are used to wrap the
  # whole input.
  config.wrappers :default, tag: 'div', class: 'uk-margin' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    ## Inputs
    b.use :label, class: 'uk-input-label'
    b.wrapper tag: 'div', class: 'uk-form-controls' do |input|
      input.use :error, wrap_with: { tag: 'span', class: 'uk-label uk-alert-danger' }
      input.use :input, class: 'uk-input', error_class: 'uk-form-danger', valid_class: 'uk-form-success'
      # b.use :hint, wrap_with: { tag: :span, class: :hint }
    end
  end


  config.wrappers :uk_textarea, tag: 'div', class: 'uk-margin' do |b|
    b.use :html5
    b.use :label, class: 'uk-input-label'
    b.wrapper tag: 'div', class: 'uk-form-controls' do |input|
      input.use :error, wrap_with: { tag: 'span', class: 'uk-label uk-alert-danger' }
      input.use :input, class: 'uk-textarea', error_class: 'uk-form-danger', valid_class: 'uk-form-success'
    end

  end

  config.wrappers :uk_checkboxes, class: 'uk-margin uk-text-left' do |b|
    b.use :error, wrap_with: { tag: 'span', class: 'uk-label uk-alert-danger' }
    b.wrapper tag: 'div', class: 'uk-form-controls uk-flex uk-flex-column' do |ba|
      ba.use :input, class: 'uk-checkbox'
    end
  end


  config.wrappers :uk_checkbox, tag: 'div', class: "uk-margin" do |b|
    b.use :html5
    b.wrapper tag: 'div', class: 'uk-form-controls' do |seg|
      seg.wrapper tag: 'label' do |input|
        input.use :input, class: 'uk-checkbox uk-margin-small-right'
        input.use :label_text
      end
    end
  end


  # The default wrapper to be used by the FormBuilder.
  config.default_wrapper = :default

  # Define the way to render check boxes / radio buttons with labels.
  # Defaults to :nested for bootstrap config.
  #   inline: input + label
  #   nested: label > input
  config.boolean_style = :inline

  # Default class for buttons
  config.button_class = 'uk-button'

  # Method used to tidy up errors. Specify any Rails Array method.
  # :first lists the first message for each field.
  # Use :to_sentence to list all errors for each field.
  # config.error_method = :first

  # Default tag used for error notification helper.
  config.error_notification_tag = :div

  # CSS class to add for error notification helper.
  config.error_notification_class = 'error_notification'

  # Series of attempts to detect a default label method for collection.
  # config.collection_label_methods = [ :to_label, :name, :title, :to_s ]

  # Series of attempts to detect a default value method for collection.
  # config.collection_value_methods = [ :id, :to_s ]

  # You can wrap a collection of radio/check boxes in a pre-defined tag, defaulting to none.
  # config.collection_wrapper_tag = :div

  # You can define the class to use on all collection wrappers. Defaulting to none.
  # config.collection_wrapper_class = 'uk-margin'

  # You can wrap each item in a collection of radio/check boxes with a tag,
  # defaulting to :span.
  # config.item_wrapper_tag = :label

  # You can define a class to use in all item wrappers. Defaulting to none.
  # config.item_wrapper_class = 'uk-checkbox'

  # How the label text should be generated altogether with the required text.
  # config.label_text = lambda { |label, required, explicit_label| "#{required} #{label}" }

  # You can define the class to use on all labels. Default is nil.
  # config.label_class = nil

  # You can define the default class to be used on forms. Can be overriden
  # with `html: { :class }`. Defaulting to none.
  config.default_form_class = 'uk-form-stacked'

  # You can define which elements should obtain additional classes
  # config.generate_additional_classes_for = [:wrapper, :label, :input]

  # Whether attributes are required by default (or not). Default is true.
  # config.required_by_default = true

  # Tell browsers whether to use the native HTML5 validations (novalidate form option).
  # These validations are enabled in SimpleForm's internal config but disabled by default
  # in this configuration, which is recommended due to some quirks from different browsers.
  # To stop SimpleForm from generating the novalidate option, enabling the HTML5 validations,
  # change this configuration to true.
  config.browser_validations = false

  # Collection of methods to detect if a file type was given.
  # config.file_methods = [ :mounted_as, :file?, :public_filename, :attached? ]

  # Custom mappings for input types. This should be a hash containing a regexp
  # to match as key, and the input type that will be used when the field name
  # matches the regexp as value.
  # config.input_mappings = { /count/ => :integer }

  # Custom wrappers for input types. This should be a hash containing an input
  # type as key and the wrapper that will be used for all inputs with specified type.
  # config.wrapper_mappings = { string: :prepend }

  # Namespaces where SimpleForm should look for custom input classes that
  # override default inputs.
  # config.custom_inputs_namespaces << "CustomInputs"

  # Default priority for time_zone inputs.
  # config.time_zone_priority = nil

  # Default priority for country inputs.
  # config.country_priority = nil

  # When false, do not use translations for labels.
  # config.translate_labels = true

  # Automatically discover new inputs in Rails' autoload path.
  # config.inputs_discovery = true

  # Cache SimpleForm inputs discovery
  # config.cache_discovery = !Rails.env.development?

  # Default class for inputs
  # config.input_class = nil

  # Define the default class of the input wrapper of the boolean input.
  config.wrapper_mappings = {
      boolean: :uk_checkbox,
      text: :uk_textarea,
      check_boxes: :uk_checkboxes
      # date: :ui_date
  }


  # Defines if the default input wrapper class should be included in radio
  # collection wrappers.
  # config.include_default_input_wrapper_class = true

  # Defines which i18n scope will be used in Simple Form.
  # config.i18n_scope = 'simple_form'

  # Defines validation classes to the input_field. By default it's nil.
  # config.input_field_valid_class = 'is-valid'
  # config.input_field_error_class = 'is-invalid'
end
