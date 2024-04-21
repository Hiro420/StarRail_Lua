local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Heliobus.Entrance.UserInfo.HeliobusMainEntranceUserInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Entrance.UserInfo.HeliobusMainEntranceUserInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Entrance.SNSInfo.HeliobusMainEntranceSNSInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Entrance.SNSInfo.HeliobusMainEntranceSNSInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Entrance.HeliobusMainEntranceFunctionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusMainEntranceFunctionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "Activity_Heliobus_Skill_UnlockMissionID"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.IntValue
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "Activity_Heliobus_Challenge_UnlockMissionID"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.IntValue
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueClientExcelTable
L5_1 = L5_1.GetData
L6_1 = "Activity_Heliobus_Reward_UnlockMissionID"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.IntValue
L6_1 = "UIText_Heliobus_ChallengePhase_UnlockTips"
function L7_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusMainEntranceUserInfoPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusMainEntranceUserInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._user_info_panel = L1_2
  L1_2 = A0_2._user_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_btn_home
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._user_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_user_info_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusMainEntranceSNSInfoPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusMainEntranceSNSInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._sns_info_panel = L1_2
  L1_2 = A0_2._sns_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_btn_sns_message
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._sns_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_sns_info_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skill
  L4_2 = A0_2._on_btn_skill
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rewards
  L4_2 = A0_2._on_btn_rewards
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_skill
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_skill
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_challenge
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_challenge
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_rewards
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_rewards
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._sns_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_root_btn
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sns_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_unlock_panel_view
  L3_2 = L3_1
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_skill_normal
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_skill_lock
  L6_2 = A0_2._setup_skill_view
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_unlock_panel_view
  L3_2 = L4_1
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_challenge_normal
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_challenge_lock
  L6_2 = A0_2._setup_challenge_view
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_unlock_panel_view
  L3_2 = L5_1
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_reward_normal
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_reward_lock
  L6_2 = A0_2._setup_income_view
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_custom_navigation
  L1_2(L2_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._user_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_progress_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._sns_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_sns_view = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L6_2 = A2_2
  L5_2 = A2_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L6_2 = A3_2
  L5_2 = A3_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = L2_1
  L6_2 = L5_2
  L5_2 = L5_2.GetMainMissionDataWithPromise
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.ThenLuaActionOneParam
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 ~= nil then
      L1_3 = A0_2._binder
      if L1_3 then
        L1_3 = A0_3.IsFinish
        if L1_3 then
          L1_3 = A2_2
          L2_3 = L1_3
          L1_3 = L1_3.SafeSetActive
          L3_3 = true
          L1_3(L2_3, L3_3)
          L1_3 = A3_2
          L2_3 = L1_3
          L1_3 = L1_3.SafeSetActive
          L3_3 = false
          L1_3(L2_3, L3_3)
          L1_3 = A4_2
          L2_3 = A0_2
          L1_3(L2_3)
        end
      end
    end
  end
  L5_2(L6_2, L7_2)
end
L0_1._setup_unlock_panel_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._is_skill_unlock = true
  L1_2 = 0
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_1.HeliobusSkills
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.IsUnlocked
    if L8_2 then
      L1_2 = L1_2 + 1
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_skill_count
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = tostring
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = "/"
  L7_2 = tostring
  L8_2 = #L2_2
  L7_2 = L7_2(L8_2)
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_skill_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._is_challenge_unlock = true
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1.HeliobusChallenges
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.IsChallengeFinished
    if L8_2 then
      L2_2 = L2_2 + 1
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_challenge_count
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = tostring
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = "/"
  L7_2 = tostring
  L8_2 = #L1_2
  L7_2 = L7_2(L8_2)
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "HeliobusChallenge"
  L6_2 = nil
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_challenge_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_challenge_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._is_reward_unlock = true
  L1_2 = 0
  L2_2 = 0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusRewardExcelTable
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
    L5_2 = L4_2.RewardQuestID
    if L5_2 ~= 0 then
      L2_2 = L2_2 + 1
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.GlobalVars
      L5_2 = L5_2.s_ModuleManager
      L5_2 = L5_2.QuestModule
      L6_2 = L5_2
      L5_2 = L5_2.TryGetQuestData
      L7_2 = L4_2.RewardQuestID
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L5_2.Status
      L7_2 = CS
      L7_2 = L7_2.LEOGBBOPKKO
      L7_2 = L7_2.CMOFEAFMGAK
      if L6_2 == L7_2 then
        L1_2 = L1_2 + 1
      end
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_total_reward_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L1_2
  L7_2 = "/"
  L8_2 = L2_2
  L6_2 = L6_2 .. L7_2 .. L8_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "HeliobusIncomeEntryRedDot"
  L7_2 = nil
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_reward_reddot
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._setup_income_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = A0_2._user_info_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_root_btn
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = A0_2._sns_info_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_root_btn
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_challenge
  L2_2(L3_2, L4_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_rewards
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Vertical
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rewards
  L2_2 = L3_2.navigation
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Navigation
  L3_2 = L3_2.Mode
  L3_2 = L3_2.Explicit
  L2_2.mode = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L2_2.selectOnUp = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skill
  L2_2.selectOnRight = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rewards
  L3_2.navigation = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skill
  L2_2 = L3_2.navigation
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Navigation
  L3_2 = L3_2.Mode
  L3_2 = L3_2.Explicit
  L2_2.mode = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L2_2.selectOnUp = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rewards
  L2_2.selectOnLeft = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skill
  L3_2.navigation = L2_2
end
L0_1._setup_custom_navigation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "HeliobusBtnHome"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.SNS.PopulationPhase.HeliobusPopulationPhaseDialog"
  L1_2(L2_2)
end
L0_1._on_btn_home = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "HeliobusBtnSNSMessage"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainPage"
  L1_2(L2_2)
end
L0_1._on_btn_sns_message = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_reward_unlock
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SDKLuaReportAdapter
    L1_2 = L1_2.ReportUIButtonClick
    L2_2 = A0_2._owner
    L2_2 = L2_2.__name
    L3_2 = A0_2.__name
    L4_2 = "HeliobusBtnSkill"
    L5_2 = A0_2._owner
    L5_2 = L5_2.guid
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Heliobus.Skill.HeliobusSkillListPage"
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._show_toast
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_skill = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_challenge_unlock
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SDKLuaReportAdapter
    L1_2 = L1_2.ReportUIButtonClick
    L2_2 = A0_2._owner
    L2_2 = L2_2.__name
    L3_2 = A0_2.__name
    L4_2 = "HeliobusBtnChallenge"
    L5_2 = A0_2._owner
    L5_2 = L5_2.guid
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Heliobus.Challenge.HeliobusChallengeMainPage"
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._show_toast
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_challenge = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_reward_unlock
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SDKLuaReportAdapter
    L1_2 = L1_2.ReportUIButtonClick
    L2_2 = A0_2._owner
    L2_2 = L2_2.__name
    L3_2 = A0_2.__name
    L4_2 = "HeliobusBtnRewards"
    L5_2 = A0_2._owner
    L5_2 = L5_2.guid
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Heliobus.SNS.Income.HeliobusIncomePage"
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._show_toast
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_rewards = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MainMissionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = L2_2.Name
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = L6_1
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = G
    L5_2 = L5_2.NotifyManager
    L5_2 = L5_2.notify
    L6_2 = G
    L6_2 = L6_2.CS
    L6_2 = L6_2.NotifyType
    L6_2 = L6_2.UICenterToastMessageString
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._show_toast = L7_1
return L0_1
