local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterFloorListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_wave_list
  L2_2 = L1_2
  L1_2 = L1_2.register_panel_setup_callback
  L3_2 = A0_2._on_monster_wave_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._monster_waves = A1_2
  A0_2._index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_waves
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_monster_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_boss_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_boss_icon
  L5_2 = A1_2.TemplateRow
  L5_2 = L5_2.RoundIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_boss_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Row
  L4_2 = L4_2.MonsterName
  L2_2(L3_2, L4_2)
end
L0_1.show_boss_info = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_show_wave_index = A1_2
end
L0_1.show_wave_index = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.monster_wave_list
  L3_2 = L2_2
  L2_2 = L2_2.get_panel_by_index
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.click_monster_panel_by_idx
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.click_monster_panel_by_idx = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._monster_waves
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.monster_wave_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = #A1_2
    L8_2 = L8_2 + 1
    L10_2 = L7_2
    L9_2 = L7_2.get_navi_btn_list
    L9_2 = L9_2(L10_2)
    A1_2[L8_2] = L9_2
  end
end
L0_1.add_navi_btns_to = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_wave_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._monster_waves
  L1_2(L2_2, L3_2)
end
L0_1._refresh_waves = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.register_monster_click_callback
  L5_2 = A0_2._callback
  L6_2 = A0_2._callback_self
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._monster_waves
  L3_2 = L3_2[A2_2]
  L5_2 = A1_2
  L4_2 = A1_2.show_boss_bg
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._is_show_wave_index
  if not L4_2 then
    L5_2 = A1_2
    L4_2 = A1_2.hide_wave_index
    L4_2(L5_2)
  end
  L5_2 = A1_2
  L4_2 = A1_2.setup_view
  L6_2 = L3_2
  L7_2 = A2_2
  L8_2 = A0_2._index
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_monster_wave_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_wave_list
  L2_2 = L1_2
  L1_2 = L1_2.get_panel_by_index
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L0_1.get_first_selected_object = L1_1
return L0_1
