local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.MonsterExcelTable
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MonsterTemplateExcelTable
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "CommonBossIconPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  A0_2._is_auto_click = false
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  if A1_2 == nil then
    A0_2._is_auto_click = true
  else
    A0_2._is_auto_click = A1_2
  end
end
L2_1.setup_auto_click = L3_1
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
    L0_3 = A0_2._is_auto_click
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._click_monster_item
      L0_3(L1_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.button
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  A0_2._use_aether_mode = false
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._monster_id = A1_2
  A0_2._level = A2_2
  L4_2 = A3_2 or L4_2
  if not A3_2 then
    L4_2 = false
  end
  A0_2._is_boss = L4_2
  L4_2 = L0_1.GetData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A0_2._monster_row = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_view
  L4_2(L5_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2.MonsterID
  A0_2._monster_id = L3_2
  L3_2 = A1_2.Level
  A0_2._level = L3_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._is_boss = L3_2
  L3_2 = A1_2.Row
  if not L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MonsterExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._monster_id
    L3_2 = L3_2(L4_2)
  end
  A0_2._monster_row = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
end
L2_1.setup_view_by_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._click_monster_item
  L1_2(L2_2)
end
L2_1.trigger_click = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._level
  return L1_2
end
L2_1.get_monster_level = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rank_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_level
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_nature
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2(L2_2)
end
L2_1._refresh_view = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A2_2 or nil
  if not A2_2 then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.index_of_item
    L5_2 = A1_2
    L6_2 = A0_2._monster_id
    L4_2 = L4_2(L5_2, L6_2)
  end
  A0_2._index = L4_2
  L4_2 = {}
  A0_2._fellow_monster_datas = L4_2
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if A3_2 ~= nil then
      L9_2 = A3_2[L7_2]
      if L9_2 then
        goto lbl_22
      end
    end
    L9_2 = A0_2._level
    ::lbl_22::
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.MonsterData
    L11_2 = L8_2
    L12_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = A0_2._fellow_monster_datas
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
end
L2_1.setup_fellow_monsters = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._index = A2_2
  A0_2._fellow_monster_datas = A1_2
end
L2_1.setup_fellow_by_monster_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.UI
    L1_2 = L1_2.LayoutRebuilder
    L1_2 = L1_2.ForceRebuildLayoutImmediate
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_weak_point
    L1_2(L2_2)
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.UI
    L1_2 = L1_2.LayoutRebuilder
    L1_2 = L1_2.ForceRebuildLayoutImmediate
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_info_panel
    L1_2(L2_2)
  end
end
L2_1.rebuild_info_layout = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Monster.MonsterTipsDialog"
  L3_2 = A0_2._fellow_monster_datas
  L4_2 = A0_2._index
  L1_2(L2_2, L3_2, L4_2)
end
L2_1.show_monster_tips_dialog = L3_1
function L3_1(A0_2, A1_2)
  A0_2._use_aether_mode = A1_2
end
L2_1.enable_aether_mode = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._on_click_item = nil
  A0_2._click_event_listner = nil
  A0_2._monster_id = nil
  A0_2._monster_row = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.GetData
  L2_2 = A0_2._monster_row
  L2_2 = L2_2.MonsterTemplateID
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_monster
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._setup_icon = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.GetData
  L2_2 = A0_2._monster_row
  L2_2 = L2_2.MonsterTemplateID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.elite_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L2_1._setup_rank_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._level
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_level
    L1_2 = L1_2.transform
    L1_2 = L1_2.parent
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._level
  L1_2(L2_2, L3_2)
end
L2_1._setup_level = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._use_aether_mode
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_aether_property
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_weak_point
    L1_2(L2_2)
  end
end
L2_1._setup_nature = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._panel_nature_list
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.NodeListView
    L4_2 = G
    L4_2 = L4_2.NodeListViewBinder
    L5_2 = "Ui.Monster.MonsterDamageTypePanel"
    L6_2 = "Ui.Monster.MonsterDamageTypePanelBinder"
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    A0_2._panel_nature_list = L1_2
    L1_2 = A0_2._panel_nature_list
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_nature
    L1_2(L2_2, L3_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureNpcMonsterWeaknessHelp
  L1_2 = L1_2.GetWeaknessForBattleMonster
  L2_2 = A0_2._monster_id
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = L1_2[L6_2]
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2._panel_nature_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L2_1._setup_weak_point = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._panel_nature_list
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.NodeListView
    L4_2 = G
    L4_2 = L4_2.NodeListViewBinder
    L5_2 = "Ui.AetherDivide.Common.AetherCommonSpiritTypePanel"
    L6_2 = "Ui.AetherDivide.Common.AetherCommonSpiritTypePanelBinder"
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    A0_2._panel_nature_list = L1_2
    L1_2 = A0_2._panel_nature_list
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_nature
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._panel_nature_list
    L2_2 = L1_2
    L1_2 = L1_2.set_use_panel_prefab_path
    L1_2(L2_2)
  end
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AetherDivideMonsterExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._monster_id
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = #L1_2
    L3_2 = L3_2 + 1
    L4_2 = L2_2.MonsterType
    L1_2[L3_2] = L4_2
  end
  L3_2 = A0_2._panel_nature_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L2_1._setup_aether_property = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_btn_selected = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._click_event_listner = A1_2
  A0_2._on_click_item = A2_2
  A0_2._monster_index = A3_2
end
L2_1.bind_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.shader_grading
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetEnabled
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_hide_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._on_click_item
  if nil ~= L1_2 then
    L1_2 = A0_2._on_click_item
    L2_2 = A0_2._click_event_listner
    L3_2 = A0_2._monster_id
    L4_2 = A0_2._monster_index
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_monster_tips_dialog
  L1_2(L2_2)
end
L2_1._click_monster_item = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  return L1_2
end
L2_1.get_root_btn = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  return L1_2
end
L2_1.get_navi_btn = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_first_selected_object = L3_1
return L2_1
