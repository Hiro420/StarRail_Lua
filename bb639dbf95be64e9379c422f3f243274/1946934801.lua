local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.SpaceZooModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.SpaceZooChannelType
L4_1 = "UIText_ActivitySpaceZoo_Collection_Locked"
L5_1 = "UIText_ActivitySpaceZoo_PleaseChooseTwo"
L6_1 = "UIText_ActivitySpaceZoo_BagLimit"
L7_1 = "UIText_ActivitySpaceZoo_TwiceToast"
L8_1 = 9601
L9_1 = 31
L10_1 = "%"
L11_1 = "9628"
L12_1 = "SpaceZooMainPage_GenerateHint"
L13_1 = "SpaceZooMainPageToCakeChooseDialog"
L14_1 = "SpaceZooMainPageFromCakeChooseDialog"
L15_1 = "SpaceZoo_ResolutionPanelHint"
L16_1 = "SpaceZoo_ResolutionPanelHint_SP"
L17_1 = 0.5
L18_1 = "9631"
L19_1 = 10008
L20_1 = "9623"
L21_1 = 10001
function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SpaceZooMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_EnterWithCut
  L1_2 = L1_2 | L2_2
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_ExitWithCut
  L1_2 = L1_2 | L2_2
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._cur_resolution = 0
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UI3DUtilities
  L1_2 = L1_2.EnableHiZOC
  L2_2 = false
  L1_2(L2_2)
end
L0_1.ctor = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1.SpaceZooData
  A0_2._space_zoo_data = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSpaceZooActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SpaceZooLastBreedCats
  A0_2._breed_cats_pref = L1_2
end
L0_1.init = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_collection
  L4_2 = A0_2._on_btn_collection_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bag
  L4_2 = A0_2._on_btn_bag_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rule
  L4_2 = A0_2._on_btn_rule_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_breed
  L4_2 = A0_2._on_btn_breed_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exp_reward
  L4_2 = A0_2._on_btn_exp_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._on_slot_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._on_slot_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_cat_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_btn_callback
  L3_2 = A0_2._on_collection_car_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L12_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  A0_2._breed_anim_length = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_breed_anim_finish
  L4_2 = A0_2._breed_anim_length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._breed_anim_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_inc_anim_delay_finish
  L4_2 = L17_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._inc_anim_delay_timer = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.inc_anim_resolution
  L2_2 = L1_2
  L1_2 = L1_2.SetFormatText
  L3_2 = "{0}"
  L4_2 = L10_1
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = L9_1
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_handle_mutate_cat
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._notify_task_unlock
  L1_2(L2_2)
end
L0_1._setup_view = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SpaceZooDataRefresh
  L4_2 = A0_2._on_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SpaceZooBreedFinish
  L4_2 = A0_2._on_breed_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SpaceZooMutateFinish
  L4_2 = A0_2._on_mutate_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_cat_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset_is_refreshed
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._notify_task_unlock
  L1_2(L2_2)
end
L0_1._on_return_to_top = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.ForceSave
  L1_2()
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UI3DUtilities
  L1_2 = L1_2.EnableHiZOC
  L2_2 = true
  L1_2(L2_2)
end
L0_1._on_dispose = L22_1
function L22_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_collection
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_collection
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bag
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_bag
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_exp_reward
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_exp_reward
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._space_zoo_data
  L1_2 = L1_2.HaveMutateEvent
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_NetworkManager
    L2_2 = L1_2
    L1_2 = L1_2.LPPKKBHBJFN
    L3_2 = A0_2._space_zoo_data
    L3_2 = L3_2.WaitMutateCat
    L3_2 = L3_2.UniqueID
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._try_handle_mutate_cat = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_limited_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_function_unlock
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_breeds_cat
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_exp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_collect_cat
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_resolution
  L1_2(L2_2)
end
L0_1._refresh = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._activity_data
  if L1_2 ~= nil then
    L1_2 = A0_2._activity_data
    L2_2 = L1_2
    L1_2 = L1_2.IsInSchedule
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_15
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_limited_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_15::
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_limited_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_time_reward
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTimeByTimeStamp
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeStamp
  L4_2 = A0_2._on_timer_time_out
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_limited_reward = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_collection
  L2_2 = L2_1.IsSpecialEventUnlock
  L2_2 = not L2_2
  L1_2.IsInFakeDisableState = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_handbook_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L2_1.IsSpecialEventUnlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_function_unlock = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._breed_cats_pref
  L2_2 = L1_2
  L1_2 = L1_2.TryGetValue
  L3_2 = 0
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2._space_zoo_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCatData
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.left_slot_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  A0_2._left_slot_cat = L3_2
  L4_2 = A0_2._breed_cats_pref
  L5_2 = L4_2
  L4_2 = L4_2.TryGetValue
  L6_2 = 1
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2._space_zoo_data
  L7_2 = L6_2
  L6_2 = L6_2.GetCatData
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.right_slot_panel
  L8_2 = L7_2
  L7_2 = L7_2.setup_view
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  A0_2._right_slot_cat = L6_2
end
L0_1._setup_breeds_cat = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._space_zoo_data
  L1_2 = L1_2.EXP
  L2_2 = A0_2._space_zoo_data
  L2_2 = L2_2.MaxExp
  L3_2 = L1_2 / L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.slider_exp_progress
  L4_2.fillAmount = L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_cur_exp
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_max_exp
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_phase
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._space_zoo_data
  L6_2 = L6_2.Level
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_max_level
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._space_zoo_data
  L6_2 = L6_2.IsEXPMax
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_level
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._space_zoo_data
  L6_2 = L6_2.IsEXPMax
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_exp = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.IsSpecialEventUnlock
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.collection_cat_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_cat_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SpaceZooCollectCat
  if L1_2 == 0 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L2_2 = G
    L2_2 = L2_2.SpaceZooUtils
    L2_2 = L2_2.get_first_ssr_cat_id
    L2_2 = L2_2()
    L1_2.SpaceZooCollectCat = L2_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_cat_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._setup_collect_cat = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SpaceZooCollectCat
  A0_2._collect_cat_id = L1_2
  L1_2 = A0_2._space_zoo_data
  L2_2 = L1_2
  L1_2 = L1_2.GetSpecialEventData
  L3_2 = A0_2._collect_cat_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._special_event_data = L1_2
  L1_2 = A0_2._special_event_data
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_resolution
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    A0_2._cur_resolution = 0
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SpaceZooUtils
  L1_2 = L1_2.IsMatchTarget
  L2_2 = A0_2._left_slot_cat
  L3_2 = A0_2._right_slot_cat
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2._special_event_data
    L2_2 = L2_2.Resolution
    if L2_2 then
      goto lbl_38
    end
  end
  L2_2 = 0
  ::lbl_38::
  A0_2._cur_resolution = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_resolution
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._cur_resolution
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_resolution
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._cur_resolution
  L5_2 = L10_1
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_resolution = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SpaceZooCollectCat
  L2_2 = A0_2._space_zoo_data
  L3_2 = L2_2
  L2_2 = L2_2.GetSpecialEventData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.GetSpecialCatTipFeature
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.SpaceZooFeatureConfigExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L3_2[L7_2]
    L8_2 = L8_2(L9_2)
    if L8_2 ~= nil then
      L9_2 = L8_2.Channel
      L10_2 = L3_1.BodyDecal
      if L9_2 == L10_2 then
        L9_2 = G
        L9_2 = L9_2.NotifyManager
        L9_2 = L9_2.notify
        L10_2 = G
        L10_2 = L10_2.CS
        L10_2 = L10_2.NotifyType
        L10_2 = L10_2.TutorialTaskUnlock
        L11_2 = L11_1
        L9_2(L10_2, L11_2)
        break
      end
    end
  end
  L4_2 = L19_1
  if L1_2 == L4_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.TutorialTaskUnlock
    L6_2 = L18_1
    L4_2(L5_2, L6_2)
  end
  L4_2 = L21_1
  if L1_2 == L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.SpaceZooUtils
    L4_2 = L4_2.IsMatchTarget
    L5_2 = A0_2._left_slot_cat
    L6_2 = A0_2._right_slot_cat
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = G
      L4_2 = L4_2.NotifyManager
      L4_2 = L4_2.notify
      L5_2 = G
      L5_2 = L5_2.CS
      L5_2 = L5_2.NotifyType
      L5_2 = L5_2.TutorialTaskUnlock
      L6_2 = L20_1
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._notify_task_unlock = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_data_refresh = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_timer_time_out = L22_1
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._breed_result_cat = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block
  L4_2 = A0_2._breed_anim_length
  L5_2 = A0_2._breed_anim_length
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._breed_anim_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._breed_anim_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L12_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cur_resolution
  if L2_2 == 0 then
    return
  end
  L2_2 = A0_2._inc_anim_delay_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._inc_anim_delay_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
  L2_2 = A0_2._breed_result_cat
  L2_2 = L2_2.HaveSpecialMutateEvent
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_resolution
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L16_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_resolution
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L15_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_breed_finish = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._inc_anim_delay_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.inc_anim_resolution
  L2_2 = A0_2._cur_resolution
  L1_2.StartValue = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.inc_anim_resolution
  L2_2 = A0_2._special_event_data
  L2_2 = L2_2.Resolution
  L1_2.EndValue = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.inc_anim_resolution
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
end
L0_1._on_inc_anim_delay_finish = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._breed_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.SpaceZoo.SpaceZooBreedPerformanceDialog"
  L3_2 = A0_2._breed_result_cat
  L4_2 = A0_2._left_slot_cat
  L5_2 = A0_2._right_slot_cat
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_breed_anim_finish = L22_1
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_resolution
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.SpaceZoo.SpaceZooBreedResultDialog"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_mutate_finish = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.IsSpecialEventUnlock
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.SpaceZoo.SpaceZooHandbookPage"
  L1_2(L2_2)
end
L0_1._on_btn_collection_click = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.SpaceZoo.SpaceZooBagPage"
  L1_2(L2_2)
end
L0_1._on_btn_bag_click = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Tutorial.GuideDetailDialog"
  L3_2 = L8_1
  L4_2 = nil
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_rule_click = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.SpaceZoo.SpaceZooQuestRewardPage"
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_reward_click = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_cat_max
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L6_1
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_all_breed_slot_set
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_show_meaningless_breed_hint
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkCancelHint
    L2_2 = L7_1
    L3_2 = ""
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      if A0_3 then
        L1_3 = CS
        L1_3 = L1_3.RPG
        L1_3 = L1_3.Client
        L1_3 = L1_3.GlobalVars
        L1_3 = L1_3.s_NetworkManager
        L2_3 = L1_3
        L1_3 = L1_3.IOAMDNILOPH
        L3_3 = {}
        L4_3 = A0_2._left_slot_cat
        L4_3 = L4_3.UniqueID
        L5_3 = A0_2._right_slot_cat
        L5_3 = L5_3.UniqueID
        L3_3[1] = L4_3
        L3_3[2] = L5_3
        L1_3(L2_3, L3_3)
      end
    end
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.IOAMDNILOPH
  L3_2 = {}
  L4_2 = A0_2._left_slot_cat
  L4_2 = L4_2.UniqueID
  L5_2 = A0_2._right_slot_cat
  L5_2 = L5_2.UniqueID
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_breed_click = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.SpaceZoo.SpaceZooBreedDialog"
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.set_exit_callback
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.anim
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = L14_1
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L13_1
  L2_2(L3_2, L4_2)
end
L0_1._on_slot_click = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_resolution
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._notify_task_unlock
  L1_2(L2_2)
end
L0_1._on_collection_car_change = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.SpaceZoo.SpaceZooRewardListDialog"
  L1_2(L2_2)
end
L0_1._on_btn_exp_reward_click = L22_1
function L22_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._space_zoo_data
  L1_2 = L1_2.Cats
  L1_2 = L1_2.Count
  L2_2 = A0_2._space_zoo_data
  L2_2 = L2_2.MaxCatCount
  L1_2 = L1_2 >= L2_2
  return L1_2
end
L0_1._is_cat_max = L22_1
function L22_1(A0_2)
  local L1_2
  L1_2 = A0_2._left_slot_cat
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._is_all_breed_slot_set = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SpaceZooUtils
  L1_2 = L1_2.HaveAllPotentialCat
  L2_2 = A0_2._left_slot_cat
  L3_2 = A0_2._right_slot_cat
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SpaceZooUtils
  L2_2 = L2_2.IsMatchTarget
  L3_2 = A0_2._left_slot_cat
  L4_2 = A0_2._right_slot_cat
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_2 or L3_2
  if L1_2 then
    L3_2 = not L2_2
  end
  return L3_2
end
L0_1._is_show_meaningless_breed_hint = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "SpaceZooSpecialCat"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_handbook_red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "SpaceZooPointReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_point_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "SpaceZooActivityReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_red_dot = L22_1
return L0_1
