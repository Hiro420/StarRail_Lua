local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.Reward.StrongChallengeQuestRewardTabPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StrongChallengeQuestRewardTabPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[1] = "SpriteOutput/Quest/StrongChallenge/StrongChallengeIcon/StrongChallengeTabIconMain.png"
L1_1[2] = "SpriteOutput/Quest/StrongChallenge/StrongChallengeIcon/StrongChallengeTabIconMission.png"
L1_1[3] = "SpriteOutput/Quest/StrongChallenge/StrongChallengeIcon/StrongChallengeTabIconTower.png"
L1_1[4] = "SpriteOutput/Quest/StrongChallenge/StrongChallengeIcon/StrongChallengeTabIconPlay.png"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.ScheduleModule
function L4_1(A0_2)
  local L1_2
  A0_2._is_selected = false
  A0_2._is_unlock = false
end
L0_1.ctor = L4_1
function L4_1(A0_2)
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onSelectTrigger = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onDeselectTrigger = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._click_callback_owner = A1_2
  A0_2._click_callback = A2_2
end
L0_1.register_btn_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._tab = A1_2
  L2_2 = A1_2.quest_ids
  A0_2._quest_ids = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._check_quest_unlock_time
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_quest_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_quest_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_tab_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_selected
  L4_2 = A0_2._is_selected
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ActivityStrongChallengeRewardTab"
  L5_2 = A0_2._tab
  L5_2 = L5_2.id
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
L0_1.set_selected = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._tab
  L1_2 = L1_2.schedule_data
  return L1_2
end
L0_1.schedule_data = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._quest_data
  return L1_2
end
L0_1.quest_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab
  L1_2 = L1_2.schedule_data
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.IsInSchedule
  L2_2 = L2_2(L3_2)
  if L2_2 then
    A0_2._is_unlock = true
  else
    A0_2._is_unlock = false
  end
end
L0_1._check_quest_unlock_time = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._quest_data = L1_2
  L1_2 = 1
  L2_2 = A0_2._quest_ids
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._is_unlock
    if L5_2 then
      L5_2 = L2_1
      L6_2 = L5_2
      L5_2 = L5_2.TryGetQuestData
      L7_2 = A0_2._quest_ids
      L7_2 = L7_2[L4_2]
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 ~= nil then
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2._quest_data
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    else
      L5_2 = {}
      L6_2 = A0_2._quest_ids
      L6_2 = L6_2[L4_2]
      L5_2.ID = L6_2
      L6_2 = CS
      L6_2 = L6_2.BLHLCHNAJKK
      L6_2 = L6_2.BMEAGBEFNFK
      L5_2.Status = L6_2
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.QuestDataExcelTable
      L6_2 = L6_2.GetData
      L7_2 = A0_2._quest_ids
      L7_2 = L7_2[L4_2]
      L6_2 = L6_2(L7_2)
      L5_2.DataRow = L6_2
      if L5_2 ~= nil then
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2._quest_data
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L0_1._setup_quest_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._finish_count = 0
  A0_2._has_rare_reward = false
  L1_2 = pairs
  L2_2 = A0_2._quest_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Status
    if L6_2 ~= nil then
      L6_2 = L5_2.Status
      L7_2 = CS
      L7_2 = L7_2.BLHLCHNAJKK
      L7_2 = L7_2.FMLBEGJJHMJ
      if L6_2 == L7_2 then
        L6_2 = A0_2._finish_count
        L6_2 = L6_2 + 1
        A0_2._finish_count = L6_2
      end
    end
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
L0_1._setup_quest_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._tab
  L3_2 = L3_2.name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._finish_count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._quest_data
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._finish_count
  L4_2 = A0_2._quest_data
  L4_2 = #L4_2
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._finish_count
  L4_2 = A0_2._quest_data
  L4_2 = #L4_2
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rare
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._has_rare_reward
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_selected
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._click_callback_owner
  if L1_2 then
    L1_2 = A0_2._click_callback
    if L1_2 then
      L1_2 = ipairs
      L2_2 = A0_2._quest_data
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L6_2 = G
        L6_2 = L6_2.SuperDebug
        L6_2 = L6_2.Log
        L7_2 = "[StrongChallenge] _trigger_root_btn: Quest#"
        L8_2 = L5_2.ID
        L7_2 = L7_2 .. L8_2
        L6_2(L7_2)
      end
      L1_2 = A0_2._click_callback
      L2_2 = A0_2._click_callback_owner
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._trigger_root_btn = L4_1
return L0_1
