local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideTeamEditPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.spirit_panel_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.spirit_panel_list
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.set_auto_trigger_click_on_navigation
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.spirit_panel_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.spirit_panel_list
    L6_2 = L6_2[L5_2]
    L7_2 = A1_2[L5_2]
    L9_2 = L6_2
    L8_2 = L6_2.setup_view
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.spirit_panel_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.spirit_panel_list
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.play_fadein_anim
    L6_2(L7_2)
  end
end
L0_1.play_fadein = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.spirit_panel_list
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.play_select_anim
    L3_2(L4_2)
  end
end
L0_1.play_select_anim = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.spirit_panel_list
  L3_2 = L3_2[A2_2]
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.setup_view
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_view_by_index = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A0_2
  L3_2 = A0_2.set_all_interactable
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.spirit_panel_list
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.spirit_panel_list
    L7_2 = L7_2[L6_2]
    L9_2 = L7_2
    L8_2 = L7_2.register_callback
    L10_2 = A1_2
    L11_2 = A2_2
    L12_2 = L6_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
end
L0_1.register_member_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.spirit_panel_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.spirit_panel_list
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.set_interactable
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.set_all_interactable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.spirit_panel_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_member_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = A1_2 == L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.set_invisible_except = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.spirit_panel_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.spirit_panel_list
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.set_selected
    L9_2 = A1_2 == L5_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.set_selected_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.spirit_panel_list
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
return L0_1
