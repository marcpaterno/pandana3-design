digraph {
  define(`cut_node', `[shape=oval, color=red, label="Cut\n$1"]')
  define(`and_node', `[shape=oval, color=red, label="And\n$1"]')
  define(`or_node', `[shape=oval, color=red, label="Or\n$1"]')
  define(`filter_node', `[shape=rect, color=blue, label="Filter\n$1"]')
  define(`db_node', `[color=green, style=filled, label="DB\n$1"]')
  F_1 filter_node(f1)
  F_2 filter_node(f2)
  DB_1 db_node(db1)
  C_c cut_node(cc)
  C_a cut_node(ca)
  C_b cut_node(cb)
  V_1 [label="Var\nv1"]
  V_2 [label="Var\nv2"]
  and_1 and_node(and_1)
  and_2 and_node(and2)
  or1 or_node(or1)
  C_a -> and_1
  C_b -> and_1
  and_1 -> or1
  and_1 -> and_2
  C_c -> or1
  C_c -> and_2
  or1 -> F_1
  DB_1 -> F_1
  and_2 -> F_2
  DB_1 -> F_2
  F_1 -> V_1
  F_2 -> V_2
}

