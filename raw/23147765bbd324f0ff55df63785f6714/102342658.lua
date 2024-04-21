local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = "UIText_ClockPark_Add"
L2_1 = "UIText_ClockPark_Subtract"
L3_1 = "UIText_GachaAdditionalItem_Num"
L4_1 = "UIText_ClockPark_Card_Multiplication"
L5_1 = G
L5_1 = L5_1.ActivityClockParkUtils
L5_1 = L5_1.get_attribute_change_from_effect_result
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "ActivityClockParkGamePlayCardEffectItemPanel"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2, A1_2, A2_2)
end
L6_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_load = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._attribute_type = A1_2
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.AttributeInfo
  L2_2 = L2_2.AttributeItemsDict
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_effect_icon
    L6_2 = L2_2.IconPath
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_effect_icon_disable
    L6_2 = L2_2.IconPath
    L3_2(L4_2, L5_2, L6_2)
  end
end
L6_1.setup_attribute_type = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L6_2 = A0_2
  L5_2 = A0_2.set_show_effect_highlight_icon
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.set_show_preview_node
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_state
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_preview_up
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A1_2 or L7_2
  L7_2 = A1_2 and not A4_2 and L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_preview_down
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A1_2 or L7_2
  L7_2 = A1_2 and not A4_2 and L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_buff
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A4_2
  L5_2(L6_2, L7_2)
  if A4_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_buff_positive
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_buff_negative
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_buff_value
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L4_1
    L5_2(L6_2, L7_2)
  end
end
L6_1.set_show_attribute_hint = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_effect_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_effect_icon_disable
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L6_1.set_show_effect_highlight_icon = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_preview
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_up_all
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_down_all
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_buff
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L6_1.set_show_preview_node = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L5_1
  L4_2 = A1_2
  L5_2 = A0_2._attribute_type
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L5_1
  L5_2 = A2_2
  L6_2 = A0_2._attribute_type
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 + L4_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_num
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L6_1.setup_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.ActivityClockParkUtils
  L2_2 = L2_2.is_use_simplified_value
  L2_2 = L2_2()
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2 and A1_2 ~= 0
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_state
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 or L5_2
  L5_2 = L2_2 and A1_2 ~= 0
  L3_2(L4_2, L5_2)
  if A1_2 ~= 0 then
    if L2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_up_all
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = 0 < A1_2
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_down_all
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = A1_2 < 0
      L3_2(L4_2, L5_2)
      L3_2 = G
      L3_2 = L3_2.ActivityClockParkUtils
      L3_2 = L3_2.get_simplified_value
      L4_2 = A1_2
      L3_2 = L3_2(L4_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_up_1
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = L3_2 == 1
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_up_2
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = L3_2 == 2
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_up_3
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = 3 <= L3_2
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_up_4
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = 3 < L3_2
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_down_1
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = L3_2 == -1
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_down_2
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = L3_2 == -2
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_down_3
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = L3_2 <= -3
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_down_4
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = L3_2 < -3
      L4_2(L5_2, L6_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_value_positive
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = 0 < A1_2
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_value_negative
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = A1_2 < 0
      L3_2(L4_2, L5_2)
      if 0 < A1_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.txt_value_positive
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = L1_1
        L6_2 = A1_2
        L3_2(L4_2, L5_2, L6_2)
      end
      if A1_2 < 0 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.txt_value_negative
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = L2_1
        L6_2 = -A1_2
        L3_2(L4_2, L5_2, L6_2)
      end
    end
    L4_2 = A0_2
    L3_2 = A0_2.set_show_effect_highlight_icon
    L5_2 = true
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.set_show_preview_node
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L6_1._setup_num = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_buff
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  if A1_2 then
    if A2_2 ~= 0 then
      if 0 < A2_2 then
        L5_2 = A0_2._binder
        L5_2 = L5_2.txt_buff_value
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetTextID
        L7_2 = L1_1
        L8_2 = A2_2
        L5_2(L6_2, L7_2, L8_2)
      else
        L5_2 = A0_2._binder
        L5_2 = L5_2.txt_buff_value
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetTextID
        L7_2 = L2_1
        L8_2 = -A2_2
        L5_2(L6_2, L7_2, L8_2)
      end
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_buff_positive
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = 0 < A2_2
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_buff_negative
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = A2_2 < 0
      L5_2(L6_2, L7_2)
    else
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_buff_value
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L3_1
      L8_2 = A3_2
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_buff_positive
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = 1 <= A3_2
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_buff_negative
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = A3_2 < 1
      L5_2(L6_2, L7_2)
    end
    L6_2 = A0_2
    L5_2 = A0_2.set_show_effect_highlight_icon
    L7_2 = true
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2.set_show_preview_node
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_num
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
end
L6_1.setup_buff = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_state
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  if A1_2 ~= 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_value_positive
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = 0 < A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_value_negative
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2 < 0
    L2_2(L3_2, L4_2)
    if 0 < A1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_value_positive
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_1
      L5_2 = A1_2
      L2_2(L3_2, L4_2, L5_2)
    end
    if A1_2 < 0 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_value_negative
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L2_1
      L5_2 = -A1_2
      L2_2(L3_2, L4_2, L5_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2.set_show_effect_highlight_icon
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_show_preview_node
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L6_1.setup_num_result = L7_1
return L6_1
