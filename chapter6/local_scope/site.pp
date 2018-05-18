$top_scope_variable = "Hello from Yogesh and Dennis at Top Scope"
node "yd1papp01.thinknyx.com" {
  $node_scope_variable = "Hello from us at Node Scope!"
  include local_scope_variable
  notify {"Message from node scope: $local_variable":}
}
notify {"Message from top scope: $local_variable":}
