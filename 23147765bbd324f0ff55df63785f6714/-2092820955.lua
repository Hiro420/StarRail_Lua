local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeMissionDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeMissionDetailPanel"
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
L2_1 = L2_1.HeliobusModule
L3_1 = "HeliobusMissionDetailPanel_FadeIn"
L4_1 = "HeliobusMissionDetailPanel_FadeOut"
function L5_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_transfer
  L4_2 = A0_2._on_btn_transfer
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Heliobus.Challenge.HeliobusChallengeMissionInfoRow"
  L6_2 = "Ui.Heliobus.Challenge.HeliobusChallengeMissionInfoRowBinder"
  L7_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._raid_progress_list = L1_2
  L1_2 = A0_2._raid_progress_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_progress_raid
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "HeliobusMissionDetailPanel_FadeOut"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_out_anim_finished
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_2
  L2_2 = L2_2.Stop
  L2_2(L3_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_transfer
    L2_2.interactable = true
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_close
    L2_2.interactable = true
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_transfer
    L2_2.interactable = false
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_close
    L2_2.interactable = false
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L4_1
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_panel_show = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._challenge_group_data = A1_2
  A0_2._map_entrance_id = A2_2
  A0_2._mapping_info_id = A3_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MappingInfoExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A3_2
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.Name
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.Desc
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._get_heliobus_challenge_progress_data_list
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._raid_progress_list
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._challenge_group_data
  L6_2 = L6_2[1]
  L6_2 = L6_2.ChallengeGroupID
  A0_2._challenge_group_id = L6_2
  L6_2 = L2_1
  L7_2 = L6_2
  L6_2 = L6_2.GetNewUnlockChallengeGroupLevel
  L6_2 = L6_2(L7_2)
  L7_2 = nil
  L9_2 = L6_2
  L8_2 = L6_2.ContainsKey
  L10_2 = A0_2._challenge_group_id
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 then
    L8_2 = A0_2._challenge_group_id
    L7_2 = L6_2[L8_2]
  end
  if L7_2 ~= nil then
    L8_2 = L7_2.Count
    if 0 < L8_2 then
      L8_2 = A0_2._binder
      L8_2 = L8_2.node_reddot_tip
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.text_reddot_tip
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetTextID
      L10_2 = "UIText_ActivityRedDot_New"
      L8_2(L9_2, L10_2)
  end
  else
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_reddot_tip
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = false
    L8_2(L9_2, L10_2)
  end
end
L0_1.setup_view_by_challenge_group = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._challenge_group_id = 0
  A0_2._map_entrance_id = A1_2
  A0_2._mapping_info_id = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MappingInfoExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A2_2
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.Name
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.Desc
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_heliobus_raid_data_list
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._raid_progress_list
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = L2_1
  L6_2 = L5_2
  L5_2 = L5_2.GetNewUnlockChallengeRaidLevel
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.Count
  if 0 < L6_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot_tip
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_reddot_tip
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = "UIText_ActivityRedDot_New"
    L6_2(L7_2, L8_2)
  else
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot_tip
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1.setup_view_by_raid = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._on_btn_close_callback = A1_2
  A0_2._on_btn_close_callback_owner = A2_2
end
L0_1.register_on_close_callback = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._reward_item_list
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1.has_show_reward_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_item_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._reward_item_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1.show_reward_info_dialog = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = {}
  A0_2._reward_item_list = L3_2
  L3_2 = 1
  L4_2 = A0_2._challenge_group_data
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._challenge_group_data
    L7_2 = L7_2[L6_2]
    L8_2 = {}
    L9_2 = L6_2 - 1
    L8_2.level = L9_2
    L9_2 = L7_2.IsChallengeFinished
    L8_2.is_level_completed = L9_2
    L9_2 = A0_2._challenge_group_data
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.IsChallengeUnlocked
    L9_2 = not L9_2
    L8_2.is_locked = L9_2
    L9_2 = L7_2.ChallengeData
    L9_2 = L9_2.RewardID
    L8_2.reward_id = L9_2
    L9_2 = A0_2._challenge_group_data
    L8_2.heliobus_challenge_group_id = L9_2
    L9_2 = G
    L9_2 = L9_2.Utils
    L9_2 = L9_2.create_lua_table_from_cs_list
    L10_2 = L7_2.ChallengeTargets
    L9_2 = L9_2(L10_2)
    L8_2.targets = L9_2
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = L8_2.is_level_completed
    if L9_2 == false then
      L9_2 = L8_2.reward_id
      if L9_2 then
        L9_2 = G
        L9_2 = L9_2.RewardUtils
        L9_2 = L9_2.CreateRewardItemTableSorted
        L10_2 = L8_2.reward_id
        L9_2 = L9_2(L10_2)
        L10_2 = ipairs
        L11_2 = L9_2
        L10_2, L11_2, L12_2 = L10_2(L11_2)
        for L13_2, L14_2 in L10_2, L11_2, L12_2 do
          L15_2 = L14_2.ItemID
          L2_2[L15_2] = true
        end
      end
    end
  end
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._reward_item_list
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
L0_1._get_heliobus_challenge_progress_data_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = {}
  A0_2._reward_item_list = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusChallengeRaidExcelTable
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2()
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L5_2 = L4_2.RaidID
    L6_2 = {}
    L6_2.level = 0
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.IsTreasureChallengeCompleted
    L9_2 = L5_2
    L10_2 = 0
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.is_level_completed = L7_2
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.IsTreasureChallengeLevelLocked
    L9_2 = L5_2
    L10_2 = 0
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.is_locked = L7_2
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.GetTreasureRewardDisplayDatas
    L9_2 = L5_2
    L10_2 = 0
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.rewards = L7_2
    L6_2.raidID = L5_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L8_2 = L6_2.is_level_completed
    if L8_2 == false and L7_2 then
      L8_2 = G
      L8_2 = L8_2.RewardUtils
      L8_2 = L8_2.get_sorted_items_by_item_config_list
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L9_2 = ipairs
      L10_2 = L8_2
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L14_2 = L13_2.ItemID
        L2_2[L14_2] = true
      end
    end
  end
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._reward_item_list
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
  end
  return L1_2
end
L0_1._get_heliobus_raid_data_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._on_btn_close_callback
  if L1_2 then
    L1_2 = A0_2._on_btn_close_callback_owner
    if L1_2 then
      L1_2 = A0_2._on_btn_close_callback
      L2_2 = A0_2._on_btn_close_callback_owner
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.MarkNeedAutoChallengeEnter
  L3_2 = A0_2._challenge_group_id
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TransferModule
  L2_2 = L1_2
  L1_2 = L1_2.Transfer
  L3_2 = A0_2._map_entrance_id
  L4_2 = A0_2._mapping_info_id
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_transfer = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_fade_out_anim_finished = L5_1
return L0_1
