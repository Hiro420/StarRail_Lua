local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.ActivityMain.RogueEndlessActivityMainPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessActivityMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueEndlessActivityMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_data
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.FJOKMKFOMGN
  L1_2(L2_2)
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  A0_2._area_ids = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueEndlessActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = A0_2._activity_data
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._activity_data
  L3_2 = L2_2
  L2_2 = L2_2.GetRogueAreaIDs
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._area_ids = L1_2
end
L0_1._update_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessAreaSynced
  L4_2 = A0_2._on_data_synced
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnActivityEnd
  L4_2 = L0_1._on_activity_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._record_seen
  L1_2(L2_2)
end
L0_1._on_unload = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._area_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.RogueEndlessGetAreaData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2.IsUnlocked
    if L6_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.RogueEndlessUtils
      L6_2 = L6_2.RecordAreaSeen
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueEndlessRefreshRedDotNew
  L1_2(L2_2)
end
L0_1._record_seen = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_init_index
  L1_2 = L1_2(L2_2)
  A0_2._init_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_entrance_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = 1
  return L1_2
end
L0_1._get_init_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = A0_2._area_ids
  L2_2 = #L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panels_entrance
  L3_2 = #L3_2
  return L1_2(L2_2, L3_2)
end
L0_1._get_entrance_count = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_entrance
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._area_ids
    L6_2 = L6_2[L4_2]
    L7_2 = L6_2 ~= nil
    L9_2 = L5_2
    L8_2 = L5_2.safe_set_active
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    if L7_2 then
      L8_2 = L1_1
      L9_2 = L8_2
      L8_2 = L8_2.RogueEndlessGetAreaData
      L10_2 = L6_2
      L8_2 = L8_2(L9_2, L10_2)
      L10_2 = L5_2
      L9_2 = L5_2.register_click_callbak
      L11_2 = A0_2._on_area_clicked
      L12_2 = A0_2
      L9_2(L10_2, L11_2, L12_2)
      L10_2 = L5_2
      L9_2 = L5_2.setup_view
      L11_2 = L8_2
      L12_2 = L4_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L0_1._setup_entrance_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L3_2 = A1_2.IsUnlocked
  if not L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UICenterToastMessageTextID
    L5_2 = "UIText_ActivityRogueEndless_Entry_Unlock_Tips"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A1_2.IsDoing
    if not L3_2 then
      L3_2 = A1_2.IsNormalFinished
      if not L3_2 then
        goto lbl_33
      end
    end
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = "Ui.RogueDLC.RogueEndless.ActivityMain.RogueEndlessRecordPage"
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2._record_seen
    L3_2(L4_2)
    goto lbl_41
    ::lbl_33::
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = "Ui.RogueDLC.RogueEndless.ActivityMain.RogueEndlessStartPage"
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._record_seen
    L3_2(L4_2)
  end
  ::lbl_41::
end
L0_1._on_area_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._activity_data
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.IsInSchedule
  L1_2 = L1_2 ~= nil and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_timer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.timer
    L3_2 = L2_2
    L2_2 = L2_2.SetTargetTimeByTimeStamp
    L4_2 = A0_2._activity_data
    L4_2 = L4_2.EndTimeStamp
    L5_2 = A0_2._on_timer_end
    L6_2 = A0_2
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "RogueEndlessTimeLimitedReward"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reward_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_reward_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueEndless.Reward.RogueEndlessRewardPage"
  L1_2(L2_2)
end
L0_1._on_btn_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_timer_end = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.PanelID
  if A1_2 ~= L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkHint
  L3_2 = "UIText_ActivityExpedition_Finish"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.SetExitCallback
  function L5_2()
    local L0_3, L1_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.GlobalVars
    L0_3 = L0_3.s_UIManager
    L1_3 = L0_3
    L0_3 = L0_3.BackToFirstPage
    L0_3(L1_3)
  end
  L3_2(L4_2, L5_2)
end
L0_1._on_activity_end = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_entrance_view
  L1_2(L2_2)
end
L0_1._on_data_synced = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panels_entrance
  L2_2 = A0_2._init_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.panels_entrance
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = #L1_2
    L7_2 = L7_2 + 1
    L9_2 = L6_2
    L8_2 = L6_2.get_navigation_btn
    L8_2 = L8_2(L9_2)
    L1_2[L7_2] = L8_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_navigation = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L2_1
return L0_1
