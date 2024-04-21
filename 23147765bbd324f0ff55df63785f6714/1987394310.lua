local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.LightCone.LightConeContainerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeContainerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.Reward.ClockParkQuestRewardItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.Reward.ClockParkLightConeRewardPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ClockParkLightConeRewardPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_EnterWithCut
  L1_2 = L1_2 | L2_2
  A0_2._transition_style = L1_2
  A0_2._is_save_by_click = false
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ClockParkLightConeRewardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._light_cone_panel = nil
  L1_2 = {}
  A0_2._navi_target_btns = L1_2
end
L1_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._activity_data = A1_2
  A0_2._light_cone_quest_row = nil
  L2_2 = {}
  A0_2._rewards_quest_rows = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ClockParkProgressRewardExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    if L3_2 ~= nil then
      L4_2 = A0_2._light_cone_quest_row
      if L4_2 == nil then
        A0_2._light_cone_quest_row = L3_2
      else
        L4_2 = table
        L4_2 = L4_2.insert
        L5_2 = A0_2._rewards_quest_rows
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L1_1.init = L3_1
function L3_1(A0_2)
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
  L3_2 = L3_2.btn_rank
  L4_2 = A0_2._on_btn_rank
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_goto
  L4_2 = A0_2._on_btn_goto
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_goto_lightcone
  L4_2 = A0_2._on_btn_goto_lightcone
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_light_cone_detail
  L4_2 = A0_2._on_btn_light_cone_detail
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_nav_goto_lightcone
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_nav_goto_lightcone
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_btn_goto_lightcone
    L0_3.ActionEnabled = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_tip_goto_lightcone
    L0_3.IsShowTip = true
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_nav_goto_lightcone
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.mono_btn_goto_lightcone
      L0_3.ActionEnabled = false
      L0_3 = A0_2._binder
      L0_3 = L0_3.mono_tip_goto_lightcone
      L0_3.IsShowTip = false
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_nav_goto
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_nav_goto
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_btn_goto
    L0_3.ActionEnabled = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_tip_goto
    L0_3.IsShowTip = true
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_nav_goto
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.mono_btn_goto
      L0_3.ActionEnabled = false
      L0_3 = A0_2._binder
      L0_3 = L0_3.mono_tip_goto
      L0_3.IsShowTip = false
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = {}
  A0_2._quest_reward_panels = L1_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rewards
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ClockParkQuestRewardItemPanel
    L8_2 = G
    L8_2 = L8_2.ClockParkQuestRewardItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_rewards
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._quest_reward_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeContainerPanel
  L4_2 = G
  L4_2 = L4_2.LightConeContainerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._light_cone_panel = L1_2
  L1_2 = A0_2._light_cone_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_light_cone_panel
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._light_cone_panel = nil
end
L1_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._skip_fade_in_anim
  if L1_2 ~= true then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation
    L3_2 = "ClockParkLightConeRewardPage_FadeIn_Second"
    L1_2(L2_2, L3_2)
  end
  A0_2._skip_fade_in_anim = false
end
L1_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._skip_fade_in_anim = true
end
L1_1._on_first_child_dialog_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
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
L1_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_nav_goto_lightcone
  L1_2 = L1_2.gameObject
  return L1_2
end
L1_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_light_cone_panel_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_quest_reward_panels_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L1_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_light_cone_data
  L1_2(L2_2)
  L1_2 = A0_2._light_cone_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._light_cone_display_data
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L2_2 = A0_2._light_cone_quest_data
  if L2_2 then
    L2_2 = A0_2._light_cone_quest_data
    L1_2 = L2_2.Status
  else
    L2_2 = CS
    L2_2 = L2_2.LEOGBBOPKKO
    L1_2 = L2_2.BFIPIHOJADI
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_rank
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_receive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L4_2 = L1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_receive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_got_lightcone
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_goto_lightcone
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  L4_2 = L1_2 ~= L4_2
  L2_2(L3_2, L4_2)
end
L1_1._setup_light_cone_panel_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._light_cone_quest_row
  L1_2 = L1_2.QuestID
  A0_2._light_cone_quest_id = L1_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._light_cone_quest_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._light_cone_quest_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.QuestDataExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._light_cone_quest_id
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.RewardID
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.CreateConfigIDList
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2[1]
  A0_2._light_cone_id = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.InventoryModule
  L5_2 = L4_2
  L4_2 = L4_2.GetEquipmentDataByConfigID
  L6_2 = A0_2._light_cone_id
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._light_cone_rank_data = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ItemFactory
  L4_2 = L4_2.CreateEquipmentItemData
  L5_2 = A0_2._light_cone_id
  L4_2 = L4_2(L5_2)
  A0_2._light_cone_display_data = L4_2
end
L1_1._get_light_cone_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_goto
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L0_1.Progress
  L3_2 = L3_2 < 10000
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_got
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L0_1.Progress
  L3_2 = 10000 <= L3_2
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._quest_reward_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._quest_reward_panels
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._rewards_quest_rows
    L8_2 = L8_2[L4_2]
    L8_2 = L8_2.QuestID
    L9_2 = L4_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L1_1._setup_quest_reward_panels_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._light_cone_quest_data
  if L1_2 then
    L1_2 = A0_2._light_cone_quest_data
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
      L3_2 = A0_2._light_cone_quest_id
      L1_2(L2_2, L3_2)
    end
  end
end
L1_1._on_btn_receive = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.LightCone.LightConeDetailPage"
  L3_2 = A0_2._light_cone_rank_data
  L4_2 = 3
  L5_2 = nil
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._on_btn_rank = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Gacha.GachaDetail.GachaLightConeDetailPage"
  L3_2 = A0_2._light_cone_display_data
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_light_cone_detail = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GotoMapParam
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "Activity_Panel_Goto_Mapping_Info"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.UintValue
  L1_2.MappingInfoID = L2_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GotoMap
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L1_1._on_btn_goto = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Activity_ClockPark_LightCone_Mission"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.UintValue
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
  L6_2 = L1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
end
L1_1._on_btn_goto_lightcone = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L1_1._on_quest_get_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._expire_call_back = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
end
L1_1._setup_in_control_button_enable = L3_1
return L1_1
