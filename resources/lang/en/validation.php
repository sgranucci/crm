<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules have multiple versions such
    | as the size rules. Feel free to tweak each of these messages here.
    |
    */

    'accepted'             => 'El atributo :attribute must be accepted.',
    'active_url'           => 'El atributo :attribute is not a valid URL.',
    'after'                => 'El atributo :attribute must be a date after :date.',
    'after_or_equal'       => 'El atributo :attribute must be a date after or equal to :date.',
    'alpha'                => 'El atributo :attribute may only contain letters.',
    'alpha_dash'           => 'El atributo :attribute may only contain letters, numbers, dashes and underscores.',
    'alpha_num'            => 'El atributo :attribute may only contain letters and numbers.',
    'array'                => 'El atributo :attribute must be an array.',
    'before'               => 'El atributo :attribute must be a date before :date.',
    'before_or_equal'      => 'El atributo :attribute tiene que ser menor o igual a :date.',
    'between'              => [
        'numeric' => 'El atributo :attribute must be between :min and :max.',
        'file'    => 'El atributo :attribute must be between :min and :max kilobytes.',
        'string'  => 'El atributo :attribute must be between :min and :max characters.',
        'array'   => 'El atributo :attribute must have between :min and :max items.',
    ],
    'boolean'              => 'El atributo :attribute field must be true or false.',
    'confirmed'            => 'El atributo :attribute confirmation does not match.',
    'date'                 => 'El atributo :attribute is not a valid date.',
    'date_format'          => 'El atributo :attribute does not match the format :format.',
    'different'            => 'El atributo :attribute and :other must be different.',
    'digits'               => 'El atributo :attribute must be :digits digits.',
    'digits_between'       => 'El atributo :attribute must be between :min and :max digits.',
    'dimensions'           => 'El atributo :attribute has invalid image dimensions.',
    'distinct'             => 'El atributo :attribute field has a duplicate value.',
    'email'                => 'El atributo :attribute must be a valid email address.',
    'exists'               => 'El atributo selected :attribute is invalid.',
    'file'                 => 'El atributo :attribute must be a file.',
    'filled'               => 'El atributo :attribute field must have a value.',
    'gt'                   => [
        'numeric' => 'El atributo :attribute must be greater than :value.',
        'file'    => 'El atributo :attribute must be greater than :value kilobytes.',
        'string'  => 'El atributo :attribute must be greater than :value characters.',
        'array'   => 'El atributo :attribute must have more than :value items.',
    ],
    'gte'                  => [
        'numeric' => 'El atributo :attribute must be greater than or equal :value.',
        'file'    => 'El atributo :attribute must be greater than or equal :value kilobytes.',
        'string'  => 'El atributo :attribute must be greater than or equal :value characters.',
        'array'   => 'El atributo :attribute must have :value items or more.',
    ],
    'image'                => 'El atributo :attribute must be an image.',
    'in'                   => 'El atributo selected :attribute is invalid.',
    'in_array'             => 'El atributo :attribute field does not exist in :other.',
    'integer'              => 'El atributo :attribute must be an integer.',
    'ip'                   => 'El atributo :attribute must be a valid IP address.',
    'ipv4'                 => 'El atributo :attribute must be a valid IPv4 address.',
    'ipv6'                 => 'El atributo :attribute must be a valid IPv6 address.',
    'json'                 => 'El atributo :attribute must be a valid JSON string.',
    'lt'                   => [
        'numeric' => 'El atributo :attribute must be less than :value.',
        'file'    => 'El atributo :attribute must be less than :value kilobytes.',
        'string'  => 'El atributo :attribute must be less than :value characters.',
        'array'   => 'El atributo :attribute must have less than :value items.',
    ],
    'lte'                  => [
        'numeric' => 'El atributo :attribute must be less than or equal :value.',
        'file'    => 'El atributo :attribute must be less than or equal :value kilobytes.',
        'string'  => 'El atributo :attribute must be less than or equal :value characters.',
        'array'   => 'El atributo :attribute must not have more than :value items.',
    ],
    'max'                  => [
        'numeric' => 'El atributo :attribute may not be greater than :max.',
        'file'    => 'El atributo :attribute may not be greater than :max kilobytes.',
        'string'  => 'El atributo :attribute may not be greater than :max characters.',
        'array'   => 'El atributo :attribute may not have more than :max items.',
    ],
    'mimes'                => 'El atributo :attribute must be a file of type: :values.',
    'mimetypes'            => 'El atributo :attribute must be a file of type: :values.',
    'min'                  => [
        'numeric' => 'El atributo :attribute must be at least :min.',
        'file'    => 'El atributo :attribute must be at least :min kilobytes.',
        'string'  => 'El atributo :attribute must be at least :min characters.',
        'array'   => 'El atributo :attribute must have at least :min items.',
    ],
    'not_in'               => 'El atributo selected :attribute is invalid.',
    'not_regex'            => 'El atributo :attribute format is invalid.',
    'numeric'              => 'El atributo :attribute must be a number.',
    'present'              => 'El atributo :attribute field must be present.',
    'regex'                => 'El atributo :attribute format is invalid.',
    'required'             => 'El atributo :attribute field is required.',
    'required_if'          => 'El atributo :attribute field is required when :other is :value.',
    'required_unless'      => 'El atributo :attribute field is required unless :other is in :values.',
    'required_with'        => 'El atributo :attribute field is required when :values is present.',
    'required_with_all'    => 'El atributo :attribute field is required when :values is present.',
    'required_without'     => 'El atributo :attribute field is required when :values is not present.',
    'required_without_all' => 'El atributo :attribute field is required when none of :values are present.',
    'same'                 => 'El atributo :attribute and :other must match.',
    'size'                 => [
        'numeric' => 'El atributo :attribute must be :size.',
        'file'    => 'El atributo :attribute must be :size kilobytes.',
        'string'  => 'El atributo :attribute must be :size characters.',
        'array'   => 'El atributo :attribute must contain :size items.',
    ],
    'string'               => 'El atributo :attribute must be a string.',
    'timezone'             => 'El atributo :attribute must be a valid zone.',
    'unique'               => 'El atributo :attribute has already been taken.',
    'uploaded'             => 'El atributo :attribute failed to upload.',
    'url'                  => 'El atributo :attribute format is invalid.',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using the
    | convention "attribute.rule" to name the lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'custom-message',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | The following language lines are used to swap attribute place-holders
    | with something more reader friendly such as E-Mail Address instead
    | of "email". This simply helps us make messages a little cleaner.
    |
    */

    'attributes' => [],

];
