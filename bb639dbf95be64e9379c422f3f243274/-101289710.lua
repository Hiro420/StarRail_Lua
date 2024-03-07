local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.TeamMemberIconChibiPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.TeamMemberIconChibiPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureTeamMemberListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeAvatarDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.ReviveItemUseDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AdventureTeamMemberListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_GamePhaseManager
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.TeamModule
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._hp_snap_shot_exist = false
  A0_2._pause_data_refresh = false
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_resume_data_refresh
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._pause_timer = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._team_members = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_list
  L1_2 = L1_2.childCount
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_icon_list
    L7_2 = L6_2
    L6_2 = L6_2.GetChild
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.TeamMemberIconChibiPanel
    L10_2 = G
    L10_2 = L10_2.TeamMemberIconChibiPanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.bind
    L10_2 = L6_2.transform
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.bind_click_button
    L10_2 = A0_2
    L11_2 = A0_2._on_click_team_member
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._team_members
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  A0_2._disable_switch = false
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.TeamDataRefresh
  L5_2 = L0_1._on_team_data_refresh
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.MazeRefreshBuff
  L5_2 = L0_1._on_team_data_refresh_by_buff
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.TeamHpRefresh
  L5_2 = L0_1._on_character_hp_refresh
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPauseTeamDataRefresh
  L5_2 = L0_1._pause_data_refresh
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIResumeTeamDataRefresh
  L5_2 = L0_1._on_resume_data_refresh
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_long_press_active
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_hud_template = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_avatar_hp_refresh_effect
  L1_2(L2_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    return
  end
  A0_2._pause_data_refresh = true
  L2_2 = A0_2._pause_timer
  L3_2 = L2_2
  L2_2 = L2_2.set_interval
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._pause_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._pause_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._pause_data_refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._pause_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._pause_data_refresh = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_hp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_sp
  L1_2(L2_2)
end
L0_1._on_resume_data_refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.GetSnapShotOrSelf
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = A0_2._team_members
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = L2_2
    L7_2 = L2_2.GetMemberDataByIndex
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      if A1_2 then
        L8_2 = A0_2._team_members
        L8_2 = L8_2[L6_2]
        L9_2 = L8_2
        L8_2 = L8_2.setup_buff
        L10_2 = A0_2._buff_data
        L8_2(L9_2, L10_2)
      else
        L8_2 = A0_2._team_members
        L8_2 = L8_2[L6_2]
        L9_2 = L8_2
        L8_2 = L8_2.setup_view
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    else
      L8_2 = A0_2._team_members
      L8_2 = L8_2[L6_2]
      L9_2 = L8_2
      L8_2 = L8_2.setup_view
      L10_2 = nil
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.GetSnapShotOrSelf
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = A0_2._team_members
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L6_2 = L1_2.GetMemberDataByIndex
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = A0_2._team_members
      L7_2 = L7_2[L5_2]
      L8_2 = L7_2
      L7_2 = L7_2.refresh_sp
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._refresh_sp = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.GetSnapShotOrSelf
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = A0_2._team_members
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L6_2 = L1_2.GetMemberDataByIndex
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = A0_2._team_members
      L7_2 = L7_2[L5_2]
      L8_2 = L7_2
      L7_2 = L7_2.refresh_hp
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._team_members
      L7_2 = L7_2[L5_2]
      L8_2 = L7_2
      L7_2 = L7_2.bind_click_button
      L9_2 = A0_2
      L10_2 = A0_2._on_click_team_member
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._refresh_hp = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.IsLeader
  if L2_2 ~= true then
    L2_2 = A0_2._disable_switch
    if not L2_2 then
      goto lbl_10
    end
  end
  L2_2 = true
  L3_2 = nil
  do return L2_2, L3_2 end
  ::lbl_10::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L2_2 = L2_2.IsLockControlCharacter
  if L2_2 then
    L2_2 = true
    L3_2 = nil
    return L2_2, L3_2
  end
  L2_2 = A1_2.IsTrialPlayer
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GamePlayStatic
    L2_2 = L2_2.AdventureGetSpecialAvatarRowByAvatarID
    L3_2 = A1_2.TrialPlayerID
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.DisableSwitch
    if L3_2 then
      L3_2 = true
      L4_2 = "UIText_TrialPlayerUnavailable"
      return L3_2, L4_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_is_disable_switch = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._buff_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._on_team_data_refresh_by_buff = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._team_members
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.set_long_press_interactable
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._set_long_press_active = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._owner_is_top_page
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  ::lbl_13::
  if L2_2 == nil then
    return
  end
  A0_2._hp_snap_shot_exist = true
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.SaveLineupAvatarDataSnapShot
  L2_2(L3_2)
end
L0_1._on_character_hp_refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._hp_snap_shot_exist
  if not L1_2 then
    return
  end
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.GetSnapShotOrSelf
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = A0_2._team_members
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L6_2 = L1_2.GetMemberDataByIndex
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.LeftHPRatio
      L8_2 = L7_2
      L7_2 = L7_2.ToFloat
      L7_2 = L7_2(L8_2)
      L8_2 = L3_1
      L9_2 = L8_2
      L8_2 = L8_2.GetLineupAvatarSnapShotHpPercent
      L10_2 = L6_2.AvatarType
      L11_2 = L6_2.AvatarData
      L11_2 = L11_2.ID
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.MMathf
      L9_2 = L9_2.Approximately
      L10_2 = L7_2
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        L9_2 = A0_2._team_members
        L9_2 = L9_2[L5_2]
        L10_2 = L9_2
        L9_2 = L9_2.show_heal_effect
        L9_2(L10_2)
      end
    end
  end
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.ClearLineupAvatarDataSnapShot
  L2_2(L3_2)
  A0_2._hp_snap_shot_exist = false
end
L0_1._show_avatar_hp_refresh_effect = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.CheckMask
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TeamDataRefreshMask
  L4_2 = L4_2.MemberData
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L3_2 = A1_2
    L2_2 = A1_2.CheckMask
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TeamDataRefreshMask
    L4_2 = L4_2.MemberSP
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = A0_2._pause_data_refresh
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._refresh_sp
        L2_2(L3_2)
      end
    end
    L3_2 = A1_2
    L2_2 = A1_2.CheckMask
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TeamDataRefreshMask
    L4_2 = L4_2.MemberHP
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = A0_2._pause_data_refresh
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._refresh_hp
        L2_2(L3_2)
      end
    end
  end
end
L0_1._on_team_data_refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2
  L2_2 = A0_2._check_is_disable_switch
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    if L3_2 ~= nil and L3_2 ~= "" then
      L4_2 = G
      L4_2 = L4_2.NotifyManager
      L4_2 = L4_2.notify
      L5_2 = G
      L5_2 = L5_2.CS
      L5_2 = L5_2.NotifyType
      L5_2 = L5_2.UIPileToastMessageTextID
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
    return
  end
  L4_2 = A1_2.IsAlive
  if not L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_ModuleManager
    L4_2 = L4_2.AdventureModule
    L4_2 = L4_2.MapDef
    L4_2 = L4_2.CurrentGameMode
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.GameModeType
    L5_2 = L5_2.Challenge
    if L4_2 == L5_2 then
      return
    else
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.RogueStatic
      L5_2 = L5_2.GetCurModeRogueAvatarInfo
      L5_2 = L5_2()
      if L5_2 ~= nil then
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.RogueStatic
        L5_2 = L5_2.CanUseFoodInRogue
        L5_2 = L5_2()
        if L5_2 == false then
          L5_2 = G
          L5_2 = L5_2.NotifyManager
          L5_2 = L5_2.notify
          L6_2 = G
          L6_2 = L6_2.CS
          L6_2 = L6_2.NotifyType
          L6_2 = L6_2.UIPileToastMessageTextID
          L7_2 = "UIText_ConsumeUse_Tip_3"
          L5_2(L6_2, L7_2)
      end
      else
        L5_2 = G
        L5_2 = L5_2.InventoryUtils
        L5_2 = L5_2.enable_quick_use_func
        L5_2 = L5_2()
        if L5_2 then
          L5_2 = L2_1
          L6_2 = L5_2
          L5_2 = L5_2.GetReviveItems
          L5_2 = L5_2(L6_2)
          L6_2 = G
          L6_2 = L6_2.UIManager
          L6_2 = L6_2.load_and_async_show
          L7_2 = "Ui.Inventory.ItemUse.ReviveItemUseDialog"
          L8_2 = A1_2.AvatarData
          L9_2 = L5_2
          L6_2(L7_2, L8_2, L9_2)
        else
          L5_2 = G
          L5_2 = L5_2.NotifyManager
          L5_2 = L5_2.notify
          L6_2 = G
          L6_2 = L6_2.CS
          L6_2 = L6_2.NotifyType
          L6_2 = L6_2.UIPileToastMessageTextID
          L7_2 = "UIText_ConsumeUse_Tip_2"
          L5_2(L6_2, L7_2)
        end
      end
    end
    return
  end
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentTeam
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.GetSnapShotOrSelf
  L4_2 = L4_2(L5_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetCurrentPhase
  L5_2 = L5_2(L6_2)
  L7_2 = L5_2
  L6_2 = L5_2.CheckAndUseBtnCommonCD
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = L5_2.AdvWaitingChangeLeader
    if not L6_2 then
      goto lbl_109
    end
  end
  do return end
  ::lbl_109::
  L7_2 = L4_2
  L6_2 = L4_2.GetSlotByAvatarID
  L8_2 = A1_2.AvatarID
  L6_2 = L6_2(L7_2, L8_2)
  if 0 <= L6_2 then
    L7_2 = 1
    L8_2 = A0_2._team_members
    L8_2 = #L8_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L10_2 - 1
      if L11_2 ~= L6_2 then
      end
    end
    L8_2 = L5_2
    L7_2 = L5_2.SwitchPlayingTeamMemberBySlotID
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._on_click_team_member = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L2_2 = L2_2.TopPageDialogCount
  if L2_2 ~= 0 then
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Maze.MazeAvatarDialog"
  L4_2 = A1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_long_press_team_member = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Maze.MazeAvatarDialog"
  L4_2 = A1_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_long_press_buff_panel = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.on_cooldown_finish = L4_1
return L0_1
