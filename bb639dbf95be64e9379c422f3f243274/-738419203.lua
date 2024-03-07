local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.PromotionPreview.PromotionLevelStarItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PromotionPreview.PromotionLevelStarItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PromotionPreview.PromotionPreviewDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PromotionPreview.PromotionPreviewDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PromotionPreview.PromotionPreviewDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PromotionPreviewDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 6
L2_1 = "UIText_AvatarPromotionPreview_Status_Complete"
L3_1 = "UIText_AvatarPromotionPreview_Status_Incomplete"
L4_1 = {}
L4_1.Promoted = "#FFDF99FF"
L4_1.NotPromoted = "#FFFFFF66"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PromotionPreviewDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  A0_2._object_data = A1_2
end
L0_1.init = L5_1
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
  L1_2 = A0_2._promotion_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    return L1_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_prev_next_btn_active
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._init_ui_navigation
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_in_control_input_switch = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftBumper
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_bumper_click
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.UIUtils
    L2_2 = L2_2.play_navigation_audio
    L2_2()
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.RightBumper
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_right_bumper_click
      L2_2(L3_2)
      L2_2 = G
      L2_2 = L2_2.UIUtils
      L2_2 = L2_2.play_navigation_audio
      L2_2()
    end
  end
end
L0_1._on_in_control_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_prev
  L1_2(L2_2)
end
L0_1._on_left_bumper_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_next
  L1_2(L2_2)
end
L0_1._on_right_bumper_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_click_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_prev
  L4_2 = A0_2._on_click_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_click_next
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._promotion_step_item_table = L1_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PromotionLevelStarItem
    L8_2 = G
    L8_2 = L8_2.PromotionLevelStarItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L9_2 = "node_promotion_lv_"
    L10_2 = L4_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_callback
    L8_2 = A0_2._on_click_promotion_star
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.set_level
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._promotion_step_item_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_all_star_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PromotionPreviewDetailPanel
  L4_2 = G
  L4_2 = L4_2.PromotionPreviewDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._promotion_detail_panel = L1_2
  L1_2 = A0_2._promotion_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_take_reward_callback
  L3_2 = A0_2._on_send_take_reward
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._promotion_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_promotion_detail_panel
  L1_2(L2_2, L3_2)
  A0_2._current_select_promotion_level = 1
  L1_2 = A0_2._promotion_step_item_table
  L1_2 = L1_2[1]
  A0_2._last_select_promotion_star_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._set_prev_next_btn_active
  L1_2(L2_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnTakePromotionReward
  L4_2 = A0_2._on_get_promotion_reward
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_select_promotion_level
  L1_2 = L1_2(L2_2)
  A0_2._current_select_promotion_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_promotion_star
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_promotion_star
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_select_promotion_info
  L1_2(L2_2)
  L1_2 = A0_2._promotion_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.clear_btn_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_promotion_detail_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_pad_navi
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._object_data
    L6_2 = L5_2
    L5_2 = L5_2.IsPromotionRewardReceived
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._is_level_promoted
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.AvatarPromotionRewardExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2 ~= nil
    if not L5_2 and L6_2 and L8_2 then
      return L4_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_current_promotion
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1
  if L1_2 < L2_2 then
    L1_2 = L1_2 + 1
  else
  end
  return L1_2
end
L0_1._get_first_select_promotion_level = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = A0_2._promotion_step_item_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._promotion_step_item_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.set_is_promoted
    L8_2 = A0_2
    L7_2 = A0_2._is_level_promoted
    L9_2 = L4_2
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._setup_promotion_star = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._promotion_step_item_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._promotion_step_item_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.set_selected
    L7_2 = A0_2._current_select_promotion_level
    L7_2 = L7_2 == L4_2
    L5_2(L6_2, L7_2)
  end
  L1_2 = A0_2._promotion_step_item_table
  L2_2 = A0_2._current_select_promotion_level
  L1_2 = L1_2[L2_2]
  A0_2._last_select_promotion_star_item = L1_2
end
L0_1._refresh_promotion_star = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._current_select_promotion_level
  if L3_2 == A1_2 then
    return
  end
  A0_2._current_select_promotion_level = A1_2
  L4_2 = A2_2
  L3_2 = A2_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._last_select_promotion_star_item
  if L3_2 ~= nil then
    L3_2 = A0_2._last_select_promotion_star_item
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._last_select_promotion_star_item = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_select_promotion_info
  L3_2(L4_2)
  L3_2 = A0_2._promotion_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.clear_btn_list
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_promotion_detail_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_pad_navi
  L3_2(L4_2)
end
L0_1._on_click_promotion_star = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_prev
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_next
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_prev_next_btn_active = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_level_promoted
  L3_2 = A0_2._current_select_promotion_level
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_is_promoted
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_is_promoted
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = L4_1.Promoted
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_is_promoted
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_is_promoted
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = L4_1.NotPromoted
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_require_level_num
  L1_2(L2_2)
end
L0_1._setup_select_promotion_info = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._get_current_promotion
  L2_2 = L2_2(L3_2)
  L2_2 = A1_2 <= L2_2
  return L2_2
end
L0_1._is_level_promoted = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._promotion_step_item_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._promotion_step_item_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.bind_reddot
    L7_2 = "AvatarPromotionTakeReward_"
    L8_2 = L4_2
    L7_2 = L7_2 .. L8_2
    L8_2 = A0_2._object_data
    L8_2 = L8_2.ID
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._bind_all_star_reddot = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._object_data
  L1_2 = L1_2.Promotion
  return L1_2
end
L0_1._get_current_promotion = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarPromotionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._object_data
  L2_2 = L2_2.ID
  L3_2 = A0_2._current_select_promotion_level
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_promote_require_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.MaxLevel
  L2_2(L3_2, L4_2)
end
L0_1._set_require_level_num = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._promotion_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_promoted
  L4_2 = A0_2
  L3_2 = A0_2._is_level_promoted
  L5_2 = A0_2._current_select_promotion_level
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = A0_2._promotion_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_title
  L3_2 = "UIText_AvatarPromotionPreview_Title"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarPromotionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._object_data
  L2_2 = L2_2.ID
  L3_2 = A0_2._current_select_promotion_level
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._promotion_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_sub_title
  L4_2 = "UIText_AvatarPromotionPreview_LevelMaxUp"
  L5_2 = L1_2.MaxLevel
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarPromotionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._object_data
  L3_2 = L3_2.ID
  L4_2 = A0_2._current_select_promotion_level
  L4_2 = L4_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._promotion_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_promotion_cost_material
  L5_2 = L2_2.PromotionCostList
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarPromotionRewardExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._current_select_promotion_level
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._object_data
  L5_2 = L4_2
  L4_2 = L4_2.IsPromotionRewardReceived
  L6_2 = A0_2._current_select_promotion_level
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._promotion_detail_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_reward
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._setup_promotion_detail_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2._promotion_detail_panel
    L1_3 = L0_3
    L0_3 = L0_3.set_item_navi
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._set_pad_navi = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._object_data
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._is_level_promoted
    L3_2 = A0_2._current_select_promotion_level
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= false then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.DHHPGBGJODO
  L3_2 = A0_2._object_data
  L3_2 = L3_2.ID
  L4_2 = A0_2._current_select_promotion_level
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_send_take_reward = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = A0_2._promotion_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.clear_btn_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_promotion_detail_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_pad_navi
  L2_2(L3_2)
end
L0_1._on_get_promotion_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_click_bg = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_click_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._current_select_promotion_level
  if L1_2 <= 1 then
    L1_2 = L1_1
    L1_2 = L1_2 + 1
    A0_2._current_select_promotion_level = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_click_promotion_star
  L3_2 = A0_2._current_select_promotion_level
  L3_2 = L3_2 - 1
  L4_2 = A0_2._promotion_step_item_table
  L5_2 = A0_2._current_select_promotion_level
  L5_2 = L5_2 - 1
  L4_2 = L4_2[L5_2]
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_click_prev = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._current_select_promotion_level
  L2_2 = L1_1
  if L1_2 >= L2_2 then
    A0_2._current_select_promotion_level = 0
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_click_promotion_star
  L3_2 = A0_2._current_select_promotion_level
  L3_2 = L3_2 + 1
  L4_2 = A0_2._promotion_step_item_table
  L5_2 = A0_2._current_select_promotion_level
  L5_2 = L5_2 + 1
  L4_2 = L4_2[L5_2]
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_click_next = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_promotion_detail_panel
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 2
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._promotion_detail_panel
    L1_3 = L0_3
    L0_3 = L0_3.set_item_navi
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_return_to_top = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L5_1
return L0_1
