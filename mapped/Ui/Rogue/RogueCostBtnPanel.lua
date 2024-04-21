local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueCostBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Enough = "#121212cc"
L1_1.NotEnough = "#eb4d3dcc"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._callback_func
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._callback_func
  L2_2 = A0_2._callback_self
  L1_2(L2_2)
end
L0_1._on_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback_func = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_cost
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2 ~= nil
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_split_line
  if L4_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_split_line
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = A1_2 ~= nil
    L4_2(L5_2, L6_2)
  end
  if A1_2 == nil then
    return
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.InventoryModule
  L6_2 = L5_2
  L5_2 = L5_2.GetItemCountByConfigID
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_cost
  L9_2 = L4_2.ItemIconPath
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_cost_num
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_cost_num
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextColor
  if A2_2 <= L5_2 then
    L8_2 = L1_1.Enough
    if L8_2 then
      goto lbl_59
    end
  end
  L8_2 = L1_1.NotEnough
  ::lbl_59::
  L6_2(L7_2, L8_2)
  if A3_2 ~= false then
    L7_2 = A0_2
    L6_2 = A0_2.setup_btn_interact
    L8_2 = A2_2 <= L5_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_tip
    if L6_2 ~= nil then
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_tip
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = A2_2 > L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.setup_cost = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_btn_text = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_btn_interact = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_cost
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_cost_status = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextColor
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_btn_text_color = L2_1
return L0_1
