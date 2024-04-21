local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueSelectBuffDescPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._maze_buff_row = nil
  A0_2._is_short_desc = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_btn
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator_btn
    L4_2 = A0_2._on_btn_click
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator_btn
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator_btn
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetEnabled
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.in_control_btn
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.in_control_btn
    L4_2 = A1_2 or L4_2
    L4_2 = A1_2 and A2_2 ~= false
    L3_2.ActionEnabled = L4_2
  end
end
L0_1.setup_btn_enable = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._maze_buff_row
  if L3_2 ~= nil then
    L3_2 = A0_2._maze_buff_row
    if L3_2 == A1_2 then
      L3_2 = A0_2._is_short_desc
      if L3_2 == A2_2 then
        L3_2 = A0_2._can_refresh
        if not L3_2 then
          goto lbl_47
        end
      end
    end
  end
  if A2_2 == true then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2.BuffSimpleDesc
    L6_2 = G
    L6_2 = L6_2.UITextUtils
    L6_2 = L6_2.GetSkillParams
    L7_2 = A1_2.ParamList
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2.BuffDesc
    L6_2 = G
    L6_2 = L6_2.UITextUtils
    L6_2 = L6_2.GetSkillParams
    L7_2 = A1_2.ParamList
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_desc
  L3_2(L4_2)
  A0_2._maze_buff_row = A1_2
  A0_2._is_short_desc = A2_2
  A0_2._can_refresh = false
  ::lbl_47::
end
L0_1.setup_desc = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RogueEndlessMegaBuffDescExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2.ID
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.setup_desc
    L7_2 = A1_2
    L8_2 = A3_2
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = A0_2._maze_buff_row
  if L5_2 ~= nil then
    L5_2 = A0_2._maze_buff_row
    if L5_2 == A1_2 then
      L5_2 = A0_2._is_short_desc
      if L5_2 == A3_2 then
        L5_2 = A0_2._can_refresh
        if not L5_2 then
          goto lbl_58
        end
      end
    end
  end
  L5_2 = nil
  if A3_2 then
    L5_2 = L4_2.BuffSimpleDesc
    L7_2 = L5_2
    L6_2 = L5_2.IsEmpty
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L5_2 = A1_2.BuffSimpleDesc
    end
  else
    L5_2 = L4_2.BuffDesc
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_desc
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L5_2
  L10_2 = A0_2
  L9_2 = A0_2._get_differ_desc_params
  L11_2 = A1_2.ParamList
  L12_2 = A2_2.ParamList
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = A0_2._binder
  L7_2 = L7_2.rect_desc
  L6_2(L7_2)
  A0_2._maze_buff_row = A1_2
  A0_2._is_short_desc = A3_2
  A0_2._can_refresh = false
  ::lbl_58::
end
L0_1.setup_differ_desc = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = 10
  L4_2 = {}
  L5_2 = 1
  L6_2 = L3_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L4_2[L8_2] = ""
  end
  L5_2 = 0
  L6_2 = A1_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A2_2[L8_2]
    L10_2 = A1_2[L8_2]
    L11_2 = L10_2 - L9_2
    L12_2 = L8_2 + 1
    L4_2[L12_2] = L9_2
    L12_2 = L8_2 + 1
    L12_2 = L12_2 + L3_2
    L4_2[L12_2] = L11_2
  end
  L5_2 = unpack
  L6_2 = L4_2
  return L5_2(L6_2)
end
L0_1._get_differ_desc_params = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueEndlessMegaBuffDescExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.ID
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.BuffPreshowDesc
  L8_2 = A0_2
  L7_2 = A0_2._get_preview_desc_params
  L9_2 = A1_2.ParamList
  L10_2 = A2_2.ParamList
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.rect_desc
  L4_2(L5_2)
  A0_2._maze_buff_row = A1_2
  A0_2._is_short_desc = false
  A0_2._can_refresh = false
end
L0_1.setup_preview_desc = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = 10
  L4_2 = {}
  L5_2 = 1
  L6_2 = L3_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L4_2[L8_2] = ""
  end
  L5_2 = 0
  L6_2 = A1_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A2_2[L8_2]
    L10_2 = A1_2[L8_2]
    L11_2 = L8_2 + 1
    L4_2[L11_2] = L10_2
    L11_2 = L8_2 + 1
    L11_2 = L11_2 + L3_2
    L4_2[L11_2] = L9_2
  end
  L5_2 = unpack
  L6_2 = L4_2
  return L5_2(L6_2)
end
L0_1._get_preview_desc_params = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._can_refresh = true
end
L0_1.setup_desc_text = L1_1
return L0_1
