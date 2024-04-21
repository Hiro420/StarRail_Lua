local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherCommonBossIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MonsterExcelTable
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.MonsterTemplateExcelTable
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L4_2 = A0_2._click_monster_item
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.button
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.MonsterID
  A0_2._monster_id = L2_2
  L2_2 = A1_2.Level
  A0_2._level = L2_2
  L2_2 = A1_2.Row
  A0_2._monster_row = L2_2
  L2_2 = A1_2.TemplateRow
  A0_2._monster_template_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._do_set_up_view
  L2_2(L3_2)
end
L0_1.setup_view_by_monster_data = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._monster_id = A1_2
  A0_2._level = A2_2
  L3_2 = L1_1.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A0_2._monster_row = L3_2
  L3_2 = L2_1.GetData
  L4_2 = A0_2._monster_row
  L4_2 = L4_2.MonsterTemplateID
  L3_2 = L3_2(L4_2)
  A0_2._monster_template_row = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._do_set_up_view
  L3_2(L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_interactable = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._on_click_item = nil
  A0_2._click_event_listner = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_icon
  L3_2 = A0_2._monster_template_row
  L3_2 = L3_2.IconPath
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_level
  L3_2 = A0_2._level
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AetherDivideMonsterExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._monster_id
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.setup_aether_spirit_type
    L4_2 = L1_2.MonsterType
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.elite_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._monster_template_row
  L2_2(L3_2, L4_2)
end
L0_1._do_set_up_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_monster
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_icon = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_level
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_level = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.elite_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_elite_icon = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._panel_nature_list
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.NodeListView
    L5_2 = G
    L5_2 = L5_2.NodeListViewBinder
    L6_2 = "Ui.AetherDivide.Common.AetherCommonSpiritTypePanel"
    L7_2 = "Ui.AetherDivide.Common.AetherCommonSpiritTypePanelBinder"
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    A0_2._panel_nature_list = L2_2
    L2_2 = A0_2._panel_nature_list
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_weak_point
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._panel_nature_list
    L3_2 = L2_2
    L2_2 = L2_2.set_use_panel_prefab_path
    L2_2(L3_2)
  end
  L2_2 = {}
  L3_2 = A1_2
  L2_2[1] = L3_2
  L3_2 = A0_2._panel_nature_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_aether_spirit_type = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_btn_selected = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._click_event_listner = A1_2
  A0_2._on_click_item = A2_2
  A0_2._monster_index = A3_2
end
L0_1.bind_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_click_item
  if nil ~= L1_2 then
    L1_2 = A0_2._on_click_item
    L2_2 = A0_2._click_event_listner
    L3_2 = A0_2._monster_id
    L4_2 = A0_2._monster_index
    L1_2(L2_2, L3_2, L4_2)
    return
  end
end
L0_1._click_monster_item = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  return L1_2
end
L0_1.get_root_btn = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  return L1_2
end
L0_1.get_navi_btn = L3_1
return L0_1
