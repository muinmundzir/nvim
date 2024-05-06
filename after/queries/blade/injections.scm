((text) @injection.content
    (#not-has-ancestor? @injection.content "envoy")
    (#set! injection.combined)
    (#set! injection.language php))

((text) @injection.content
    (#has-ancestor? @injection.content "envoy")
    (#set! injection.combined)
    (#set! injection.language bash))


((php_only) @injection.content
    (#set! injection.combined)
    (#set! injection.language php_only))
((parameter) @injection.content
    (#set! injection.language php_only))

(scoped_call_expression
 scope: (name) @scope (#eq? @scope "DB")
 name: (name) @name (#any-of? @name "insert" "select")
 (arguments
  (argument
   (string
    ((string_value) @injection.content
     (#set! injection.language sql)
    )
   )
  )
 )
)
