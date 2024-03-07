local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleAvatarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleAvatarInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideAvatarDetailTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideAvatarDetailTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDividePassiveSkillTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDividePassiveSkillTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleAvatarSkillTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleAvatarSkillTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAetherDivideAvatarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
L2_1 = 1
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1.select_prev = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1.select_next = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2._is_can_to_zoom
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1._is_can_to_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._available
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = nil
  ::lbl_11::
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_tab
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_available
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_bg
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1.reset_tab = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._entity = A1_2
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.TurnBasedAbilityComponent
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._ability = L2_2
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AvatarDataComponent
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._avatar_data_cmpt = L2_2
  L2_2 = A0_2._avatar_data_cmpt
  L2_2 = L2_2.AvatarRowData
  A0_2._avatar_data = L2_2
end
L0_1._refresh_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._detail_tab
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._ability
  L4_2 = A0_2._avatar_data_cmpt
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._detail_tab
  L2_2 = L1_2
  L1_2 = L1_2.set_left_border
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_tab
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._passive_skill_tab
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data_cmpt
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._passive_skill_tab
  L2_2 = L1_2
  L1_2 = L1_2.set_right_border
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.AvatarData
  L1_2 = L1_2.IsPlotTrialPlayer
  L1_2 = not L1_2
  A0_2._available = L1_2
  L1_2 = A0_2._detail_tab
  L2_2 = L1_2
  L1_2 = L1_2.show_detail_info
  L3_2 = A0_2._available
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._available
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._available
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.reset_tab
    L1_2(L2_2)
  end
end
L0_1._setup_available = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_bg = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tab
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_avatar_info_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_items
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._init_tab = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleAetherDivideAvatarDetailTabItem
  L4_2 = G
  L4_2 = L4_2.BattleAetherDivideAvatarDetailTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._detail_tab = L1_2
  L1_2 = A0_2._detail_tab
  L2_2 = L1_2
  L1_2 = L1_2.sync_loadto
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_avatar_detail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._detail_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleAvatarSkillTabItem
  L4_2 = G
  L4_2 = L4_2.BattleAvatarSkillTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._skill_tab = L1_2
  L1_2 = A0_2._skill_tab
  L2_2 = L1_2
  L1_2 = L1_2.sync_loadto
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_detail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._skill_tab
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_tab
  L2_2 = L1_2
  L1_2 = L1_2.set_skill_type_filter
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AttackType
  L4_2 = L4_2.Maze
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_tab
  L2_2 = L1_2
  L1_2 = L1_2.set_skill_tab_prefab_index
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleAetherDividePassiveSkillTabItem
  L4_2 = G
  L4_2 = L4_2.BattleAetherDividePassiveSkillTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._passive_skill_tab = L1_2
  L1_2 = A0_2._passive_skill_tab
  L2_2 = L1_2
  L1_2 = L1_2.sync_loadto
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_passive_skill
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._passive_skill_tab
  L1_2(L2_2, L3_2)
end
L0_1._init_tab_items = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  A0_2._tab_index = A1_2
end
L0_1._on_tab_change = L3_1
return L0_1
