local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeStarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeTargetPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeDetailTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeDetailTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  A0_2.challenge_id = A3_2
  A0_2._pre_challenge_id = A4_2
  L5_2 = {}
  A0_2._target_item_panels = L5_2
  A0_2._should_play_unlock_anim = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetChallengeData
  L3_2 = A0_2.challenge_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._challenge_data = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetChallengeData
  L3_2 = A0_2._pre_challenge_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._pre_challenge_data = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._challenge_data
  L2_2 = L2_2.ChallengeTargets
  L1_2 = L1_2(L2_2)
  A0_2._challenge_target_list = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.IsChallengeUnlocked
  A0_2.is_unlock = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.GetRomanNumberTextID
  L4_2 = A0_2._challenge_data
  L4_2 = L4_2.ChallengeData
  L4_2 = L4_2.HeliobusChallengeHard
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_unlock
  L3_2 = not L3_2 or L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.IsChallengeFinished
  L1_2(L2_2, L3_2)
  L1_2 = 0
  L2_2 = 1
  L3_2 = A0_2._challenge_target_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._challenge_target_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.IsTargetFinished
    if L7_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = 1
  L3_2 = A0_2._challenge_target_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.instantiate_object
    L8_2 = A0_2._binder
    L8_2 = L8_2.star_prefab
    L8_2 = L8_2.Prefab
    L9_2 = A0_2._binder
    L9_2 = L9_2.star_prefab
    L9_2 = L9_2.transform
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.HeliobusChallengeStarPanel
    L10_2 = G
    L10_2 = L10_2.HeliobusChallengeStarPanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.bind
    L10_2 = L6_2.transform
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.setup_view
    L10_2 = L5_2 <= L1_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._challenge_data = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L1_2 = A0_2._parent
  L2_2 = L1_2
  L1_2 = L1_2.set_challenge_button_state
  L3_2 = A0_2.is_unlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._parent
  L2_2 = L1_2
  L1_2 = L1_2.rebuild_challenge_detail_panel_navigation
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryMarkChallengeGroupLevelSeen
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.ChallengeGroupID
  L4_2 = A0_2.challenge_id
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._should_play_unlock_anim = true
end
L0_1.mark_should_play_unlock_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._should_play_unlock_anim
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_unlock
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "FarmLevelTabUnlock"
    L1_2(L2_2, L3_2)
  end
end
L0_1.try_play_unlock_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._reward_item_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2.ItemID
    L7_2(L8_2, L9_2)
  end
  L2_2 = {}
  L2_2.items = L1_2
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1.show_reward_info_dialog = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._should_play_unlock_anim
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_lock
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2.is_unlock
    L3_2 = not L3_2
    L1_2(L2_2, L3_2)
  end
end
L0_1.reset_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_target_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_monster_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_reward_info
  L1_2(L2_2)
end
L0_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_challenge_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.ChallengeData
  L3_2 = L3_2.ChallengeName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_challenge_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.ChallengeData
  L3_2 = L3_2.ChallengeDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_challenge_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.GetRomanNumberTextID
  L4_2 = A0_2._challenge_data
  L4_2 = L4_2.ChallengeData
  L4_2 = L4_2.HeliobusChallengeHard
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_challenge_basic_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 1
  L2_2 = A0_2._challenge_target_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._target_item_panels
    L5_2 = L5_2[L4_2]
    if L5_2 == nil then
      L6_2 = A0_2._parent
      L7_2 = L6_2
      L6_2 = L6_2.get_challenge_target_object
      L8_2 = L4_2
      L6_2 = L6_2(L7_2, L8_2)
      L8_2 = A0_2
      L7_2 = A0_2.create_panel
      L9_2 = G
      L9_2 = L9_2.HeliobusChallengeTargetPanel
      L10_2 = G
      L10_2 = L10_2.HeliobusChallengeTargetPanelBinder
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L5_2 = L7_2
      L8_2 = L5_2
      L7_2 = L5_2.bind
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._target_item_panels
      L7_2[L4_2] = L5_2
    end
    L7_2 = L5_2
    L6_2 = L5_2.setup_view_by_battle_target
    L8_2 = A0_2._challenge_target_list
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_challenge_target_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.ChallengeData
  L1_2 = L1_2.MonsterList
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L2_2 = L2_2.GetStageIDByEventID
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.ChallengeData
  L3_2 = L3_2.EventID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._parent
  L4_2 = L3_2
  L3_2 = L3_2.set_challenge_monster_info
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._refresh_challenge_monster_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.ChallengeData
  L1_2 = L1_2.RewardID
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTable
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  A0_2._reward_item_table = L2_2
  L2_2 = A0_2._parent
  L3_2 = L2_2
  L2_2 = L2_2.set_challenge_reward_info
  L4_2 = A0_2._reward_item_table
  L5_2 = A0_2._challenge_data
  L5_2 = L5_2.IsChallengeFinished
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh_challenge_reward_info = L2_1
return L0_1
