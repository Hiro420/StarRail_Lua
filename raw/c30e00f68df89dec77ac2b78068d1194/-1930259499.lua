local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.Reward.ClockParkRewardQuestListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.Reward.ClockParkRewardQuestListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.Reward.ClockParkResidentRewardPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = "Activity_Quest_Big_Reward_ID_Resident"
L3_1 = "Activity_Quest_Reward_ID_Resident"
L4_1 = "ClockParkNormalRewardPage_LevelUp"
L5_1 = "ClockParkResidentRewardLevelup"
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "ClockParkResidentRewardPage"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._is_save_by_click = false
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ClockParkResidentRewardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._light_cone_panel = nil
  L1_2 = {}
  A0_2._navi_target_panels = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L6_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive
  L4_2 = A0_2._on_btn_receive
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_big_reward
  L4_2 = A0_2._on_btn_big_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ClockParkRewardQuestListPanel
  L4_2 = G
  L4_2 = L4_2.ClockParkRewardQuestListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.panel_quest_list = L1_2
  L1_2 = A0_2.panel_quest_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_list_reward
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  A0_2._reward_id = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  L2_2 = {}
  A0_2._quest_id_list = L2_2
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._quest_id_list
    L8_2 = L1_2[L5_2]
    L8_2 = L8_2.IntValue
    L6_2(L7_2, L8_2)
  end
  A0_2._anim_played = false
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIAnimationEvent
  L5_2 = A0_2._on_ui_animation_event
  L2_2(L3_2, L4_2, L5_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L6_1._init_ui_navigation = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L6_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.panel_quest_list
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L6_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._setup_navigation = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L5_1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_reward_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._progress
    L2_2(L3_2, L4_2)
  end
end
L6_1._on_ui_animation_event = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_quest_reward_panels_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_big_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._reward_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._big_quest_data = L1_2
  L1_2 = {}
  A0_2._quest_datas = L1_2
  A0_2._progress = 0
  L1_2 = 1
  L2_2 = A0_2._quest_id_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.TryGetQuestData
    L7_2 = A0_2._quest_id_list
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._quest_datas
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      L6_2 = L5_2.Status
      L7_2 = CS
      L7_2 = L7_2.LEOGBBOPKKO
      L7_2 = L7_2.JKFPIINHGPD
      if L6_2 ~= L7_2 then
        L6_2 = L5_2.Status
        L7_2 = CS
        L7_2 = L7_2.LEOGBBOPKKO
        L7_2 = L7_2.CMOFEAFMGAK
        if L6_2 ~= L7_2 then
          goto lbl_41
        end
      end
      L6_2 = A0_2._progress
      L6_2 = L6_2 + 1
      A0_2._progress = L6_2
    end
    ::lbl_41::
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_right_panel_layout
  L2_2 = L2_2.transform
  L1_2(L2_2)
  L1_2 = A0_2.panel_quest_list
  L2_2 = L1_2
  L1_2 = L1_2.set_navigation_zone_type
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.panel_quest_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._quest_datas
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_receive
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._big_quest_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_received
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._big_quest_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._big_quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.CMOFEAFMGAK
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_recieve
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Quest_Label_Got"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_recieve
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_QuestMissionGet_Btn"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._quest_id_list
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_reward_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._progress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_finish_script_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._progress
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.GetClockParkFinishResidentRewardSeen
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._progress
  if L2_2 ~= L1_2 then
    L2_2 = A0_2._anim_played
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_prev_count
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetText
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.Prefs
      L2_2 = L2_2.User
      L3_2 = L2_2
      L2_2 = L2_2.SetClockParkFinishResidentRewardSeen
      L4_2 = A0_2._progress
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_reward_levelup
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = L4_1
      L2_2(L3_2, L4_2)
      A0_2._anim_played = true
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_reward_progress
  L3_2 = A0_2._progress
  L4_2 = A0_2._quest_id_list
  L4_2 = #L4_2
  L3_2 = L3_2 / L4_2
  L2_2.value = L3_2
end
L6_1._setup_quest_reward_panels_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTableSorted
  L2_2 = A0_2._big_quest_data
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2[1]
  L3_2 = L3_2.ItemID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_big_reward
  L6_2 = L2_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
end
L6_1._setup_big_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._big_quest_data
  if L1_2 then
    L1_2 = A0_2._big_quest_data
    L1_2 = L1_2.Status
    L2_2 = CS
    L2_2 = L2_2.LEOGBBOPKKO
    L2_2 = L2_2.JKFPIINHGPD
    if L1_2 == L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_NetworkManager
      L2_2 = L1_2
      L1_2 = L1_2.JCCHEMBPEEE
      L3_2 = A0_2._reward_id
      L1_2(L2_2, L3_2)
      A0_2._receiving_big_reward = true
    end
  end
end
L6_1._on_btn_receive = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._big_quest_data
  L2_2 = L2_2.RewardID
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.CreateRewardItemTableSorted
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L5_2 = L1_2
  L4_2 = L1_2.setup_view
  L6_2 = L3_2[1]
  L6_2 = L6_2.ItemID
  L4_2(L5_2, L6_2)
end
L6_1._on_btn_big_reward = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L6_1._on_quest_get_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L6_1._expire_call_back = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
end
L6_1._setup_in_control_button_enable = L7_1
return L6_1
