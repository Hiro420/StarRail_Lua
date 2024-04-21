local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Offering.DrinkMakerOfferingRewardItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerOfferingRewardItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "DrinkMakerTipsRewardInfoItem_Unlock"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._parent
    L1_3 = A0_2
    L0_3.select_panel = L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onSelectTrigger = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onDeselectTrigger = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_callback_owner = A1_2
  A0_2._click_callback = A2_2
end
L0_1.register_btn_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_detail
  L1_2(L2_2)
end
L0_1.show_reward_tips = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._has_played
  if L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIAnimationUtils
    L4_2 = L4_2.PlayToBegin
    L5_2 = A0_2._binder
    L5_2 = L5_2.anim_root
    L6_2 = L1_1
    L4_2(L5_2, L6_2)
    A0_2._has_played = false
  end
  L4_2 = A1_2.Level
  A0_2._level = L4_2
  A0_2._param = nil
  L5_2 = A0_2
  L4_2 = A0_2._refresh_view
  L6_2 = A1_2.RewardID
  L7_2 = A1_2.Level
  L7_2 = A3_2 >= L7_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._can_receive
  if not L2_2 then
    L2_2 = A0_2._level
    if not (A1_2 < L2_2) then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  A0_2._can_receive = true
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_get
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._has_played = true
end
L0_1.try_play_unlock_anim = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._can_receive = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_reward_info
  L6_2 = A1_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_btn_state
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_reward_view
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end
L0_1._refresh_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RewardExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.IsSpecial
  A0_2._is_special = L4_2
  A0_2._is_reward_taken = A2_2
  A0_2._reward_id = A1_2
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateRewardItemTableSorted
  L5_2 = A0_2._reward_id
  L4_2 = L4_2(L5_2)
  A0_2._reward_data = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_level
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._level
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_level_special
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._level
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_mask
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_reward_taken
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_normal_bg
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_special
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_normal_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_special
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_special_bg
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_special
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_special_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_special
  L4_2(L5_2, L6_2)
end
L0_1._refresh_reward_info = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_got
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 or L5_2
  if A1_2 then
    L5_2 = not A2_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_doing
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A1_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_btn_state = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._reward_data
  L2_2(L3_2, L4_2)
end
L0_1._refresh_reward_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_callback_owner
  L4_2 = A0_2._level
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_get = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._param
  if L1_2 == nil then
    L1_2 = {}
    L2_2 = 1
    L3_2 = A0_2._reward_data
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L1_2
      L8_2 = A0_2._reward_data
      L8_2 = L8_2[L5_2]
      L8_2 = L8_2.ItemID
      L6_2(L7_2, L8_2)
    end
    L2_2 = {}
    L2_2.items = L1_2
    A0_2._param = L2_2
  end
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.show_item_detail_display_dialog_for_gamepad
  L2_2 = A0_2._param
  L1_2(L2_2)
end
L0_1._on_btn_detail = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_zoom
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_in_control_tip_enable
  L3_2 = A0_2._binder
  L3_2 = L3_2.incontrol_tip_get
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_key_map_zoom
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1.on_in_control_input_switch = L2_1
return L0_1
