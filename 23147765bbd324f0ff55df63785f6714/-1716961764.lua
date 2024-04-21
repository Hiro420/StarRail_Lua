local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.Components.AnniversarySevenDayRewardItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AnniversarySevenDayRewardItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ItemRarity
L2_1 = L2_1.Rare
L2_1 = #L2_1
L1_1[L2_1] = "SpriteOutput/UI/Quest/SevenDaysSignIn/BluePanel.png"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ItemRarity
L2_1 = L2_1.VeryRare
L2_1 = #L2_1
L1_1[L2_1] = "SpriteOutput/UI/Quest/SevenDaysSignIn/PurplePanel.png"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ItemRarity
L2_1 = L2_1.SuperRare
L2_1 = #L2_1
L1_1[L2_1] = "SpriteOutput/UI/Quest/SevenDaysSignIn/GoldenPanel.png"
L2_1 = "SpriteOutput/UI/Quest/SevenDaysSignIn/GoldenPanelBig.png"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.DailyLoginRewardActivityData
L3_1 = L3_1.RewardStatus
L4_1 = 7
function L5_1(A0_2)
  local L1_2
  A0_2._cur_btn_selected = false
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.receive_btn
  L4_2 = A0_2._on_receive_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_ictrl_btn
  L1_2.enabled = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_ictrl_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ictrl_pc_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_ictrl_btn
    L0_3.enabled = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_ictrl_tip
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.ictrl_pc_tip
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    A0_2._is_main_panel_selected = true
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_ictrl_btn
    L0_3.enabled = false
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_ictrl_tip
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.ictrl_pc_tip
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
    A0_2._is_main_panel_selected = false
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._panel_index = A1_2
  A0_2._configID = A2_2
end
L0_1.setup_data = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.item_icon
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_icon = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = "\195\151"
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L0_1.set_count = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_index
  L3_2 = L4_1
  if L2_2 ~= L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_rarity_bg
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_special_bg
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_rarity_stars
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_rarity_hint
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_rarity = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_special = A1_2
end
L0_1.set_special = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_can_receive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L3_1.Available
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_cannot_receive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L3_1.Available
  L4_2 = A1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.cannot_receive_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L3_1.Available
  L4_2 = A1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = L3_1.Received
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.cannot_receive_text
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityLogin_RewardGot"
    L2_2(L3_2, L4_2)
  else
    L2_2 = L3_1.Unavailable
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.cannot_receive_text
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_ActivityLogin_ToSignIn"
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._is_special
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.special_frame
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L3_1.Received
    L4_2 = A1_2 ~= L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.special_received_mark
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L3_1.Received
    L4_2 = A1_2 == L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.normal_frame
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.received_mark
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.normal_frame
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L3_1.Received
    L4_2 = A1_2 ~= L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.received_mark
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L3_1.Received
    L4_2 = A1_2 == L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.special_frame
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.special_received_mark
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_status = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = #A1_2
end
L0_1._set_rarity_stars = L5_1
function L5_1(A0_2, A1_2)
end
L0_1._set_rarity_hint = L5_1
function L5_1(A0_2, A1_2)
end
L0_1._set_rarity_bg = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._set_special_bg = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._configID
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_clicked = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._is_main_panel_selected
    if not L1_2 then
      return
    end
  end
  L1_2 = A0_2._click_cbk
  if L1_2 then
    L1_2 = A0_2._click_cbk_owner
    if L1_2 then
      L1_2 = A0_2._click_cbk
      L2_2 = A0_2._click_cbk_owner
      L3_2 = A0_2._panel_index
      L4_2 = A0_2._configID
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_receive_btn_clicked = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A2_2
  A0_2._click_cbk_owner = A1_2
end
L0_1.register_click_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_ictrl_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_root_btn_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_ictrl_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_root_btn_deselected = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputDeviceClass
  L2_2 = L2_2.Controller
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_ictrl_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.ictrl_pc_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_in_control_input_switch = L5_1
return L0_1
