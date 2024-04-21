local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterIconRowPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.MonsterExcelTable
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MonsterTemplateExcelTable
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AttackDamageType
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "MonsterIconRowPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
end
L3_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  A0_2._monster_id = A1_2
  L2_2 = L0_1.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1.GetData
  L4_2 = L2_2.MonsterTemplateID
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_monster
  L7_2 = L3_2.IconPath
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_weak_list
  L6_2 = L2_2.StanceWeakList
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2.button
  L7_2 = A0_2._click_monster_item
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L2_2.StanceWeakList
  L5_2 = {}
  L6_2 = 0
  L7_2 = L4_2.Length
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = {}
    L11_2 = L4_2[L9_2]
    L10_2.attack_damage_type = L11_2
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L5_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_weak_point_list
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._on_click_item = nil
  A0_2._click_event_listner = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
end
L3_1._set_weak_list = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_light
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_dark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L3_1.set_selected = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._click_event_listner = A1_2
  A0_2._on_click_item = A2_2
  A0_2._monster_index = A3_2
end
L3_1.bind_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_click_item
  if nil ~= L1_2 then
    L1_2 = A0_2._on_click_item
    L2_2 = A0_2._click_event_listner
    L3_2 = A0_2._monster_id
    L4_2 = A0_2._monster_index
    L1_2(L2_2, L3_2, L4_2)
  end
end
L3_1._click_monster_item = L4_1
return L3_1
