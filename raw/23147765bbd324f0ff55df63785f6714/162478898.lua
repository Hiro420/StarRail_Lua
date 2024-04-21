local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryBuffSlotPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryBuffPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryBuffSlotIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.Buff.FantasticStoryAvatarIconListPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryBuffSlotPage"
L2_1 = G
L2_1 = L2_1.BasePage
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FantasticStoryBuffSlotPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
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
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  A0_2._fantastic_module = L1_2
  L1_2 = {}
  A0_2._slot_icon_panels = L1_2
  L1_2 = {}
  A0_2._buff_panels = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_replace
  L4_2 = A0_2._on_btn_replace
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnActivityEnd
  L4_2 = L0_1._on_activity_end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.FantasticStoryAvatarIconListPanel
  L4_2 = G
  L4_2 = L4_2.FantasticStoryAvatarIconListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._trial_avatar_list_panel = L1_2
  L1_2 = A0_2._trial_avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_trial_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 or L3_2
  if not A1_2 or not A1_2 then
    L3_2 = 1
  end
  A0_2._default_slot_id = L3_2
  L3_2 = A2_2 ~= nil
  A0_2._enable_equip = L3_2
  A0_2._paragraph_id = A2_2
  L3_2 = A0_2._fantastic_module
  L4_2 = L3_2
  L3_2 = L3_2.GetSortedBuffSlotData
  L3_2 = L3_2(L4_2)
  A0_2._slot_data_list = L3_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_slot_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_view
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_scroll_gamepad_tips
  L1_2(L2_2)
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_to_equip_node
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._enable_equip
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_trial_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._enable_equip
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cant_equip_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._enable_equip
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_to_equip_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._enable_equip
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._trial_avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_active
  L3_2 = A0_2._enable_equip
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._enable_equip
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.FantasticStoryActivityModule
    L2_2 = L1_2
    L1_2 = L1_2.GetParagraphData
    L3_2 = A0_2._paragraph_id
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = G
    L2_2 = L2_2.BuffUtils
    L2_2 = L2_2.GetMazeBuffData
    L3_2 = L1_2.EnvBuffID
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_paragraph_buff
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.BuffDesc
    L6_2 = G
    L6_2 = L6_2.UITextUtils
    L6_2 = L6_2.GetSkillParams
    L7_2 = L2_2.ParamList
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.CoroutineUtils
    L3_2 = L3_2.InvokeNextFrame
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_scroll_gamepad_tips
      L0_3(L1_3)
    end
    L3_2(L4_2)
    L3_2 = A0_2._trial_avatar_list_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._paragraph_id
    L3_2(L4_2, L5_2)
  end
end
L0_1._init_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tip_scroll
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect_paragraph_buff
  L3_2 = L2_2
  L2_2 = L2_2.CanScroll
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
  end
  L1_2.IsShowTip = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect_paragraph_buff
  L4_2 = L3_2
  L3_2 = L3_2.CanScroll
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.is_gamepad_input
    L3_2 = L3_2()
  end
  L1_2(L2_2, L3_2)
end
L0_1._setup_scroll_gamepad_tips = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tip_scroll
  L1_2.IsShowTip = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_move_tip
  L1_2.ActionEnabled = false
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_scroll_gamepad_tips
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_move_tip
  L1_2.ActionEnabled = true
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_scroll_gamepad_tips
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_buff_slot
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.FantasticStoryBuffSlotIconPanel
    L8_2 = G
    L8_2 = L8_2.FantasticStoryBuffSlotIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_buff_slot
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_btn_root_callback
    L8_2 = A0_2._on_slot_select
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._slot_data_list
    L9_2 = L4_2 - 1
    L8_2 = L8_2[L9_2]
    L9_2 = true
    L10_2 = A0_2._paragraph_id
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.Prefs
    L6_2 = L6_2.User
    L7_2 = L6_2.FantasticStoryNewUnlockBuffSlot
    L8_2 = L7_2
    L7_2 = L7_2.Contains
    L9_2 = A0_2._slot_data_list
    L10_2 = L4_2 - 1
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.SlotID
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = A0_2._buff_icon_unlock_anim_timer
      if L7_2 == nil then
        L8_2 = A0_2
        L7_2 = A0_2._add_count_down_timer
        L9_2 = A0_2._try_play_buff_icon_unlock_anim
        L11_2 = A0_2
        L10_2 = A0_2.fade_in_duration
        L10_2, L11_2 = L10_2(L11_2)
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        A0_2._buff_icon_unlock_anim_timer = L7_2
        L7_2 = A0_2._buff_icon_unlock_anim_timer
        L8_2 = L7_2
        L7_2 = L7_2.reset
        L7_2(L8_2)
        L7_2 = A0_2._buff_icon_unlock_anim_timer
        L8_2 = L7_2
        L7_2 = L7_2.start
        L7_2(L8_2)
      end
    end
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._slot_icon_panels
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = A0_2._slot_icon_panels
  L2_2 = A0_2._default_slot_id
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.trigger_click
  L1_2(L2_2)
end
L0_1._init_slot_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._buff_icon_unlock_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = pairs
  L3_2 = A0_2._slot_icon_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2.FantasticStoryNewUnlockBuffSlot
    L8_2 = L7_2
    L7_2 = L7_2.Contains
    L9_2 = L6_2.slot_id
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L8_2 = L6_2
      L7_2 = L6_2.play_unlock_anim
      L7_2(L8_2)
      L7_2 = L1_2.FantasticStoryNewUnlockBuffSlot
      L8_2 = L7_2
      L7_2 = L7_2.Remove
      L9_2 = L6_2.slot_id
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.ForceSave
  L2_2()
end
L0_1._try_play_buff_icon_unlock_anim = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._cur_select_slot_panel
  if L2_2 == A1_2 then
    return
  end
  L2_2 = A0_2._cur_select_slot_panel
  if L2_2 then
    L2_2 = A0_2._cur_select_slot_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_select
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._cur_select_slot_panel
    L3_2 = L2_2
    L2_2 = L2_2.clear_new_buff_reddot
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_replace
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.set_select
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._cur_select_slot_panel = A1_2
  L2_2 = A0_2._cur_select_slot_panel
  L3_2 = L2_2
  L2_2 = L2_2.is_unlock
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_lock_tips
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_ActivityFanaticStory_UnlockTip_2"
  L6_2 = A0_2._cur_select_slot_panel
  L6_2 = L6_2.unlock_chapter_id
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff_list
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.slot_id
  A0_2._select_slot_id = L3_2
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.FantasticStoryActivityModule
    L4_2 = A0_2._enable_equip
    if L4_2 then
      L5_2 = L3_2
      L4_2 = L3_2.GetSlotStageBuffData
      L6_2 = A0_2._select_slot_id
      L7_2 = A0_2._paragraph_id
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      A0_2._buff_data_list = L4_2
    else
      L5_2 = L3_2
      L4_2 = L3_2.GetSlotBuffData
      L6_2 = A0_2._select_slot_id
      L4_2 = L4_2(L5_2, L6_2)
      A0_2._buff_data_list = L4_2
    end
    L4_2 = {}
    A0_2._buff_panels = L4_2
    A0_2._select_buff_id = nil
    L4_2 = A0_2._binder
    L4_2 = L4_2.buff_scroll_view
    L5_2 = L4_2
    L4_2 = L4_2.SetListItemCount
    L6_2 = A0_2._buff_data_list
    L6_2 = L6_2.Count
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.buff_scroll_view
    L5_2 = L4_2
    L4_2 = L4_2.RefreshAllShownItem
    L4_2(L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.buff_scroll_view
    L5_2 = L4_2
    L4_2 = L4_2.PlayFadeIn
    L4_2(L5_2)
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_gamepad_input
    L4_2 = L4_2()
    if not L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.buff_scroll_view
      L5_2 = L4_2
      L4_2 = L4_2.GetShownItemByItemIndex
      L6_2 = 0
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = L4_2.UserObjectData
      L6_2 = L5_2
      L5_2 = L5_2.trigger_click
      L5_2(L6_2)
    end
  end
end
L0_1._on_slot_select = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.FantasticStoryBuffPanel
    L8_2 = G
    L8_2 = L8_2.FantasticStoryBuffPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._buff_data_list
  L7_2 = L7_2[A2_2]
  L8_2 = A0_2._enable_equip
  L8_2 = not L8_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._fantastic_module
  L6_2 = L5_2
  L5_2 = L5_2.GetSlotEquipBuffID
  L7_2 = A0_2._select_slot_id
  L8_2 = A0_2._enable_equip
  if L8_2 then
    L8_2 = A0_2._paragraph_id
    if L8_2 then
      goto lbl_34
    end
  end
  L8_2 = 0
  ::lbl_34::
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_equiped
  L8_2 = A0_2._buff_data_list
  L8_2 = L8_2[A2_2]
  L8_2 = L8_2.BuffID
  L8_2 = L8_2 == L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_on_click_callback
  L8_2 = A0_2._on_buff_select
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._buff_panels
  L7_2 = A0_2._buff_data_list
  L7_2 = L7_2[A2_2]
  L7_2 = L7_2.BuffID
  L6_2[L7_2] = L4_2
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L4_2._binder
  L7_2 = L7_2.root
  L7_2 = L7_2.transform
  L6_2(L7_2)
  return L3_2
end
L0_1._on_item_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._select_buff_id = A1_2
  L2_2 = A0_2._cur_select_buff_panel
  if L2_2 then
    L2_2 = A0_2._cur_select_buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_checked
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._buff_panels
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.set_checked
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._buff_panels
  L2_2 = L2_2[A1_2]
  A0_2._cur_select_buff_panel = L2_2
  L2_2 = A0_2._enable_equip
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_replace_btn_text
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_replace
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._enable_equip
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._fantastic_module
  L3_2 = L2_2
  L2_2 = L2_2.GetBuffData
  L4_2 = A0_2._select_buff_id
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_replace
  L4_2 = L2_2.IsUnlock
  if L4_2 then
    L4_2 = A0_2._enable_equip
  end
  L3_2.interactable = L4_2
end
L0_1._on_buff_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._fantastic_module
  L2_2 = L1_2
  L1_2 = L1_2.GetSlotEquipBuffID
  L3_2 = A0_2._select_slot_id
  L4_2 = A0_2._paragraph_id
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_btn_replace
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityFanaticStory_Equip_Button"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._select_buff_id
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_btn_replace
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_ActivityFanaticStory_Unequip_Button"
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_btn_replace
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_ActivityFanaticStory_Replace_Button"
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._refresh_replace_btn_text = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ActivityModule
  L3_2 = L2_2
  L2_2 = L2_2.GetFantasticStoryActivityData
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.PanelID
    if A1_2 ~= L3_2 then
      goto lbl_20
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.exit
  L3_2(L4_2)
  ::lbl_20::
end
L0_1._on_activity_end = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._fantastic_module
  L2_2 = L1_2
  L1_2 = L1_2.GetSlotEquipBuffID
  L3_2 = A0_2._select_slot_id
  L4_2 = A0_2._paragraph_id
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._select_buff_id
  if L2_2 == L1_2 then
    L2_2 = A0_2._fantastic_module
    L3_2 = L2_2
    L2_2 = L2_2.SlotRemoveBuffData
    L4_2 = A0_2._select_slot_id
    L5_2 = A0_2._paragraph_id
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._cur_select_slot_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_unequip_anim
    L2_2(L3_2)
  else
    L2_2 = A0_2._fantastic_module
    L3_2 = L2_2
    L2_2 = L2_2.SlotEquipBuffData
    L4_2 = A0_2._select_slot_id
    L5_2 = A0_2._paragraph_id
    L6_2 = A0_2._select_buff_id
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2._buff_panels
    L3_2 = A0_2._select_buff_id
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2
    L2_2 = L2_2.set_equiped
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._cur_select_slot_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_equip_anim
    L2_2(L3_2)
  end
  if L1_2 then
    L2_2 = A0_2._buff_panels
    L2_2 = L2_2[L1_2]
    L3_2 = L2_2
    L2_2 = L2_2.set_equiped
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_replace_btn_text
  L2_2(L3_2)
  L2_2 = A0_2._cur_select_slot_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh
  L2_2(L3_2)
end
L0_1._on_btn_replace = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_select_slot_panel
  if L1_2 then
    L1_2 = A0_2._cur_select_slot_panel
    L2_2 = L1_2
    L1_2 = L1_2.clear_new_buff_reddot
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.canvas_group_zoom_1
    L3_2.alpha = 1
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = 31
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.canvas_group_zoom_1
    L3_2.alpha = 0.5
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2._get_zoom_2_first_select_object
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = 1
    L3_2(L4_2, L5_2)
  end
  L3_2 = nil
  return L3_2
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._cur_select_buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_checked
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_replace
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_leave_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._slot_icon_panels
  L2_2 = A0_2._default_slot_id
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.get_navigation_btn_gameobject
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_navigation_btn_gameobject
  return L2_2(L3_2)
end
L0_1._get_zoom_2_first_select_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = A0_2._cur_select_slot_panel
      L3_2 = L2_2
      L2_2 = L2_2.is_unlock
      return L2_2(L3_2)
    end
  end
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_can_to_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_second_buff_icon_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff_slot
  L1_2 = L1_2[2]
  L1_2 = L1_2.navigation
  L2_2 = A0_2._slot_icon_panels
  L2_2 = L2_2[4]
  L3_2 = L2_2
  L2_2 = L2_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_buff_slot
    L2_2 = L2_2[4]
    L1_2.selectOnRight = L2_2
  else
    L1_2.selectOnRight = nil
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_buff_slot
  L2_2 = L2_2[2]
  L2_2.navigation = L1_2
end
L0_1._init_second_buff_icon_navigation = L1_1
return L0_1
