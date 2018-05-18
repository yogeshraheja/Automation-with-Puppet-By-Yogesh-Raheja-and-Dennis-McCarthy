$top_scope_variable = "Hello from Yogesh and Dennis at Top Scope"
node "yd1papp01.thinknyx.com" {
  $node_scope_variable = "Hello from us at Node Scope!"
  notify {"Message from: $node_scope_variable":}
  notify {"Top scope: $::top_scope_variable":}
}
notify {"Message from top scope: $node_scope_variable":}
