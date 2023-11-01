<?php

return [
    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules have multiple versions such
    | as the size rules. Feel free to tweak each of these messages.
    |
    */

    'accepted' => '字段 :attribute 必须被接受。',
    'active_url' => '字段 :attribute 不是一个有效的 URL。',
    'after' => '字段 :attribute 必须是 :date 之后的日期。',
    'after_or_equal' => '字段 :attribute 必须是 :date 之后或等于 :date 的日期。',
    'alpha' => '字段 :attribute 只能包含字母。',
    'alpha_dash' => '字段 :attribute 只能包含字母、数字和破折号。',
    'alpha_num' => '字段 :attribute 只能包含字母和数字。',
    'array' => '字段 :attribute 必须是一个数组。',
    'before' => '字段 :attribute 必须是 :date 之前的日期。',
    'before_or_equal' => '字段 :attribute 必须是 :date 之前或等于 :date 的日期。',
    'between' => [
    	'numeric' => '字段 :attribute 的值必须介于 :min 和 :max 之间。',
    	'file' => '字段 :attribute 的文件大小必须介于 :min 和 :max 千字节之间。',
    	'string' => '字段 :attribute 的文本长度必须介于 :min 和 :max 个字符之间。',
    	'array' => '字段 :attribute 的数组元素个数必须介于 :min 和 :max 之间。',
    ],
    'boolean' => '字段 :attribute 必须是 true 或 false。',
    'confirmed' => '字段 :attribute 的确认字段不匹配。',
    'date' => '字段 :attribute 不是一个有效的日期。',
    'date_equals' => '字段 :attribute 必须等于 :date。',
    'date_format' => '字段 :attribute 不符合格式 :format。',
    'different' => '字段 :attribute 和 :other 必须不同。',
    'digits' => '字段 :attribute 必须是 :digits 位数。',
    'digits_between' => '字段 :attribute 必须介于 :min 和 :max 位数之间。',
    'dimensions' => '字段 :attribute 的图像尺寸无效。',
    'distinct' => '字段 :attribute 的值重复。',
    'email' => '字段 :attribute 必须是一个有效的电子邮件地址。',
    'ends_with' => '字段 :attribute 必须以以下值之一结尾：:values',
    'exists' => '选择的字段 :attribute 无效。',
    'file' => '字段 :attribute 必须是一个文件。',
    'filled' => '字段 :attribute 必须有一个值。',
    'gt' => [
    	'numeric' => '字段 :attribute 的值必须大于 :value。',
    	'file' => '字段 :attribute 的文件大小必须大于 :value 千字节。',
    	'string' => '字段 :attribute 的文本长度必须大于 :value 个字符。',
    	'array' => '字段 :attribute 的数组元素个数必须大于 :value。',
    ],
    'gte' => [
    	'numeric' => '字段 :attribute 的值必须大于或等于 :value。',
    	'file' => '字段 :attribute 的文件大小必须大于或等于 :value 千字节。',
    	'string' => '字段 :attribute 的文本长度必须至少为 :value 个字符。',
    	'array' => '字段 :attribute 的数组元素个数必须至少为 :value。',
    ],
    'image' => '字段 :attribute 必须是一个图像。',
    'in' => '字段 :attribute 无效。',
    'in_array' => '字段 :attribute 不存在于 :other 中。',
    'integer' => '字段 :attribute 必须是一个整数。',
    'ip' => '字段 :attribute 必须是一个有效的 IP 地址。',
    'ipv4' => '字段 :attribute 必须是一个有效的 IPv4 地址。',
    'ipv6' => '字段 :attribute 必须是一个有效的 IPv6 地址。',
    'json' => '字段 :attribute 必须是一个有效的 JSON 文档。',
    'lt' => [
    	'numeric' => '字段 :attribute 的值必须小于 :value。',
    	'file' => '字段 :attribute 的文件大小必须小于 :value 千字节。',
    	'string' => '字段 :attribute 的文本长度必须小于 :value 个字符。',
    	'array' => '字段 :attribute 的数组元素个数必须小于 :value。',
    ],
    'lte' => [
    	'numeric' => '字段 :attribute 的值必须小于或等于 :value。',
    	'file' => '字段 :attribute 的文件大小必须小于或等于 :value 千字节。',
    	'string' => '字段 :attribute 的文本长度不能超过 :value 个字符。',
    	'array' => '字段 :attribute 的数组元素个数不能超过 :value。',
    ],
    'max' => [
    	'numeric' => '字段 :attribute 的值不能大于 :max。',
    	'file' => '字段 :attribute 的文件大小不能超过 :max 千字节。',
    	'string' => '字段 :attribute 的文本长度不能超过 :max 个字符。',
    	'array' => '字段 :attribute 的数组元素个数不能超过 :max。',
    ],
    'mimes' => '字段 :attribute 必须是类型为 : :values 的文件。',
    'mimetypes' => '字段 :attribute 必须是类型为 : :values 的文件。',
    'min' => [
    	'numeric' => '字段 :attribute 的值必须大于或等于 :min。',
    	'file' => '字段 :attribute 的文件大小必须大于 :min 千字节。',
    	'string' => '字段 :attribute 的文本长度必须至少为 :min 个字符。',
    	'array' => '字段 :attribute 的数组元素个数必须至少为 :min。',
    ],
    'multiple_of' => '字段 :attribute 的值必须是 :value 的倍数',
    'not_in' => '所选字段 :attribute 无效。',
    'not_regex' => '字段 :attribute 的格式无效。',
    'numeric' => '字段 :attribute 必须是一个数字。',
    'password' => '密码不正确',
    'present' => '字段 :attribute 必须存在。',
    'regex' => '字段 :attribute 的格式无效。',
    'required' => '字段 :attribute 是必填的。',
    'required_if' => '当字段 :other 的值为 :value 时，字段 :attribute 是必填的。',
    'required_unless' => '除非字段 :other 的值为 :values，否则字段 :attribute 是必填的。',
    'required_with' => '当 :values 存在时，字段 :attribute 是必填的。',
    'required_with_all' => '当 :values 都存在时，字段 :attribute 是必填的。',
    'required_without' => '当 :values 不存在时，字段 :attribute 是必填的。',
    'required_without_all' => '当 :values 都不存在时，字段 :attribute 是必填的。',
    'same' => '字段 :attribute 和 :other 必须相同。',
    'size' => [
    	'numeric' => '字段 :attribute 的值必须为 :size。',
    	'file' => '字段 :attribute 的文件大小必须为 :size 千字节。',
    	'string' => '字段 :attribute 的文本长度必须为 :size 个字符。',
    	'array' => '字段 :attribute 的数组元素个数必须为 :size。',
    ],
    'starts_with' => '字段 :attribute 必须以以下值之一开头: :values',
    'string' => '字段 :attribute 必须是一个字符串。',
    'timezone' => '字段 :attribute 必须是一个有效的时区。',
    'unique' => '字段 :attribute 的值已经被使用。',
    'uploaded' => '无法上传字段 :attribute 的文件。',
    'url' => '字段 :attribute 的URL格式无效。',
    'uuid' => '字段 :attribute 必须是一个有效的UUID',

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
    | The following language lines are used to swap our attribute placeholder
    | with something more reader friendly such as "E-Mail Address" instead
    | of "email". This simply helps us make our message more expressive.
    |
    */

    'attributes' => [
        'name' => '姓名',
        'username' => "用户名",
        'email' => '邮件地址',
        'first_name' => '名字',
        'last_name' => '姓氏',
        'password' => '密码',
        'password_confirmation' => '确认密码',
        'current_password' => '当前密码',
        'city' => '城市',
        'country' => '国家',
        'address' => '地址',
        'phone' => '电话',
        'mobile' => '手机号码',
        'age' => '年龄',
        'sex' => '性别',
        'gender' => '性别',
        'day' => '日',
        'month' => '月',
        'year' => '年',
        'hour' => '小时',
        'minute' => '分钟',
        'second' => '秒',
        'title' => '标题',
        'content' => '内容',
        'description' => '描述',
        'excerpt' => '摘要',
        'date' => '日期',
        'time' => '时间',
        'available' => '可用',
        'size' => '大小',
    ],
];
