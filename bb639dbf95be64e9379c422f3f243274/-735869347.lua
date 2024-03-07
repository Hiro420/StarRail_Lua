local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.RoleTrialActivityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonIntroduceDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RoleTrialActivityPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "RoleTrialPane_Switch_Right"
L2_1 = "RoleTrialPane_Switch_Left"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.RoleTrialModule
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._data = A3_2
  L4_2 = A0_2._data
  L4_2 = L4_2.Row
  L4_2 = L4_2.TypeParam
  L4_2 = L4_2.Length
  A0_2._display_count = L4_2
  A0_2._init_panel_b = false
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._display_count
  return L1_2
end
L0_1.get_display_count = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_preview
  L4_2 = A0_2._on_btn_preview
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_enter
  L4_2 = A0_2._on_btn_enter
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
  L3_2 = L3_2.btn_free_trial
  L4_2 = A0_2._on_btn_free_trial
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityGetReward
  L4_2 = A0_2._on_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tag
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.TagDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_free_trial
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_time
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_in_control_input_switch
  L1_2(L2_2)
  A0_2._is_custom_loaded = true
end
L0_1._custom_on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._state
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.info_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.info_panel_B
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_panel_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.refresh_finish_view
    L6_2(L7_2)
  end
end
L0_1._refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A1_2 then
    A1_2 = A0_2._cur_data
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.info_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._data
  L5_2 = A0_2._cur_data
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.info_panel_B
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._data
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._init_panel_b
  if not L2_2 then
    A0_2._init_panel_b = true
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_dot
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_play_anim
  L2_2(L3_2)
end
L0_1._refresh_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._cur_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_index
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.dot_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = L5_2 == L1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._refresh_dot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_dot
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_in_control_input_switch = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reddot
  L1_2(L2_2)
end
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._get_panel_prefab_path_by_activity_data
  L3_2 = A0_2._data
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
  L2_2 = A0_2._setup_trial_avatar_list
  L2_2(L3_2)
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.OnEnterActivityTab
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_list
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.TypeParam
  L1_2 = L1_2(L2_2)
  A0_2._stage_list = L1_2
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_panel_list
  L2_2 = #L2_2
  L3_2 = A0_2._stage_list
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cur_data = nil
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.avatar_panel_list
    L6_2 = L6_2[L5_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.AvatarDemoConfigExcelTable
    L7_2 = L7_2.GetData
    L8_2 = A0_2._stage_list
    L8_2 = L8_2[L5_2]
    L7_2 = L7_2(L8_2)
    L9_2 = L6_2
    L8_2 = L6_2.setup_view
    L10_2 = L7_2
    L11_2 = L5_2
    L8_2(L9_2, L10_2, L11_2)
    L9_2 = L6_2
    L8_2 = L6_2.bind_button_click
    L10_2 = A0_2._on_click_avatar_stage
    L11_2 = A0_2
    L12_2 = L7_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = A0_2._cur_data
    if L8_2 == nil then
      L8_2 = A0_2._data
      L8_2 = L8_2.DefaultSelectedAvatarID
      if L8_2 ~= 0 or L5_2 ~= 1 then
        L8_2 = A0_2._data
        L8_2 = L8_2.DefaultSelectedAvatarID
        L9_2 = L7_2.AvatarID
        if L8_2 ~= L9_2 then
          goto lbl_60
        end
      end
      L9_2 = A0_2
      L8_2 = A0_2._on_click_avatar_stage
      L10_2 = L7_2
      L11_2 = L6_2
      L8_2(L9_2, L10_2, L11_2)
    end
    ::lbl_60::
  end
  L2_2 = A0_2._data
  L2_2.DefaultSelectedAvatarID = 0
end
L0_1._setup_trial_avatar_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._data
  L4_2 = L4_2.PanelID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_reddot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTimeByTimeStamp
  L3_2 = A0_2._data
  L3_2 = L3_2.EndTimeStamp
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_remain_time = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._cur_data
  if A1_2 == L3_2 then
    return
  end
  L3_2 = nil
  L5_2 = A2_2
  L4_2 = A2_2.get_index
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._cur_data
  L6_2 = A0_2._cur_panel
  if L6_2 ~= nil then
    L6_2 = A0_2._cur_panel
    L7_2 = L6_2
    L6_2 = L6_2.get_index
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
    L6_2 = A0_2._cur_panel
    L7_2 = L6_2
    L6_2 = L6_2.set_selected
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L7_2 = A2_2
  L6_2 = A2_2.set_selected
  L8_2 = true
  L6_2(L7_2, L8_2)
  A0_2._cur_panel = A2_2
  A0_2._cur_data = A1_2
  L7_2 = A0_2
  L6_2 = A0_2._refresh_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if L5_2 ~= nil and L3_2 ~= nil then
    if L4_2 > L3_2 then
      L6_2 = L1_1
      if L6_2 then
        goto lbl_38
      end
    end
    L6_2 = L2_1
    ::lbl_38::
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.UIAnimationUtils
    L7_2 = L7_2.PlayFromBegin
    L8_2 = A0_2._binder
    L8_2 = L8_2.anim_root
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._on_click_avatar_stage = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_panel
  if L1_2 then
    L1_2 = A0_2._cur_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_selected
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Gacha.GachaDetail.GachaAvatarDetailPage"
  L3_2 = A0_2._cur_data
  L3_2 = L3_2.AvatarID
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_preview = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.show_full_screen_block_for_packet
    L4_2 = CS
    L4_2 = L4_2.NIJNBICAPPA
    L4_2 = L4_2.GACAPHGLKHB
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.ActivityModule
    L3_2 = L2_2
    L2_2 = L2_2.SetAutoShowOnExitBattle
    L4_2 = A0_2._data
    L4_2 = L4_2.PanelID
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._data
    L3_2 = A0_2._cur_data
    L3_2 = L3_2.AvatarID
    L2_2.DefaultSelectedAvatarID = L3_2
    L2_2 = L3_1
    L3_2 = L2_2
    L2_2 = L2_2.StartRoleTrial
    L4_2 = A0_2._cur_data
    L4_2 = L4_2.StageID
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_enter = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._state
  L3_2 = L0_1.SelectState
  L3_2 = L3_2.Selected
  if L2_2 == L3_2 and nil ~= A1_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Common.RewardDialog"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L0_1._on_get_reward = L4_1
function L4_1(A0_2, A1_2)
end
L0_1._on_ui_animation_event = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._state
  L1_2 = not L1_2
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    return
  end
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.IsStageFirstPassed
  L3_2 = A0_2._cur_data
  L3_2 = L3_2.StageID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "RoleTrialPanel_Btn_unlock"
    L1_2(L2_2, L3_2)
  end
end
L0_1._try_play_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityRefreshAll
  L1_2(L2_2)
end
L0_1._expire_call_back = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = G
  L2_2 = L2_2.CommonIntroduceDialog
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_title
  L4_2 = "UIText_ChallengeActivity_Explain"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_content
  L4_2 = A0_2._data
  L4_2 = L4_2.Row
  L4_2 = L4_2.IntroDesc
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_intro = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_btn_free_trial = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.TakeStageReward
  L3_2 = A0_2._cur_data
  L3_2 = L3_2.StageID
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_reward = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
end
L0_1._is_can_to_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_panel_list
  L3_2 = A0_2._cur_panel
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  if L1_2 == 1 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.avatar_panel_list
    L2_2 = #L2_2
    if L2_2 then
      goto lbl_19
      L1_2 = L2_2 or L1_2
    end
  end
  L1_2 = L1_2 - 1
  ::lbl_19::
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_panel_list
  L2_2 = L2_2[L1_2]
  L4_2 = L2_2
  L3_2 = L2_2.trigger_button_click
  L3_2(L4_2)
end
L0_1._select_prev = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_panel_list
  L3_2 = A0_2._cur_panel
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_panel_list
  L2_2 = #L2_2
  if L1_2 == L2_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_20
      L1_2 = L2_2 or L1_2
    end
  end
  L1_2 = L1_2 + 1
  ::lbl_20::
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_panel_list
  L2_2 = L2_2[L1_2]
  L4_2 = L2_2
  L3_2 = L2_2.trigger_button_click
  L3_2(L4_2)
end
L0_1._select_next = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.info_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_config_ids
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if 0 < L2_2 then
      L2_2 = {}
      L2_2.items = L1_2
      L3_2 = G
      L3_2 = L3_2.InventoryUtils
      L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
      L4_2 = L2_2
      L3_2(L4_2)
    end
  end
end
L0_1.on_left_stick_button_click = L4_1
return L0_1
