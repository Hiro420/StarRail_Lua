local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.ActivityClockParkUtils
L0_1 = L0_1.get_attribute_types
L0_1 = L0_1()
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkGamePlayCardEffectPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ClockParkEffectResult
  L1_2 = L1_2.Get
  L1_2 = L1_2()
  A0_2._buff_effect = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._init_effect_finish
  if not L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._init_effect_attribute_type
    L4_2(L5_2)
  end
  L5_2 = A1_2
  L4_2 = A1_2.HasAnyDice
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_effect
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_buff
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2(L5_2, L6_2, L7_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._setup_show_attribute_hint
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_effect_list
    L6_2 = L6_2[L4_2]
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.setup_attribute_type
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
  A0_2._init_effect_finish = true
end
L1_1._init_effect_attribute_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = A1_2.SlotInfo
  L3_2 = L2_2
  L2_2 = L2_2.HasAnyDice
  L2_2 = A1_2 ~= nil and L2_2
  L3_2 = false
  L4_2 = 0
  L5_2 = pairs
  L6_2 = L0_1
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = A0_2._binder
    L10_2 = L10_2.panel_effect_list
    L10_2 = L10_2[L8_2]
    if L10_2 ~= nil then
      L11_2 = A1_2.AttributeDisplayPositiveHint
      L11_2 = L11_2[L9_2]
      L12_2 = A1_2.AttributeDisplayNegativeHint
      L12_2 = L12_2[L9_2]
      L13_2 = A1_2.AttributeBuffHint
      L13_2 = L13_2[L9_2]
      L15_2 = L10_2
      L14_2 = L10_2._setup_num
      L16_2 = 0
      L14_2(L15_2, L16_2)
      L15_2 = L10_2
      L14_2 = L10_2.set_show_attribute_hint
      L16_2 = L11_2 or L16_2
      if not L11_2 then
        L16_2 = L12_2
      end
      L17_2 = not L2_2 and L17_2
      L18_2 = not L2_2 and L18_2
      L19_2 = not L2_2 and L19_2
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
      if L13_2 and not L2_2 then
        L3_2 = true
        L4_2 = L8_2
      else
        L15_2 = L10_2
        L14_2 = L10_2.setup_buff
        L16_2 = false
        L14_2(L15_2, L16_2)
      end
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2._set_panel_show_buff_hint
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L1_1._setup_show_attribute_hint = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.panel_effect_list
    L8_2 = L8_2[L6_2]
    if L8_2 ~= nil then
      L10_2 = L8_2
      L9_2 = L8_2.setup_view
      L11_2 = A1_2
      L12_2 = A2_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L1_1._setup_effect = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A0_2
  L3_2 = A0_2._get_buff_id
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 ~= nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ClockParkBuffExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 ~= nil then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.ClockParkBuffItem
      L5_2 = L5_2.GetBuffEffectResult
      L6_2 = L3_2
      L7_2 = A0_2._buff_effect
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2._set_panel_show_buff
      L7_2 = true
      L8_2 = A0_2._buff_effect
      L9_2 = A1_2
      L10_2 = A2_2
      L11_2 = L4_2
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_buff_desc
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L4_2.BuffDesc
      L8_2 = L4_2.Times
      L9_2 = L4_2.Param1
      L10_2 = L4_2.Param2
      L11_2 = L4_2.Param3
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = A0_2
      L5_2 = A0_2._get_buff_display_arrow_index
      L7_2 = A0_2._buff_effect
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = pairs
      L7_2 = A0_2._binder
      L7_2 = L7_2.node_buff_arrow_list
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        L12_2 = L10_2
        L11_2 = L10_2.SafeSetActive
        L13_2 = L9_2 == L5_2
        L11_2(L12_2, L13_2)
      end
      return
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._set_panel_show_buff
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L1_1._setup_buff = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if A1_2 ~= nil then
      L8_2 = A1_2
      L7_2 = A1_2.HasPositiveEffect
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        return L5_2
      end
    end
  end
end
L1_1._get_buff_display_arrow_index = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_buff
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  L6_2 = pairs
  L7_2 = L0_1
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = A0_2._binder
    L11_2 = L11_2.panel_effect_list
    L11_2 = L11_2[L9_2]
    L12_2 = L0_1[L9_2]
    if L11_2 ~= nil then
      if A1_2 then
        L13_2 = A2_2.AttributeChange
        L13_2 = L13_2[L12_2]
        L14_2 = A2_2.AttributeMultiplier
        L14_2 = L14_2[L12_2]
        L15_2 = A3_2.AttributeBuff
        L15_2 = L15_2[L12_2]
        if not L15_2 then
          L15_2 = false
        end
        L16_2 = A4_2.AttributeBuff
        L16_2 = L16_2[L12_2]
        if not L16_2 then
          L16_2 = false
        end
        L18_2 = L11_2
        L17_2 = L11_2.setup_buff
        L19_2 = L15_2 or L19_2
        if not L15_2 then
          L19_2 = L16_2
        end
        L20_2 = L13_2
        L21_2 = L14_2
        L22_2 = A5_2
        L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
      else
        L14_2 = L11_2
        L13_2 = L11_2.setup_buff
        L15_2 = false
        L13_2(L14_2, L15_2)
      end
    end
  end
end
L1_1._set_panel_show_buff = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_buff_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ClockPark_Card_Multiplication_PreTip"
    L3_2(L4_2, L5_2)
    L3_2 = pairs
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_buff_arrow_list
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = L7_2
      L8_2 = L7_2.SafeSetActive
      L10_2 = L6_2 == A2_2
      L8_2(L9_2, L10_2)
    end
  end
end
L1_1._set_panel_show_buff_hint = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.GainBuff
  L3_2 = L3_2.Count
  if 0 < L3_2 then
    L3_2 = A1_2.GainBuff
    L3_2 = L3_2[0]
    return L3_2
  end
  L3_2 = A2_2.GainBuff
  L3_2 = L3_2.Count
  if 0 < L3_2 then
    L3_2 = A2_2.GainBuff
    L3_2 = L3_2[0]
    return L3_2
  end
end
L1_1._get_buff_id = L2_1
return L1_1
