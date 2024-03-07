local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeRewardTabPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeRewardTabPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = "UIText_Heliobus_ChallengePhase_UnlockTips"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "Activity_Heliobus_ChallengeRaid_UnlockQuest"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.UintValue
L4_1 = "UIText_Heliobus_ChallengePhase_UnlockTips"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._is_selected = false
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.FinishWayExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L3_1
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.ParamIntList
    L4_2 = L4_2[0]
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MainMissionExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L5_2.Name
    L6_2 = L6_2(L7_2)
    A0_2._unlock_raid_mission_name = L6_2
  end
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_selected
    L2_3 = true
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onSelectTrigger = nil
end
L0_1._on_dispose = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.ChallengeRewardTabName
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.UnlockQuest
  A0_2._unlock_quest = L2_2
  L2_2 = A1_2.ChallengePhaseID
  A0_2._phase_id = L2_2
  L2_2 = A0_2._phase_id
  if L2_2 ~= nil then
    L2_2 = A0_2._phase_id
    if L2_2 ~= 0 then
      goto lbl_24
    end
  end
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = L4_1
  L4_2 = A0_2._unlock_raid_mission_name
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._unlock_tip = L2_2
  goto lbl_49
  ::lbl_24::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusChallengePhaseExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._phase_id
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MainMissionExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.UnlockMissionID
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = L2_1
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = L3_2.Name
  L6_2, L7_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._unlock_tip = L4_2
  ::lbl_49::
  L3_2 = A0_2
  L2_2 = A0_2._setup_quest_data
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_array
  L5_2 = A1_2.QuestList
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_panel_lock_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_finish_count
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_panel_info
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "HeliobusChallengeReward"
  L5_2 = A1_2.ChallengeRewardTabID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._on_click_callback = A1_2
  A0_2._on_click_callback_owner = A2_2
end
L0_1.register_on_click_callback = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._quest_data = L2_2
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.TryGetQuestData
    L8_2 = A1_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._quest_data
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    else
      L7_2 = {}
      L6_2 = L7_2
      L7_2 = A1_2[L5_2]
      L6_2.ID = L7_2
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.QuestDataExcelTable
      L7_2 = L7_2.GetData
      L8_2 = A1_2[L5_2]
      L7_2 = L7_2(L8_2)
      L6_2.DataRow = L7_2
      L7_2 = CS
      L7_2 = L7_2.BLHLCHNAJKK
      L7_2 = L7_2.BILIHDBLNBB
      L6_2.Status = L7_2
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._quest_data
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._setup_quest_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._unlock_quest
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Status
    L3_2 = CS
    L3_2 = L3_2.BLHLCHNAJKK
    L3_2 = L3_2.CDJHHIHBNMN
  end
  L2_2 = L2_2 == L3_2
  A0_2._is_unlock = L2_2
end
L0_1._setup_panel_lock_state = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._finish_count = 0
  A0_2._has_rare_reward = false
  L1_2 = 1
  L2_2 = A0_2._quest_data
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._quest_data
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L6_2 = L5_2.Status
      L7_2 = CS
      L7_2 = L7_2.BLHLCHNAJKK
      L7_2 = L7_2.CDJHHIHBNMN
      if L6_2 ~= L7_2 then
        L6_2 = L5_2.Status
        L7_2 = CS
        L7_2 = L7_2.BLHLCHNAJKK
        L7_2 = L7_2.FMLBEGJJHMJ
        if L6_2 ~= L7_2 then
          goto lbl_27
        end
      end
      L6_2 = A0_2._finish_count
      L6_2 = L6_2 + 1
      A0_2._finish_count = L6_2
    end
    ::lbl_27::
    L6_2 = A0_2._has_rare_reward
    if not L6_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.RewardExcelTable
      L6_2 = L6_2.GetData
      L7_2 = L5_2.DataRow
      L7_2 = L7_2.RewardID
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2.IsSpecial
      A0_2._has_rare_reward = L7_2
    end
  end
end
L0_1._setup_finish_count = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_finish_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._finish_count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._quest_data
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rare
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._has_rare_reward
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._finish_count
  L4_2 = A0_2._quest_data
  L4_2 = #L4_2
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._finish_count
  L4_2 = A0_2._quest_data
  L4_2 = #L4_2
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_panel_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_selected
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._is_selected = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L3_2
  L3_2 = L3_2.SetChecked
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    if A2_2 then
      L4_2 = A0_2
      L3_2 = A0_2.save_navigation_target
      L5_2 = A0_2._binder
      L5_2 = L5_2.btn_root
      L5_2 = L5_2.gameObject
      L3_2(L4_2, L5_2)
    end
    L4_2 = A0_2
    L3_2 = A0_2._trigger_root_btn
    L3_2(L4_2)
  end
end
L0_1.set_selected = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._on_click_callback
  if L1_2 then
    L1_2 = A0_2._on_click_callback_owner
    if L1_2 then
      L1_2 = A0_2._on_click_callback
      L2_2 = A0_2._on_click_callback_owner
      L3_2 = A0_2._quest_data
      L4_2 = A0_2._is_unlock
      L5_2 = A0_2._unlock_tip
      L6_2 = A0_2
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._trigger_root_btn = L5_1
return L0_1
