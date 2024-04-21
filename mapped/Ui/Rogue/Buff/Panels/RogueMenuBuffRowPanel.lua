local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMenuBuffRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._extra_effect_id_table = nil
  A0_2._is_selected = false
  A0_2._is_expand = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._is_selected
    if L0_3 == false then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_btn_click
      L0_3(L1_3)
    end
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_root
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_root
      return L1_2
    end
  end
end
L0_1.get_navi_btn = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._extra_effect_id_table
  L2_2 = L2_2 ~= nil
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = A0_2._is_expand
    L3_2 = not L3_2
  end
  L4_2 = L2_2 or L4_2
  if L2_2 then
    L4_2 = A0_2._is_expand
  end
  L6_2 = A0_2
  L5_2 = A0_2._setup_up_down_arrow
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._callback_listener = A1_2
  A0_2._click_callback = A2_2
  A0_2._click_index = A3_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L4_2 = A1_2
  L3_2 = A1_2.GetExtraEffectRowIDs
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._extra_effect_id_table = L2_2
  L3_2 = A1_2
  L2_2 = A1_2.GetMazeBuffRow
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_buff_icon
  L6_2 = L2_2.BuffIcon
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_buff_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.BuffName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_buff_desc
  L4_2 = L3_2
  L3_2 = L3_2.setup_desc
  L5_2 = L2_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2
  L3_2 = A1_2.GetRogueBuffRarity
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_buff_rarity
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.RogueUtils
  L4_2 = L4_2.setup_rogue_buff_bg
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_bg_normal_table
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_bg_up_table
  L7_2 = L3_2
  L8_2 = L2_2.Lv
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_update
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2.Lv
  L6_2 = 1 < L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_endless_mark
  L5_2 = L4_2
  L4_2 = L4_2.setup_buff_view
  L6_2 = A1_2.BuffID
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2 ~= nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if not L3_2 then
    return
  end
  if A2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_title
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_title
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = false
  L3_2 = A0_2._is_selected
  if L3_2 == true then
    L2_2 = A1_2 == true
  else
    L2_2 = A1_2
    A0_2._is_expand = A1_2
  end
  A0_2._is_selected = A1_2
  L3_2 = A0_2._extra_effect_id_table
  L3_2 = L3_2 ~= nil
  if L2_2 and L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.buff_extra_effect_list
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A0_2._extra_effect_id_table
    L7_2 = nil
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.buff_extra_effect_list
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = {}
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_arrow_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = not L2_2
  end
  L5_2 = L3_2 or L5_2
  if L3_2 then
    L5_2 = L2_2
  end
  L7_2 = A0_2
  L6_2 = A0_2._setup_up_down_arrow
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_root
  L7_2 = L6_2
  L6_2 = L6_2.SetChecked
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
end
L0_1.setup_selected = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_up_arrow
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2 and L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_down_arrow
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2 and L6_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_up_down_arrow = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_expand
  L1_2 = not L1_2
  A0_2._is_expand = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._callback_listener
  if L1_2 ~= nil then
    L1_2 = A0_2._click_callback
    if L1_2 ~= nil then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
  L1_2 = A0_2._click_callback
  L2_2 = A0_2._callback_listener
  L3_2 = A0_2._click_index
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_click = L1_1
return L0_1
