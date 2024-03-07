local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FarmEnvBuffPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._config_row = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._has_env_buff
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.env_buff_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if not L2_2 then
    return
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A0_2._config_row
  L4_2 = L4_2.ParamList
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.env_buff_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._config_row
  L6_2 = L6_2.BuffDesc
  L7_2 = table
  L7_2 = L7_2.unpack
  L8_2 = L3_2
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._config_row
  L1_2 = L1_2.BuffDesc
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextID
  L2_2 = L2_2.empty
  L1_2 = L1_2 ~= L2_2
  return L1_2
end
L0_1._has_env_buff = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._has_env_buff
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.env_buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.update_hint_eff
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.env_buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.update_hint_eff
    L4_2 = false
    L2_2(L3_2, L4_2)
    A0_2._wait_buff_hint = A1_2
  end
end
L0_1.try_show_env_buff_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._wait_buff_hint
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.env_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.update_hint_eff
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_first_child_dialog_close = L1_1
return L0_1
