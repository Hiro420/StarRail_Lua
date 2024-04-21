local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaTrial.GachaNormalTrialAvatarTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaTrial.GachaNormalTrialPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.ActivityAvatarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.ActivityAvatarInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaTrial.GachaNormalTrialRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaTrial.GachaNormalTrialRewardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaNormalTrialPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "TrialRolePage_SwitchToLeft_FadeIn"
L2_1 = "TrialRolePage_SwitchToRight_FadeIn"
L3_1 = "TrialRolePage_SwitchToLeft_FadeOut"
L4_1 = "TrialRolePage_SwitchToRight_FadeOut"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.GachaNormalTrialPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._default_tab_index = 1
  L1_2 = {}
  A0_2._tab_items = L1_2
  A0_2._is_exiting = false
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  A0_2._default_stage_id = A1_2
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_goto_trial
  L4_2 = A0_2._on_btn_trial
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2.do_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityGetReward
  L4_2 = A0_2._on_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RoleTrialUtils
  L1_2 = L1_2.GetSortedAvatarDemoList
  L1_2 = L1_2()
  A0_2._stage_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityAvatarInfoPanel
  L4_2 = G
  L4_2 = L4_2.ActivityAvatarInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._avatar_info_panel = L1_2
  L1_2 = A0_2._avatar_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_avatar_info_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.GachaNormalTrialRewardPanel
  L4_2 = G
  L4_2 = L4_2.GachaNormalTrialRewardPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._reward_panel = L1_2
  L1_2 = A0_2._reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_animation_event_root
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh
    L0_3(L1_3)
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.UIAnimationUtils
    L0_3 = L0_3.PlayFromBegin
    L1_3 = A0_2._binder
    L1_3 = L1_3.animation_root
    L2_3 = L1_1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_animation_event_root
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L4_1
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh
    L0_3(L1_3)
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.UIAnimationUtils
    L0_3 = L0_3.PlayFromBegin
    L1_3 = A0_2._binder
    L1_3 = L1_3.animation_root
    L2_3 = L2_1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L4_2 = A0_2
  L3_2 = A0_2.fade_in_duration
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._init_ui_navigation
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_select_demo_row
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._tab_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.refresh_finish_view
    L6_2(L7_2)
  end
end
L0_1._refresh_reward_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._tab_items = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_control
  L1_2(L2_2, L3_2)
  L1_2 = 0
  L2_2 = A0_2._stage_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.GachaNormalTrialAvatarTabItem
    L8_2 = G
    L8_2 = L8_2.GachaNormalTrialAvatarTabItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L5_2.button_prefab_index = 0
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._stage_list
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._tab_items
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._default_stage_id
    if L6_2 ~= nil then
      L6_2 = A0_2._stage_list
      L6_2 = L6_2[L4_2]
      L7_2 = A0_2._default_stage_id
      if L6_2 == L7_2 then
        L6_2 = L5_2.uid
        A0_2._default_tab_index = L6_2
      end
    end
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_tab_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
end
L0_1._init_tab_control = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RoleTrialModule
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.AdventureModule
    L3_2 = L3_2.MapDef
    L3_2 = L3_2.CurrentGameMode
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.GameModeType
    L4_2 = L4_2.TrialActivity
    if L3_2 ~= L4_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.GlobalVars
      L4_2 = L4_2.s_ModuleManager
      L4_2 = L4_2.RoleTrialModule
      L5_2 = L4_2
      L4_2 = L4_2.SetAutoShowNormalStageID
      L6_2 = A0_2._cur_select_demo_row
      L6_2 = L6_2.StageID
      L4_2(L5_2, L6_2)
    end
    L5_2 = L1_2
    L4_2 = L1_2.StartRoleTrial
    L6_2 = A0_2._cur_select_demo_row
    L6_2 = L6_2.StageID
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_btn_trial = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_exiting
  if L1_2 then
    return
  end
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L1_2 = L1_2.avatar_demo_row
  A0_2._cur_select_demo_row = L1_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L1_2 = L1_2.uid
  A0_2._cur_uid = L1_2
  L1_2 = A0_2._pre_uid
  if L1_2 ~= nil then
    L1_2 = A0_2._pre_uid
    L2_2 = A0_2._cur_uid
    if L1_2 < L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayFromBegin
      L2_2 = A0_2._binder
      L2_2 = L2_2.animation_root
      L3_2 = L4_1
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._pre_uid
      L2_2 = A0_2._cur_uid
      if L1_2 > L2_2 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.UIAnimationUtils
        L1_2 = L1_2.PlayFromBegin
        L2_2 = A0_2._binder
        L2_2 = L2_2.animation_root
        L3_2 = L3_1
        L1_2(L2_2, L3_2)
      end
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
  end
  L1_2 = A0_2._cur_uid
  A0_2._pre_uid = L1_2
end
L0_1._on_tab_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_select_demo_row
  L3_2 = L3_2.AvatarID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_select_demo_row
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_img
  L1_2(L2_2)
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._cur_select_demo_row
  L1_2 = L1_2.AvatarBackgroundPath
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_bg
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = L1_2
  L4_2 = "TrialRoleBg_"
  L5_2 = "TrialRoleAvatar_"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_avatar
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = string
  L3_2 = L3_2.gsub
  L4_2 = L2_2
  L5_2 = ".png"
  L6_2 = "_Back.png"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_avatar_back
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = string
  L4_2 = L4_2.gsub
  L5_2 = L2_2
  L6_2 = ".png"
  L7_2 = "_Front.png"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_avatar_front
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._refresh_img = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil ~= A1_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Common.RewardDialog"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_reward_view
    L2_2(L3_2)
  end
end
L0_1._on_get_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.do_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  A0_2._is_exiting = true
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1.do_exit = L5_1
function L5_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L5_1
return L0_1
