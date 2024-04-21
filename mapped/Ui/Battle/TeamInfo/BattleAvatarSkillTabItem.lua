local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarMainSkillRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarMainSkillRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarSubSkillRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarSubSkillRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarExtraDescListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarExtraDescListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAvatarSkillTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_AvatarDialogV2_Skill"
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AttackType
L3_1 = L3_1.Normal
L2_1[L3_1] = 1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AttackType
L3_1 = L3_1.BPSkill
L2_1[L3_1] = 2
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AttackType
L3_1 = L3_1.Ultra
L2_1[L3_1] = 3
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AttackType
L3_1 = L3_1.Unknown
L2_1[L3_1] = 4
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AttackType
L3_1 = L3_1.Maze
L2_1[L3_1] = 5
L3_1 = {}
L3_1.None = 0
L3_1.MainSkillRow = 1
L3_1.SubSkillRow = 2
L3_1.ExtraDesc = 3
L4_1 = 0
function L5_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._extra_desc_table = L1_2
  A0_2._is_avatar_change = true
  L1_2 = {}
  A0_2._attack_type_filter = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_right_round
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_right_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_right_border = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
end
L0_1._is_can_to_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2, A1_2)
  A0_2._attack_type_filter = A1_2
end
L0_1.set_skill_type_filter = L5_1
function L5_1(A0_2, A1_2)
  A0_2._tab_prefab_index = A1_2
end
L0_1.set_skill_tab_prefab_index = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._is_avatar_change = true
  A0_2._show_simple_desc = A2_2
  A0_2._avatar_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._update_skill_list
  L3_2(L4_2)
  L3_2 = A0_2._skill_list
  L3_2 = #L3_2
  if 0 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_skill_click
    L5_2 = A0_2._skill_list
    L5_2 = L5_2[1]
    L5_2 = L5_2[1]
    L5_2 = L5_2.SkillID
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skill_info
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_skill_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_skill_info_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_proper_noun
  L4_2 = A0_2._on_btn_btn_proper_noun_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_skill_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_skill_info_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  A0_2._is_avatar_change = false
end
L0_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_avatar_change
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_enter_zoom
    L3_2 = NavigationZoneType
    L3_2 = L3_2.Zone1
    L1_2(L2_2, L3_2)
  end
end
L0_1._init_ui_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  A0_2._avatar_data = nil
  A0_2._skill_list = nil
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_skill
  L1_2(L2_2)
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.SkillRowDatas
  L2_2 = {}
  A0_2._skill_list = L2_2
  L2_2 = {}
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 0
  L5_2 = -1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L8_2 = L7_2.SkillID
    if L8_2 ~= 0 then
      L9_2 = A0_2
      L8_2 = A0_2._is_skill_need_to_show
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = L7_2.AttackType
        L8_2 = L2_1[L8_2]
        L9_2 = L2_2[L8_2]
        if not L9_2 then
          L9_2 = {}
          L2_2[L8_2] = L9_2
        end
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L2_2[L8_2]
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._skill_list
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._sort_skill_list
  L3_2(L4_2)
end
L0_1._update_skill_list = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.Row
  L2_2 = L2_2.HideInUI
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = pairs
  L3_2 = L2_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A1_2.AttackType
    if L5_2 == L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2._is_skill_type_in_filter
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      if not L7_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_skill_need_to_show = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._attack_type_filter
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_skill_type_in_filter = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._skill_list
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3[1]
    L2_3 = L2_3.AttackType
    L2_3 = L2_1[L2_3]
    L3_3 = A1_3[1]
    L3_3 = L3_3.AttackType
    L3_3 = L2_1[L3_3]
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._skill_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.sort
    L7_2 = L5_2
    function L8_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = A0_3.SkillID
      L3_3 = A1_3.SkillID
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L6_2(L7_2, L8_2)
  end
end
L0_1._sort_skill_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._skill_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_skill_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._extra_desc_table
  L1_2 = #L1_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.AvatarData
  L1_2 = L1_2.IsShowSkillPlotTrialPlayer
  L1_2 = 0 < L1_2 and L1_2
  if L1_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_18
    end
  end
  L2_2 = 0
  ::lbl_18::
  L3_2 = A0_2._cur_skill_info_list
  L3_2 = #L3_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_skill_info
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = L2_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_skill_info
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_proper_noun
  L4_2 = A0_2._proper_noun_table
  L4_2 = #L4_2
  L4_2 = 0 < L4_2
  L3_2.interactable = L4_2
  L3_2 = A0_2._proper_noun_table
  L3_2 = #L3_2
  if 0 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = 130
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = 1
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_skill_info_list = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = nil
  L4_2 = A0_2._tab_prefab_index
  if not L4_2 then
    L4_2 = L4_1
  end
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L3_2 = L5_2
  L5_2 = L3_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.AvatarSkillInfoPanel
    L9_2 = G
    L9_2 = L9_2.AvatarSkillInfoPanelBinder
    L10_2 = true
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L3_2.transform
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.setup_auto_click
    L8_2 = true
    L6_2(L7_2, L8_2)
    L3_2.UserObjectData = L5_2
  end
  L6_2 = A0_2._skill_list
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2[1]
  L7_2 = L6_2.SkillID
  L9_2 = L5_2
  L8_2 = L5_2.setup_view
  L10_2 = A0_2._avatar_data
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L5_2
  L8_2 = L5_2.set_selected
  L10_2 = A0_2._cur_skill_id
  L10_2 = L7_2 == L10_2
  L8_2(L9_2, L10_2)
  L9_2 = L5_2
  L8_2 = L5_2.bind_click
  L10_2 = A0_2._on_skill_click
  L11_2 = A0_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.UI
  L8_2 = L8_2.LayoutRebuilder
  L8_2 = L8_2.ForceRebuildLayoutImmediate
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_skill_info
  L8_2(L9_2)
  return L3_2
end
L0_1._on_scroll_skill_change = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._avatar_data
  L3_2 = L2_2
  L2_2 = L2_2.GetSkillRowDataByID
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_skill_list
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_skill_info_list
    L3_2(L4_2)
    return
  end
  L3_2 = A0_2._cur_skill_id
  if L3_2 ~= A1_2 then
    A0_2._cur_skill_id = A1_2
    L3_2 = L2_2.AttackType
    L3_2 = L2_1[L3_2]
    L4_2 = A0_2._skill_list
    L4_2 = L4_2[L3_2]
    A0_2._cur_skill_info_list = L4_2
    L4_2 = G
    L4_2 = L4_2.AvatarUtils
    L4_2 = L4_2.get_skill_extra_desc_table
    L5_2 = A0_2._avatar_data
    L6_2 = A0_2._cur_skill_info_list
    L6_2 = L6_2[1]
    L4_2 = L4_2(L5_2, L6_2)
    A0_2._extra_desc_table = L4_2
    L4_2 = G
    L4_2 = L4_2.BattleUIUtils
    L4_2 = L4_2.get_proper_noun_table_from_avatar_skill_table
    L5_2 = A0_2._cur_skill_info_list
    L4_2 = L4_2(L5_2)
    A0_2._proper_noun_table = L4_2
    L5_2 = A0_2
    L4_2 = A0_2._setup_skill_info_list
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_skill_list
    L4_2(L5_2)
  end
end
L0_1._on_skill_click = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L3_1.None
  if A2_2 == 0 then
    L3_2 = L3_1.MainSkillRow
  else
    L4_2 = A0_2._cur_skill_info_list
    L4_2 = #L4_2
    if A2_2 == L4_2 then
      L3_2 = L3_1.ExtraDesc
    else
      L3_2 = L3_1.SubSkillRow
    end
  end
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L6_2 = L3_1.MainSkillRow
    if L3_2 == L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.AvatarMainSkillRowPanel
      L9_2 = G
      L9_2 = L9_2.AvatarMainSkillRowPanelBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    else
      L6_2 = L3_1.SubSkillRow
      if L3_2 == L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2.create_panel
        L8_2 = G
        L8_2 = L8_2.AvatarSubSkillRowPanel
        L9_2 = G
        L9_2 = L9_2.AvatarSubSkillRowPanelBinder
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L5_2 = L6_2
      else
        L7_2 = A0_2
        L6_2 = A0_2.create_panel
        L8_2 = G
        L8_2 = L8_2.AvatarExtraDescListPanel
        L9_2 = G
        L9_2 = L9_2.AvatarExtraDescListPanelBinder
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L5_2 = L6_2
      end
    end
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L6_2 = L3_1.ExtraDesc
  if L3_2 == L6_2 then
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._cur_skill_info_list
    L8_2 = L8_2[1]
    L9_2 = A0_2._extra_desc_table
    L6_2(L7_2, L8_2, L9_2)
  else
    L6_2 = A0_2._cur_skill_info_list
    L7_2 = A2_2 + 1
    L6_2 = L6_2[L7_2]
    L8_2 = L5_2
    L7_2 = L5_2.setup_view
    L9_2 = L6_2
    L10_2 = A0_2._avatar_data
    L10_2 = L10_2.AvatarData
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L5_2
    L7_2 = L5_2.set_btn_interactable
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
  return L4_2
end
L0_1._on_skill_info_changed = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._skill_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2[1]
    L7_2 = L7_2.AttackType
    if L7_2 == A1_2 then
      return L6_2
    end
  end
  L2_2 = {}
  return L2_2
end
L0_1._get_skill_list_by_type = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._proper_noun_table
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.AvatarEducation.AvatarDetail.StatusDescriptionDialog"
    L3_2 = A0_2._proper_noun_table
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_btn_proper_noun_click = L5_1
return L0_1
