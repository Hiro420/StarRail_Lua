local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkResultDialogBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = "ActivityClockParkMainPage"
L2_1 = "ActivityClockParkSelectTapePage"
L3_1 = "ClockParkCheckResultDialog_FadeIn01"
L4_1 = "ClockParkCheckResultDialog_FadeIn02"
L5_1 = 1
L6_1 = 5
L7_1 = "UIText_ClockPark_Recover_Progress"
L8_1 = "5312"
L9_1 = G
L9_1 = L9_1.Class
L10_1 = "ActivityClockParkResultDialog"
L11_1 = G
L11_1 = L11_1.UIController
L9_1 = L9_1(L10_1, L11_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._pause_game = true
end
L9_1.ctor = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._data = A1_2
  A0_2._callback = A2_2
  A0_2._callback_self = A3_2
end
L9_1.init = L10_1
function L10_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsNewEnd
  if L1_2 then
    L1_2 = L3_1
    return L1_2
  end
  L1_2 = L4_1
  return L1_2
end
L9_1.get_custom_fade_in_anim_name = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back_to_hud
  L4_2 = A0_2._on_btn_back_to_hud
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back_to_select
  L4_2 = A0_2._on_btn_back_to_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mission
  L4_2 = A0_2._on_btn_mission
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_get_reward_item
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L9_1._on_load = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_logo
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward
  L1_2(L2_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsNewEnd
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root_anim_event
    L2_2 = L1_2
    L1_2 = L1_2.AddAnimationEvent
    L3_2 = L3_1
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = A0_2._binder
      L0_3 = L0_3.mono_ui_value_change_animation
      L1_3 = L0_3
      L0_3 = L0_3.Play
      L0_3(L1_3)
      L0_3 = G
      L0_3 = L0_3.NotifyManager
      L0_3 = L0_3.notify
      L1_3 = G
      L1_3 = L1_3.CS
      L1_3 = L1_3.NotifyType
      L1_3 = L1_3.TutorialTaskUnlock
      L2_3 = L8_1
      L0_3(L1_3, L2_3)
    end
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L8_1
    L1_2(L2_2, L3_2)
  end
end
L9_1._setup_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsNewEnd
  L2_2 = A0_2._data
  L2_2 = L2_2.IsTrueEnding
  L3_2 = A0_2._data
  L4_2 = L3_2
  L3_2 = L3_2.NeedShowMissionHint
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_mission_btn
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_back_to_hud
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_back_to_select
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_true_end_result
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_2 or L6_2
  if L1_2 then
    L6_2 = L2_2
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_false_end_result
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_2 or L6_2
  if L1_2 then
    L6_2 = not L2_2
  end
  L4_2(L5_2, L6_2)
end
L9_1._setup_status = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetClockParkScriptData
  L3_2 = A0_2._data
  L3_2 = L3_2.ScriptID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_script_bg
    L5_2 = L1_2.Row
    L5_2 = L5_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.smooth_mask_logo
    L3_2 = G
    L3_2 = L3_2.AssetLoader
    L3_2 = L3_2.SyncLoadAsset
    L4_2 = L1_2.Row
    L4_2 = L4_2.ScriptResultLogoMaskPath
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Sprite
    L5_2, L6_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.sprite = L3_2
  end
end
L9_1._setup_logo = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  L1_2 = L1_2.OriginProgress
  L1_2 = L1_2 / 100
  L2_2 = A0_2._data
  L2_2 = L2_2.ProgressAdded
  L2_2 = L2_2 / 100
  L2_2 = L1_2 + L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_progress_pre_fill
  L4_2 = L2_2 / 100
  L3_2.value = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_progress
  L4_2 = L1_2 / 100
  L3_2.value = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_progress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L7_1
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_ui_value_change_animation
  L3_2.StartValue = L1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_ui_value_change_animation
  L3_2.EndValue = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_ui_value_change_animation
  L4_2 = L5_1
  L3_2.Duration = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_ui_value_change_animation
  L4_2 = L3_2
  L3_2 = L3_2.SetValueChangeCallback
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_2._binder
    if L1_3 == nil then
      return
    end
    L1_3 = A0_2._binder
    L1_3 = L1_3.txt_progress
    L2_3 = L1_3
    L1_3 = L1_3.SafeSetTextID
    L3_3 = L7_1
    L4_3 = math
    L4_3 = L4_3.floor
    L5_3 = A0_3
    L4_3, L5_3 = L4_3(L5_3)
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = A0_2._binder
    L1_3 = L1_3.slider_progress
    L2_3 = A0_3 / 100
    L1_3.value = L2_3
  end
  L3_2(L4_2, L5_2)
  if L1_2 < L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.show_full_screen_block
    L5_2 = L6_1
    L3_2(L4_2, L5_2)
  end
end
L9_1._setup_progress = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._data
  L1_2 = L1_2.HasReward
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = {}
    A0_2._config_ids = L2_2
    L2_2 = 0
    L3_2 = A0_2._data
    L3_2 = L3_2.Rewards
    L3_2 = L3_2.Count
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._config_ids
      L8_2 = A0_2._data
      L8_2 = L8_2.Rewards
      L8_2 = L8_2[L5_2]
      L8_2 = L8_2.ConfigID
      L6_2(L7_2, L8_2)
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.reward_list
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._data
    L4_2 = L4_2.Rewards
    L4_2 = L4_2.Count
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.reward_list
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  end
end
L9_1._setup_reward = L10_1
function L10_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.bind_click
    L7_2 = A0_2
    L8_2 = A0_2._on_item_click
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._data
  L5_2 = L5_2.Rewards
  L5_2 = L5_2[A2_2]
  L7_2 = A0_2
  L6_2 = A0_2._setup_item
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L9_1._on_get_reward_item = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view_by_display_data
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.set_count
  L5_2 = A2_2.Count
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.not_show_default_click_dialog
  L3_2(L4_2)
  L4_2 = A1_2
  L3_2 = A1_2.set_highlight_display
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L9_1._setup_item = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.ConfigID
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_show
  L4_2 = "Ui.Common.ItemDetailDialog"
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2.UID
  if L4_2 ~= nil then
    L4_2 = A1_2.UID
    if L4_2 ~= 0 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.GlobalVars
      L4_2 = L4_2.s_ModuleManager
      L4_2 = L4_2.InventoryModule
      L5_2 = L4_2
      L4_2 = L4_2.GetItemDataByUID
      L6_2 = A1_2.UID
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 ~= nil then
        L6_2 = L3_2
        L5_2 = L3_2.setup_view_by_item
        L7_2 = L4_2
        L5_2(L6_2, L7_2)
        return
      end
    end
  end
  L5_2 = L3_2
  L4_2 = L3_2.setup_view
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L9_1._on_item_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L9_1._on_gamepad_item_reward_detail = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickButton
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_gamepad_item_reward_detail
    L2_2(L3_2)
  end
end
L9_1._on_in_control_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.HasPageInStack
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.BackToPage
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._callback
    L3_2 = A0_2._callback_self
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.ActivityClockPark.Entrance.ActivityClockParkMainPage"
    L1_2(L2_2)
  end
end
L9_1._on_btn_back_to_hud = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.HasPageInStack
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.BackToPage
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._callback
    L3_2 = A0_2._callback_self
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.ActivityClockPark.Entrance.ActivityClockParkSelectTapePage"
    L1_2(L2_2)
  end
end
L9_1._on_btn_back_to_select = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.BackToFirstPage
  L1_2(L2_2)
end
L9_1._on_btn_mission = L10_1
function L10_1(A0_2)
  local L1_2
end
L9_1._in_control_exit_click = L10_1
return L9_1
