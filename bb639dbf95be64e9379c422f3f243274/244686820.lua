local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityConditionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.ChallengeStoryLynxActivityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "ChallengeStory_GuideMainMissionID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.UintValue
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ChallengeStoryLynxActivityPanel"
L5_1 = G
L5_1 = L5_1.TabItem
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._activity_data = A3_2
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.TypeParam
  L4_2 = L4_2[0]
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ActivityPanelSingleQuestConfigExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.AvatarID
  A0_2._avatar_id = L6_2
  L6_2 = L5_2.GotoID
  A0_2._goto_id = L6_2
  L6_2 = L5_2.QuestList
  A0_2._quest_id_list = L6_2
end
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
end
L3_1._is_can_to_zoom = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  A0_2._is_custom_loaded = true
end
L3_1._custom_on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._avatar_id = nil
  A0_2._goto_id = nil
  A0_2._quest_id_list = nil
  A0_2._quest_data_list = nil
  A0_2._activity_data = nil
  A0_2._cs_unlock_mission_ids = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reddot
  L1_2(L2_2)
end
L3_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._get_panel_prefab_path_by_activity_data
  L3_2 = A0_2._activity_data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._is_custom_bind
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_custom_bind = true
  L3_2 = A0_2
  L2_2 = A0_2._custom_on_load
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_reward_btn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_get
  L5_2 = A0_2._on_btn_get
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_go
  L5_2 = A0_2._on_btn_go
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_incontrol_detail
  L5_2 = A0_2._on_btn_avatar_detail
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.QuestGetReward
  L5_2 = L3_1._on_quest_get_reward
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.activity_desc_btn
  L5_2 = A0_2._on_desc_btn_clicked
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ActivityQuestReward"
  L5_2 = A0_2._activity_data
  L5_2 = L5_2.PanelID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.red_dot_btn_get
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L3_1._on_select = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L3_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L3_1._setup_tab_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._setup_reddot = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._init_reward_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_mission
  L1_2(L2_2)
end
L3_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  A0_2._cs_unlock_main_mission_id_list = L1_2
  L1_2 = {}
  A0_2._unlock_mission_list = L1_2
  L1_2 = A0_2._cs_unlock_main_mission_id_list
  L2_2 = L1_2
  L1_2 = L1_2.Add
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._unlock_mission_list
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L3_1._init_cs_unlock_main_mission_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_cs_unlock_main_mission_list
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L3_2 = L1_2
  L2_2 = L1_2.MainMissionDataPromised
  L4_2 = A0_2._cs_unlock_main_mission_id_list
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3
  end
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_state
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L3_1._setup_mission = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_condition_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1._setup_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = A0_2.mission_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.IsFinish
    if not L6_2 then
      return L4_2
    end
  end
  L1_2 = 1
  return L1_2
end
L3_1._get_first_unfinished_mission_index = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._setup_bg = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.PanelDesc
  L1_2(L2_2, L3_2)
end
L3_1._setup_desc = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_info
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_id
  L1_2(L2_2, L3_2)
end
L3_1._setup_avatar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.activity_brief_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TagDesc
  L1_2(L2_2, L3_2)
end
L3_1._setup_title = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._quest_data_list = L1_2
  L1_2 = 0
  L2_2 = A0_2._quest_id_list
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._quest_id_list
    L5_2 = L5_2[L4_2]
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.TryGetQuestData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2._quest_data_list
    L8_2 = A0_2._quest_data_list
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L7_2[L8_2] = L6_2
  end
end
L3_1._refresh_quest_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._quest_data_list
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = pairs
  L2_2 = A0_2._quest_data_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Status
    L7_2 = CS
    L7_2 = L7_2.BLHLCHNAJKK
    L7_2 = L7_2.CDJHHIHBNMN
    if L6_2 ~= L7_2 then
      L6_2 = false
      return L6_2
    end
  end
  L1_2 = true
  return L1_2
end
L3_1._is_quest_finish = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._quest_data_list
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = pairs
  L2_2 = A0_2._quest_data_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Status
    L7_2 = CS
    L7_2 = L7_2.BLHLCHNAJKK
    L7_2 = L7_2.FMLBEGJJHMJ
    if L6_2 ~= L7_2 then
      L6_2 = false
      return L6_2
    end
  end
  L1_2 = true
  return L1_2
end
L3_1._is_quest_close = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.show_introduce
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.TagDesc
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.IntroDesc
  L1_2(L2_2, L3_2)
end
L3_1._on_desc_btn_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_quest_finish
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_quest_close
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_extra
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_extra
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_btn_extra
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_Quest_Label_Got"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_btn_extra
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_QuestOverviewtDialog_Btn01"
    L3_2(L4_2, L5_2)
  end
end
L3_1._setup_reward_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._is_quest_finish
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_quest_close
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = CS
      L1_2 = L1_2.System
      L1_2 = L1_2.Collections
      L1_2 = L1_2.Generic
      L1_2 = L1_2.List
      L2_2 = CS
      L2_2 = L2_2.System
      L2_2 = L2_2.UInt32
      L1_2 = L1_2(L2_2)
      L1_2 = L1_2()
      L2_2 = 0
      L3_2 = A0_2._quest_id_list
      L3_2 = L3_2.Length
      L3_2 = L3_2 - 1
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L7_2 = L1_2
        L6_2 = L1_2.Add
        L8_2 = A0_2._quest_id_list
        L8_2 = L8_2[L5_2]
        L6_2(L7_2, L8_2)
      end
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.NetworkManager
      L2_2 = L2_2.OOGONDGGKMI
      L3_2 = L2_2
      L2_2 = L2_2.AMFNHGKACLB
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L3_1._on_btn_get = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.MainMissionDataPromised
  L3_2 = A0_2._cs_unlock_main_mission_id_list
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = 0
    L1_3 = A0_2._cs_unlock_main_mission_id_list
    L1_3 = L1_3.Count
    L1_3 = L1_3 - 1
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = A0_2._cs_unlock_main_mission_id_list
      L4_3 = L4_3[L3_3]
      L5_3 = L1_1
      L6_3 = L5_3
      L5_3 = L5_3.TryGetMainMissionData
      L7_3 = L4_3
      L5_3 = L5_3(L6_3, L7_3)
      if L5_3 ~= nil then
        L6_3 = L5_3.IsFinish
        if not L6_3 then
          L6_3 = L5_3.IsStart
          if L6_3 then
            L6_3 = G
            L6_3 = L6_3.MissionUtils
            L6_3 = L6_3.common_jump_to_mission_by_main_mission
            L7_3 = L5_3
            L6_3(L7_3)
          else
            L6_3 = G
            L6_3 = L6_3.TextmapStatic
            L6_3 = L6_3.GetText
            L7_3 = "UIText_GameplayGuide_UnlockChallengeMaze"
            L6_3 = L6_3(L7_3)
            L7_3 = G
            L7_3 = L7_3.NotifyManager
            L7_3 = L7_3.notify
            L8_3 = G
            L8_3 = L8_3.CS
            L8_3 = L8_3.NotifyType
            L8_3 = L8_3.UIPileToastMessageString
            L9_3 = L6_3
            L7_3(L8_3, L9_3)
          end
          return
        end
      end
    end
    L0_3 = G
    L0_3 = L0_3.GotoManager
    L0_3 = L0_3.Goto
    L1_3 = A0_2._goto_id
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L3_1._on_btn_go = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.GotoManager
  L2_2 = L2_2.GotoByType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GotoType
  L3_2 = L3_2.Mission
  L3_2 = #L3_2
  L4_2 = {}
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionType
  L5_2 = L5_2.None
  L5_2 = #L5_2
  L6_2 = A1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
end
L3_1._goto_mission_panel = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L2_2 = L2_2.activeSelf
  if L2_2 and nil ~= A1_2 then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.show_reward_dialog
    L3_2 = A1_2
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L3_1._on_quest_get_reward = L4_1
return L3_1
