local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.BasePage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityCompanion.SilverWolfCompanionPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityCompanion.SilverWolfDecalIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityCompanion.SilverWolfDecalIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityCompanion.SilverWolfLightConeIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityCompanion.SilverWolfLightConeIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityCompanion.SilverWolfCompanionStatePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityCompanion.SilverWolfCompanionStatePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.TopBarAreaPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.TopBarAreaPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfCompanionPage"
L2_1 = G
L2_1 = L2_1.BasePage
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SilverWolfModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ActivityModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.SilverWolfUtils
L4_1 = 8001
L5_1 = 5025
L6_1 = 6
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SilverWolfCompanionPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_BelowBlack
  A0_2._transition_style = L1_2
  A0_2._lightcone_collected = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = 6
  L3_2 = 1
  L4_2 = 7
  L5_2 = 8
  L6_2 = 2
  L7_2 = 5
  L8_2 = 4
  L9_2 = 3
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  A0_2._lightcone_physics_index = L1_2
  A0_2._lightcone_click = false
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_goto_companion
  L4_2 = A0_2._on_goto_companion
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = A0_2._on_btn_intro
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_goto_decal
  L4_2 = A0_2._on_goto_decal
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SilverWolfActivityScheduleEnd
  L4_2 = A0_2._on_activity_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_decal_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_lightcone_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_state_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_res_bar
  L1_2(L2_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._lightcone_panels = L1_2
  L1_2 = {}
  A0_2._decal_panels = L1_2
  L1_2 = {}
  A0_2._lightcone_panels_by_quest_id = L1_2
  L1_2 = {}
  A0_2._decal_panels_by_quest_id = L1_2
  A0_2._state_panel = nil
  A0_2._lightcone_panel_to_collect_index = nil
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L7_1
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
L0_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btns_decal
  L2_2 = L6_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.transform
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_quest_update
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityConstValueSilverWolfExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "SilverWolf_ResourceBar"
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._top_bar_area_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.Value
  L2_2(L3_2, L4_2)
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetSilverWolfActivityData
  L2_2 = L2_2(L3_2)
  A0_2._activity_data = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_activity_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.TitleName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_resource_tips
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_materal_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_animation_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.TutorialManager
  L3_2 = L2_2
  L2_2 = L2_2.get_running_tutorial_id
  L2_2 = L2_2(L3_2)
  L3_2 = L5_1
  if L2_2 ~= L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._check_new_finish_quest
    L2_2(L3_2)
  else
    A0_2._new_finish_quest_checked = false
  end
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityConstValueSilverWolfExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "SilverWolf_Equipment__Promotion_ItemID"
  L1_2 = L1_2(L2_2)
  L2_2 = tonumber
  L3_2 = L1_2.Value
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2.async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_material
  L7_2 = L3_2.ItemFigureIconPath
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_materal_icon = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_resource_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_SilverWolf_Collection_CurrencyTipsNum"
  L4_2 = L3_1.GetCompanionRewardCurrencyNum
  L4_2 = L4_2()
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_resource
  L4_2 = L3_1.GetCurrencyIcon
  L4_2 = L4_2()
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_resource_tips = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._new_finish_quest_checked
  if L1_2 == false then
    L2_2 = A0_2
    L1_2 = A0_2._check_new_finish_quest
    L1_2(L2_2)
  end
end
L0_1._on_first_child_dialog_close = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L3_1.GetLightConeQuestData
  L2_2 = A0_2._lightcone_id
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.Status
    L3_2 = CS
    L3_2 = L3_2.LEOGBBOPKKO
    L3_2 = L3_2.CMOFEAFMGAK
    L2_2 = L2_2 == L3_2
    A0_2._lightcone_collected = L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator
  L3_2 = L2_2
  L2_2 = L2_2.SetInteger
  L4_2 = "Status"
  L5_2 = A0_2._lightcone_collected
  if L5_2 then
    L5_2 = 2
    if L5_2 then
      goto lbl_26
    end
  end
  L5_2 = 1
  ::lbl_26::
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = 1
  L3_2 = A0_2._lightcone_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._lightcone_panels
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.init_animation_state
    L6_2(L7_2)
  end
  L2_2 = 1
  L3_2 = A0_2._decal_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._decal_panels
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.init_animation_state
    L6_2(L7_2)
  end
end
L0_1._init_animation_state = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.SilverWolfNewFinishQuest
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._decal_panels_by_quest_id
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.add_unlock_animation_event
    function L10_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_decal_panel_unlock_hint_finish
      L2_3 = L7_2
      L0_3(L1_3, L2_3)
    end
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._decal_panels_by_quest_id
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.setup_unlock_trigger
    L8_2(L9_2)
  end
  L4_2 = L2_2
  L3_2 = L2_2.Clear
  L3_2(L4_2)
end
L0_1._check_new_finish_quest = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._lightcone_panels_by_quest_id
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.setup_unlock_trigger
  L2_2(L3_2)
end
L0_1._on_decal_panel_unlock_hint_finish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._decal_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._decal_panels
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L5_2(L6_2)
  end
  L1_2 = 1
  L2_2 = A0_2._lightcone_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._lightcone_panels
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L5_2(L6_2)
  end
  L1_2 = L3_1.GetLightConeQuestData
  L2_2 = A0_2._lightcone_id
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.Status
    L3_2 = CS
    L3_2 = L3_2.LEOGBBOPKKO
    L3_2 = L3_2.CMOFEAFMGAK
    L2_2 = L2_2 == L3_2
    A0_2._lightcone_collected = L2_2
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDecalCollectedNum
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._lightcone_collected
  if L3_2 then
    L3_2 = A0_2._state_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_collected_view
    L3_2(L4_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._get_collected_light_cone
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._state_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_collecting_view
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._collection_decal_list
    L4_2 = L4_2.Count
    if L3_2 == L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._send_get_lightcone_quest
      L4_2(L5_2)
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_box_chip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._lightcone_collected
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_resource_finish
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._lightcone_collected
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._collection_decal_list
  L3_2 = L3_2.Count
  L3_2 = L2_2 >= L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_complete
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_normal
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._init_ui_navigation
  L4_2(L5_2)
end
L0_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = A0_2._collection_decal_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.SilverWolfLightConeIconPanel
    L8_2 = G
    L8_2 = L8_2.SilverWolfLightConeIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = A0_2._collection_decal_list
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.PositionID
    L7_2 = A0_2._collection_decal_list
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.QuestID
    L9_2 = L5_2
    L8_2 = L5_2.bind
    L10_2 = A0_2._binder
    L10_2 = L10_2.lightcone_items
    L10_2 = L10_2[L6_2]
    L8_2(L9_2, L10_2)
    L9_2 = L5_2
    L8_2 = L5_2.setup_quest_id
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._lightcone_panels
    L8_2[L6_2] = L5_2
    L8_2 = A0_2._lightcone_panels_by_quest_id
    L8_2[L7_2] = L5_2
  end
end
L0_1._init_lightcone_panels = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetDecalCollectionRows
  L1_2 = L1_2(L2_2)
  A0_2._collection_decal_list = L1_2
  L1_2 = 0
  L2_2 = A0_2._collection_decal_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.SilverWolfDecalIconPanel
    L8_2 = G
    L8_2 = L8_2.SilverWolfDecalIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = A0_2._collection_decal_list
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.PositionID
    L7_2 = A0_2._collection_decal_list
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.TypeParam
    L8_2 = A0_2._collection_decal_list
    L8_2 = L8_2[L4_2]
    L8_2 = L8_2.QuestID
    L10_2 = L5_2
    L9_2 = L5_2.bind
    L11_2 = A0_2._binder
    L11_2 = L11_2.decal_items
    L11_2 = L11_2[L6_2]
    L9_2(L10_2, L11_2)
    L10_2 = L5_2
    L9_2 = L5_2.setup_decal_id
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L10_2 = L5_2
    L9_2 = L5_2.setup_quest_id
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L10_2 = L5_2
    L9_2 = L5_2.register_click_callback
    L11_2 = A0_2._on_lightcone_panel_click
    L12_2 = A0_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = A0_2._decal_panels
    L9_2[L6_2] = L5_2
    L9_2 = A0_2._decal_panels_by_quest_id
    L9_2[L8_2] = L5_2
  end
end
L0_1._init_decal_panels = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.SilverWolfCompanionStatePanel
  L4_2 = G
  L4_2 = L4_2.SilverWolfCompanionStatePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._state_panel = L1_2
  L1_2 = A0_2._state_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_state_panel
  L1_2(L2_2, L3_2)
  L1_2 = tonumber
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityConstValueSilverWolfExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "SilverWolf_Equipment_Display"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L1_2 = L1_2(L2_2)
  A0_2._lightcone_id = L1_2
  L1_2 = A0_2._state_panel
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2._lightcone_id
  L4_2 = A0_2._collection_decal_list
  L4_2 = L4_2.Count
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_state_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.TopBarAreaPanel
  L4_2 = G
  L4_2 = L4_2.TopBarAreaPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._top_bar_area_panel = L1_2
  L1_2 = A0_2._top_bar_area_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_top_bar_area
  L1_2(L2_2, L3_2)
end
L0_1._init_res_bar = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = A0_2._collection_decal_list
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._collection_decal_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.QuestID
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_ModuleManager
    L7_2 = L7_2.QuestModule
    L8_2 = L7_2
    L7_2 = L7_2.TryGetQuestData
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.Status
    L9_2 = CS
    L9_2 = L9_2.LEOGBBOPKKO
    L9_2 = L9_2.CMOFEAFMGAK
    if L8_2 == L9_2 then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
L0_1._get_collected_light_cone = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_back = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._send_get_light_cone
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "CollectedHint"
  L1_2(L2_2, L3_2)
  L1_2 = L3_1.GetLightConeQuestData
  L2_2 = A0_2._lightcone_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L4_2 = L2_2
  L3_2 = L2_2.Add
  L5_2 = L1_2.ID
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_NetworkManager
  L4_2 = L3_2
  L3_2 = L3_2.JCCHEMBPEEE
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  A0_2._send_get_light_cone = true
end
L0_1._send_get_lightcone_quest = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "GotoMission"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.SilverWolfUtils
  L1_2 = L1_2.goto_companion_mission
  L1_2()
end
L0_1._on_goto_companion = L7_1
function L7_1(A0_2, A1_2)
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
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_quest_get_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_activity_end = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._state_panel = nil
  A0_2._lightcone_panels = nil
  A0_2._decal_panels = nil
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.setup_btn_navigation
  L2_2 = A0_2._binder
  L2_2 = L2_2.btns_decal
  L2_2 = L2_2[7]
  L3_2 = A0_2._binder
  L3_2 = L3_2.btns_decal
  L3_2 = L3_2[1]
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.setup_btn_navigation
  L2_2 = A0_2._binder
  L2_2 = L2_2.btns_decal
  L2_2 = L2_2[4]
  L3_2 = A0_2._binder
  L3_2 = L3_2.btns_decal
  L3_2 = L3_2[5]
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_naviagation_lightcone_collected = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.setup_btn_navigation
  L2_2 = A0_2._binder
  L2_2 = L2_2.btns_decal
  L2_2 = L2_2[4]
  L3_2 = A0_2._binder
  L3_2 = L3_2.btns_lightcone
  L3_2 = L3_2[6]
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.setup_btn_navigation
  L2_2 = A0_2._binder
  L2_2 = L2_2.btns_decal
  L2_2 = L2_2[7]
  L3_2 = A0_2._binder
  L3_2 = L3_2.btns_lightcone
  L3_2 = L3_2[6]
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.setup_btn_navigation
  L2_2 = A0_2._binder
  L2_2 = L2_2.btns_lightcone
  L2_2 = L2_2[1]
  L3_2 = A0_2._binder
  L3_2 = L3_2.btns_decal
  L3_2 = L3_2[5]
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.setup_btn_navigation
  L2_2 = A0_2._binder
  L2_2 = L2_2.btns_lightcone
  L2_2 = L2_2[1]
  L3_2 = A0_2._binder
  L3_2 = L3_2.btns_decal
  L3_2 = L3_2[1]
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_naviagation_lightcone_collecting = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._lightcone_click = true
end
L0_1._on_lightcone_panel_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Tutorial.GuideDetailDialog"
  L3_2 = L4_1
  L4_2 = nil
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_intro = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.QuestModule
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L9_2 = L2_2
    L8_2 = L2_2.TryGetQuestData
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L9_2 = L8_2.Status
      L10_2 = CS
      L10_2 = L10_2.LEOGBBOPKKO
      L10_2 = L10_2.CMOFEAFMGAK
      if L9_2 == L10_2 then
        L9_2 = A0_2._lightcone_panels_by_quest_id
        L9_2 = L9_2[L7_2]
        if L9_2 then
          L9_2 = A0_2._lightcone_panels_by_quest_id
          L9_2 = L9_2[L7_2]
          L10_2 = L9_2
          L9_2 = L9_2.setup_active_trigger
          L9_2(L10_2)
          L9_2 = A0_2._decal_panels_by_quest_id
          L9_2 = L9_2[L7_2]
          L10_2 = L9_2
          L9_2 = L9_2.setup_active_trigger
          L9_2(L10_2)
        end
      end
    end
  end
end
L0_1._on_quest_update = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.GotoByType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoType
  L2_2 = L2_2.PhotoGraph
  L2_2 = #L2_2
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PhotoGraphModeType
  L4_2 = L4_2.CommonShotFirstPerson
  L4_2 = #L4_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.PhotoGraphUIMode
  L5_2 = L5_2.CommonShotDecal
  L5_2 = #L5_2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_goto_decal = L7_1
return L0_1
