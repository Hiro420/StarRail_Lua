local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.RaidUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleTargetItemProxyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleTargetItemProxyPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleTargetListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RaidModule
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._battle_target_data_dict = L3_2
  L3_2 = {}
  A0_2._battle_target_item_dict = L3_2
  L3_2 = {}
  A0_2._raid_target_data_dict = L3_2
  L3_2 = {}
  A0_2._raid_target_item_dict = L3_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._simple_mode = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._create_battle_targets
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._create_raid_targets
  L3_2 = L3_2(L4_2)
  if not L2_2 and not L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2.safe_set_active
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_targets = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2._simple_mode
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A1_2.BattleTargetID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.BattleTargetConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._battle_target_item_dict
  L4_2 = L4_2[L2_2]
  L5_2 = L3_2.TargetParam
  L4_2 = L4_2[L5_2]
  if not L4_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = A1_2.CurrentProgress
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.BattleUIUtils
  L6_2 = L6_2.GetCurBattleSubTarget
  L7_2 = L2_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = G
  L7_2 = L7_2.BattleUIUtils
  L7_2 = L7_2.create_battle_target_data
  L8_2 = L2_2
  L9_2 = L5_2
  L10_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2._battle_target_data_dict
  L8_2 = L8_2[L2_2]
  L9_2 = L3_2.TargetParam
  L8_2[L9_2] = L7_2
  L9_2 = L4_2
  L8_2 = L4_2.refresh_when_progress_changed
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = false
  L9_2 = A1_2.PreviousProgress
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.Client
  L10_2 = L10_2.BattleUIUtils
  L10_2 = L10_2.GetCurBattleSubTarget
  L11_2 = L2_2
  L12_2 = L9_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = CS
  L11_2 = L11_2.RPG
  L11_2 = L11_2.Client
  L11_2 = L11_2.BattleUIUtils
  L11_2 = L11_2.GetBattleTargetStatus
  L12_2 = L3_2.ParamType
  L13_2 = L9_2
  L14_2 = L10_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = L7_2.Status
  if L11_2 == L12_2 then
    if not L3_2 then
      goto lbl_78
    end
    L13_2 = A0_2
    L12_2 = A0_2._need_show_hint
    L14_2 = L3_2.HintStep
    L15_2 = L5_2
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    if not L12_2 then
      goto lbl_78
    end
  end
  L13_2 = L4_2
  L12_2 = L4_2.play_hint_anim
  L12_2(L13_2)
  L8_2 = true
  ::lbl_78::
  if L10_2 ~= L6_2 then
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.Client
    L12_2 = L12_2.GlobalVars
    L12_2 = L12_2.s_GamePhaseManager
    L14_2 = L12_2
    L13_2 = L12_2.GetCurrentPhase
    L13_2 = L13_2(L14_2)
    L13_2 = L13_2.BattleInstanceRef
    L13_2 = L13_2.GameWorldRef
    L13_2 = L13_2.EntityManagerRef
    L13_2 = L13_2.LevelEntity
    L15_2 = L13_2
    L14_2 = L13_2.GetComponent
    L16_2 = typeof
    L17_2 = CS
    L17_2 = L17_2.RPG
    L17_2 = L17_2.GameCore
    L17_2 = L17_2.LevelUIComponent
    L16_2, L17_2 = L16_2(L17_2)
    L14_2 = L14_2(L15_2, L16_2, L17_2)
    L14_2 = L14_2.BattleTargetMultiTargetSwitch
    if L14_2 then
      L15_2 = L4_2
      L14_2 = L4_2.play_target_switch_anim
      L14_2(L15_2)
    else
      L15_2 = L4_2
      L14_2 = L4_2.play_target_no_switch_anim
      L14_2(L15_2)
    end
    L8_2 = true
  end
  return L8_2
end
L0_1.try_setup_battle_target_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2.RaidTargetID
  L3_2 = A0_2._raid_target_item_dict
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L1_1.CurrentTreasureChallengeSnapShot
  L4_2 = L4_2.CurrentRaidID
  L5_2 = L1_1.CurrentTreasureChallengeSnapShot
  L5_2 = L5_2.CurrentRaidLevel
  L6_2 = G
  L6_2 = L6_2.RaidUtils
  L6_2 = L6_2.get_in_battle_treasure_challenge_target
  L7_2 = L2_2
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 == nil then
    L7_2 = false
    return L7_2
  end
  L7_2 = A0_2._raid_target_data_dict
  L7_2[L2_2] = L6_2
  L8_2 = L3_2
  L7_2 = L3_2.refresh_when_progress_changed
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.RaidTargetConfigExcelTable
  L7_2 = L7_2.GetData
  L8_2 = L6_2.TargetID
  L7_2 = L7_2(L8_2)
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.BattleUIUtils
  L8_2 = L8_2.IsTargetStatusChange
  L9_2 = L7_2.ParamType
  L10_2 = L6_2.CurrentProgress
  L11_2 = L6_2.TotalProgress
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  if not L8_2 then
    if not L7_2 then
      goto lbl_58
    end
    L10_2 = A0_2
    L9_2 = A0_2._need_show_hint
    L11_2 = L7_2.HintStep
    L12_2 = A1_2.CurrentProgress
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    if not L9_2 then
      goto lbl_58
    end
  end
  L10_2 = L3_2
  L9_2 = L3_2.play_hint_anim
  L9_2(L10_2)
  L9_2 = true
  do return L9_2 end
  ::lbl_58::
  L9_2 = false
  return L9_2
end
L0_1.try_setup_raid_target_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.BattleTargetConfigExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2._battle_target_item_dict
    L8_2 = L8_2[L6_2]
    L9_2 = L7_2.TargetParam
    L8_2 = L8_2[L9_2]
    if L8_2 then
      L10_2 = L8_2
      L9_2 = L8_2.play_new_target_anim
      L9_2(L10_2)
    end
  end
end
L0_1._setup_new_targets = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.get_battle_targets
  L2_2 = A0_2._simple_mode
  L2_2 = not L2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.BattleTargetConfigType
  L3_2 = L3_2.ChallengeTarget
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "[hwx] battleTargetDataList.Count: "
  L4_2 = tostring
  L5_2 = #L1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._battle_target_item_dict
    L8_2 = L6_2.TargetID
    L7_2 = L7_2[L8_2]
    if L7_2 == nil then
      L7_2 = A0_2._battle_target_item_dict
      L8_2 = L6_2.TargetID
      L9_2 = {}
      L7_2[L8_2] = L9_2
      L7_2 = A0_2._battle_target_data_dict
      L8_2 = L6_2.TargetID
      L9_2 = {}
      L7_2[L8_2] = L9_2
    end
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.BattleTargetConfigExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2.TargetID
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2._simple_mode
    if L8_2 then
      L8_2 = L7_2.TargetParam
      if L8_2 then
        goto lbl_52
      end
    end
    L8_2 = L6_2.TotalProgress
    ::lbl_52::
    L9_2 = A0_2._battle_target_item_dict
    L10_2 = L6_2.TargetID
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2[L8_2]
    if L9_2 == nil then
      L10_2 = A0_2
      L9_2 = A0_2.create_panel
      L11_2 = G
      L11_2 = L11_2.BattleTargetItemProxyPanel
      L12_2 = G
      L12_2 = L12_2.BattleTargetItemProxyPanelBinder
      L13_2 = A0_2._simple_mode
      if L13_2 then
        L13_2 = L6_2.IsFixHeight
      end
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L11_2 = L9_2
      L10_2 = L9_2.sync_loadto
      L12_2 = A0_2._binder
      L12_2 = L12_2.root
      L10_2(L11_2, L12_2)
      L10_2 = A0_2._battle_target_data_dict
      L11_2 = L6_2.TargetID
      L10_2 = L10_2[L11_2]
      L10_2[L8_2] = L6_2
      L10_2 = A0_2._battle_target_item_dict
      L11_2 = L6_2.TargetID
      L10_2 = L10_2[L11_2]
      L10_2[L8_2] = L9_2
    end
    L9_2 = A0_2._battle_target_item_dict
    L10_2 = L6_2.TargetID
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2[L8_2]
    L10_2 = L9_2
    L9_2 = L9_2.setup_view
    L11_2 = L6_2
    L12_2 = true
    L13_2 = A0_2._simple_mode
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L2_2 = #L1_2
  L2_2 = 0 < L2_2
  return L2_2
end
L0_1._create_battle_targets = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = L1_1.IsInRaid
  if L1_2 ~= false then
    L1_2 = L1_1.CurrentTreasureChallengeSnapShot
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_9::
  L1_2 = L1_1.CurrentTreasureChallengeSnapShot
  L1_2 = L1_2.CurrentRaidID
  L2_2 = L1_1.CurrentTreasureChallengeSnapShot
  L2_2 = L2_2.CurrentRaidLevel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RaidConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.RaidUtils
  L4_2 = L4_2.get_format_treasure_challenge_targets
  L5_2 = L3_2
  L6_2 = true
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = A0_2._raid_target_item_dict
    L11_2 = L9_2.TargetID
    L10_2 = L10_2[L11_2]
    if L10_2 == nil then
      L11_2 = A0_2
      L10_2 = A0_2.create_panel
      L12_2 = G
      L12_2 = L12_2.BattleTargetItemProxyPanel
      L13_2 = G
      L13_2 = L13_2.BattleTargetItemProxyPanelBinder
      L14_2 = A0_2._simple_mode
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      L12_2 = L10_2
      L11_2 = L10_2.sync_loadto
      L13_2 = A0_2._binder
      L13_2 = L13_2.root
      L11_2(L12_2, L13_2)
      L11_2 = A0_2._raid_target_data_dict
      L12_2 = L9_2.TargetID
      L11_2[L12_2] = L9_2
      L11_2 = A0_2._raid_target_item_dict
      L12_2 = L9_2.TargetID
      L11_2[L12_2] = L10_2
    end
    L10_2 = A0_2._raid_target_item_dict
    L11_2 = L9_2.TargetID
    L10_2 = L10_2[L11_2]
    L11_2 = L10_2
    L10_2 = L10_2.setup_view
    L12_2 = L9_2
    L13_2 = false
    L14_2 = A0_2._simple_mode
    L10_2(L11_2, L12_2, L13_2, L14_2)
  end
  L5_2 = #L4_2
  L5_2 = 0 < L5_2
  return L5_2
end
L0_1._create_raid_targets = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if not A1_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    if L7_2 == A2_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._need_show_hint = L2_1
return L0_1
