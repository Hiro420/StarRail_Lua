local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.RaidMap.RaidMapInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.TreasureChallengeTargetItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidMapInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RaidModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.RaidModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1.CurrentTreasureChallengeSnapShot
  if L1_2 then
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
    if L3_2 then
      L4_2 = L2_1
      L5_2 = L4_2
      L4_2 = L4_2.GetTreasureChallengeValidLevels
      L6_2 = L1_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_raid_level
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = L4_2.Count
      L7_2 = 1 < L7_2
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_raid_name
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L3_2.RaidName
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_raid_level
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = G
      L7_2 = L7_2.UITextUtils
      L7_2 = L7_2.GetRomanNumberTextID
      L8_2 = L2_2 + 1
      L7_2, L8_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_raid_desc
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L3_2.RaidDesc
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2._should_show_challenge_target
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L6_2 = A0_2
        L5_2 = A0_2._get_datas
        L5_2(L6_2)
        L6_2 = A0_2
        L5_2 = A0_2._setup_target_datas
        L5_2(L6_2)
      else
        L5_2 = A0_2._binder
        L5_2 = L5_2.node_challenge_target
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetActive
        L7_2 = false
        L5_2(L6_2, L7_2)
      end
    end
  end
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._datas
  if L1_2 then
    L1_2 = 1
    L2_2 = A0_2._datas
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._binder
      L5_2 = L5_2.challenge_targets
      L6_2 = L5_2
      L5_2 = L5_2.get_panel_by_index
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 then
        L7_2 = L5_2
        L6_2 = L5_2.setup_hint_status
        L6_2(L7_2)
      end
    end
  end
end
L0_1.update_hint_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RaidConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L1_1.CurrentTreasureChallengeSnapShot
  L2_2 = L2_2.CurrentRaidID
  L3_2 = L1_1.CurrentTreasureChallengeSnapShot
  L3_2 = L3_2.CurrentRaidLevel
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.RaidUtils
  L2_2 = L2_2.get_format_treasure_challenge_targets
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  A0_2._datas = L2_2
end
L0_1._get_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._datas
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.challenge_targets
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._datas
    L1_2(L2_2, L3_2)
    L1_2 = 1
    L2_2 = A0_2._datas
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._binder
      L5_2 = L5_2.challenge_targets
      L6_2 = L5_2
      L5_2 = L5_2.get_panel_by_index
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      L7_2 = L5_2
      L6_2 = L5_2.hide_rewards
      L6_2(L7_2)
    end
  end
end
L0_1._setup_target_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.CurrentTreasureChallengeSnapShot
  L2_2 = null
  if L1_2 == L2_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L1_1.CurrentTreasureChallengeSnapShot
  L1_2 = L1_2.TargetStatusSnapShot
  L1_2 = L1_2.Count
  if L1_2 == 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L0_1._should_show_challenge_target = L3_1
return L0_1
