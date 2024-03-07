local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogHeadRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.NewAvatarDialogHeadRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleMemberListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0
L2_1 = "BtnSwitch_ToRight"
L3_1 = "BtnSwitch_ToLeft"
function L4_1(A0_2)
  local L1_2
  A0_2._light_team_mode = true
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._light_team_mode
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_light_team
    L2_2 = L1_2
    L1_2 = L1_2.SelectPreview
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_dark_team
    L2_2 = L1_2
    L1_2 = L1_2.SelectPreview
    L1_2(L2_2)
  end
end
L0_1.select_prev = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._light_team_mode
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_light_team
    L2_2 = L1_2
    L1_2 = L1_2.SelectNext
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_dark_team
    L2_2 = L1_2
    L1_2 = L1_2.SelectNext
    L1_2(L2_2)
  end
end
L0_1.select_next = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_callback_self = A2_2
end
L0_1.set_click_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_light_dark_mode_by_entity
  L4_2 = A0_2._entity
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_member_selected
  L4_2 = A0_2._entity
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch
  L4_2 = A0_2._on_btn_switch_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_light_team
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_light_team_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_dark_team
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_dark_team_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  A0_2._entity = A1_2
  L2_2 = A1_2.OwnerWorldRef
  L2_2 = L2_2.EntityManagerRef
  L4_2 = L2_2
  L3_2 = L2_2.GetLightTeamEntity
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.TeamFormationComponent
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._teamData = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BattleUIUtils
  L3_2 = L3_2.QueryEntities
  L4_2 = L2_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.TeamTypeMask
  L5_2 = L5_2.TeamLight
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.EntityTypeMask
  L6_2 = L6_2.Avatar
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.EntityTypeMask
  L7_2 = L7_2.Monster
  L6_2 = L6_2 | L7_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.AliveStateMask
  L7_2 = L7_2.Mask_NotDestroyed
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.AliveStateMask
  L8_2 = L8_2.Bit_OnStage
  L7_2 = L7_2 | L8_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = L3_2
  L3_2 = L3_2.MarkManualRelease
  L3_2 = L3_2(L4_2)
  A0_2._light_team_entity_list = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BattleUIUtils
  L3_2 = L3_2.QueryEntities
  L4_2 = L2_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.TeamTypeMask
  L5_2 = L5_2.TeamDark
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.EntityTypeMask
  L6_2 = L6_2.Avatar
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.EntityTypeMask
  L7_2 = L7_2.Monster
  L6_2 = L6_2 | L7_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.AliveStateMask
  L7_2 = L7_2.Mask_NotDestroyed
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.AliveStateMask
  L8_2 = L8_2.Bit_OnStage
  L7_2 = L7_2 | L8_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = L3_2
  L3_2 = L3_2.MarkManualRelease
  L3_2 = L3_2(L4_2)
  A0_2._dark_team_entity_list = L3_2
end
L0_1._setup_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_light_team
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_dark_team
  L1_2(L2_2)
  A0_2._light_team_entity_list = nil
  A0_2._dark_team_entity_list = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_light_team
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._light_team_entity_list
  L3_2 = L3_2.Count
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_light_team
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_light_team
  L2_2 = L1_2
  L1_2 = L1_2.SetSelectIndex
  L3_2 = A0_2._selected_avatar_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_dark_team
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._dark_team_entity_list
  L3_2 = L3_2.Count
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_dark_team
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_dark_team
  L2_2 = L1_2
  L1_2 = L1_2.SetSelectIndex
  L3_2 = A0_2._selected_monster_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._light_team_mode
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.tab_control_in_control_tip_Monster
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.tab_control_in_control_tip_Monster
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.tab_control_in_control_tip_Avatar
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.tab_control_in_control_tip_Avatar
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = A0_2._light_team_entity_list
      L3_2 = L3_2.Count
      L3_2 = 1 < L3_2
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.tab_control_in_control_tip_Avatar
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.tab_control_in_control_tip_Avatar
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.tab_control_in_control_tip_Monster
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.tab_control_in_control_tip_Monster
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = A0_2._dark_team_entity_list
      L3_2 = L3_2.Count
      L3_2 = 1 < L3_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._refresh = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A2_2
  L4_2 = nil
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L5_2
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.AvatarDialogHeadRow
    L9_2 = G
    L9_2 = L9_2.NewAvatarDialogHeadRowBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L6_2 = A0_2._light_team_entity_list
  L6_2 = L6_2[A2_2]
  L8_2 = L6_2
  L7_2 = L6_2.GetComponent
  L9_2 = typeof
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.GameCore
  L10_2 = L10_2.CharacterDataComponent
  L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.UINumberUtils
  L8_2 = L8_2.CurrentShowHPPercent
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 == 0
  if L7_2 then
    L9_2 = L7_2.RowData
    if L9_2 then
      L10_2 = L5_2
      L9_2 = L5_2.set_icon
      L11_2 = L7_2.RowData
      L11_2 = L11_2.AvatarSideIconPath
      L9_2(L10_2, L11_2)
    end
  end
  L10_2 = L5_2
  L9_2 = L5_2.set_dead
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L10_2 = L5_2
  L9_2 = L5_2.set_callback
  L11_2 = A0_2
  L12_2 = A0_2._on_light_member_click
  L13_2 = A2_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = A0_2._entity
  L9_2 = L6_2 == L9_2
  L11_2 = L5_2
  L10_2 = L5_2.set_selected
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  if L9_2 then
    A0_2._selected_avatar_index = L3_2
  end
  L11_2 = L5_2
  L10_2 = L5_2.set_story_mark
  L12_2 = false
  L10_2(L11_2, L12_2)
  L11_2 = L5_2
  L10_2 = L5_2.set_assist_mark
  L12_2 = false
  L10_2(L11_2, L12_2)
  L11_2 = L5_2
  L10_2 = L5_2.set_trial_mark
  L12_2 = false
  L10_2(L11_2, L12_2)
  L10_2 = L7_2.RowData
  L10_2 = L10_2.AvatarData
  L11_2 = L10_2.IsPlotTrialPlayer
  if L11_2 then
    L12_2 = L5_2
    L11_2 = L5_2.set_story_mark
    L13_2 = true
    L11_2(L12_2, L13_2)
  else
    L11_2 = L10_2.IsAssistAvatar
    if L11_2 then
      L12_2 = L5_2
      L11_2 = L5_2.set_assist_mark
      L13_2 = true
      L11_2(L12_2, L13_2)
    else
      L11_2 = L10_2.IsTrialPlayer
      if L11_2 then
        L12_2 = L5_2
        L11_2 = L5_2.set_trial_mark
        L13_2 = true
        L11_2(L12_2, L13_2)
      end
    end
  end
  return L4_2
end
L0_1._on_scroll_light_team_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._light_team_entity_list
  L2_2 = L2_2[A1_2]
  L3_2 = A0_2._entity
  if L2_2 == L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._on_member_selected
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_light_member_click = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A2_2
  L4_2 = nil
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L5_2
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.AvatarDialogHeadRow
    L9_2 = G
    L9_2 = L9_2.NewAvatarDialogHeadRowBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L6_2 = A0_2._dark_team_entity_list
  L6_2 = L6_2[A2_2]
  L7_2 = L6_2
  L6_2 = L6_2.GetComponent
  L8_2 = typeof
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.MonsterDataComponent
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  if L6_2 then
    L7_2 = L6_2.MonsterRowData
    if L7_2 then
      L9_2 = L5_2
      L8_2 = L5_2.set_icon
      L10_2 = L7_2.RoundIconPath
      L8_2(L9_2, L10_2)
    end
  end
  L8_2 = L5_2
  L7_2 = L5_2.set_callback
  L9_2 = A0_2
  L10_2 = A0_2._on_dark_member_click
  L11_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2._dark_team_entity_list
  L7_2 = L7_2[A2_2]
  L8_2 = A0_2._entity
  L7_2 = L7_2 == L8_2
  L9_2 = L5_2
  L8_2 = L5_2.set_selected
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  if L7_2 then
    A0_2._selected_monster_index = L3_2
  end
  return L4_2
end
L0_1._on_scroll_dark_team_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._dark_team_entity_list
  L2_2 = L2_2[A1_2]
  L3_2 = A0_2._entity
  if L2_2 == L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._on_member_selected
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_dark_member_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._entity = A1_2
  L2_2 = A1_2.OwnerWorldRef
  L2_2 = L2_2.EntityManagerRef
  L4_2 = L2_2
  L3_2 = L2_2.BattleDataViewSelectEntity
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  L3_2 = A0_2._click_callback
  if L3_2 then
    L3_2 = A0_2._click_callback_self
    if L3_2 then
      L3_2 = A0_2._click_callback
      L4_2 = A0_2._click_callback_self
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_member_selected = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 0
  L3_2 = A0_2._light_team_entity_list
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._light_team_entity_list
    L6_2 = L6_2[L5_2]
    if L6_2 == A1_2 then
      L8_2 = A0_2
      L7_2 = A0_2._init_light_dark_mode
      L9_2 = true
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = 0
  L3_2 = A0_2._dark_team_entity_list
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._dark_team_entity_list
    L6_2 = L6_2[L5_2]
    if L6_2 == A1_2 then
      L8_2 = A0_2
      L7_2 = A0_2._init_light_dark_mode
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._init_light_dark_mode_by_entity = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._light_team_mode = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_light_team
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_dark_team
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._light_team_mode
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_light_team
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_switch
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_dark_team
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_switch
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._init_light_dark_mode = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._light_team_mode = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_light_team
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_dark_team
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._entity
  L3_2 = A0_2._light_team_mode
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_light_team
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._on_light_member_click
    L6_2 = A0_2
    L5_2 = A0_2._get_pre_light_entity_index
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_switch
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = L3_1
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_dark_team
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._on_dark_member_click
    L6_2 = A0_2
    L5_2 = A0_2._get_pre_dark_entity_index
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_switch
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = L2_1
    L3_2(L4_2, L5_2)
  end
  A0_2._pre_entity = L2_2
end
L0_1._set_light_dark_mode = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._pre_entity
  if L1_2 == nil then
    L1_2 = L1_1
    return L1_2
  end
  L1_2 = 0
  L2_2 = A0_2._light_team_entity_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._light_team_entity_list
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._pre_entity
    if L5_2 == L6_2 then
      return L4_2
    end
  end
  L1_2 = L1_1
  return L1_2
end
L0_1._get_pre_light_entity_index = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._pre_entity
  if L1_2 == nil then
    L1_2 = L1_1
    return L1_2
  end
  L1_2 = 0
  L2_2 = A0_2._dark_team_entity_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._dark_team_entity_list
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._pre_entity
    if L5_2 == L6_2 then
      return L4_2
    end
  end
  L1_2 = L1_1
  return L1_2
end
L0_1._get_pre_dark_entity_index = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._set_light_dark_mode
      L3_2 = A0_2._light_team_mode
      L3_2 = not L3_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_switch_click = L4_1
return L0_1
