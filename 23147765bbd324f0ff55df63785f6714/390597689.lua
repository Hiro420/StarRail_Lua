local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AlleyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "AlleyPackResultInfoRowPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_desc
  L4_2 = A1_2.TextStr
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_currency
  L4_2 = A1_2.ShowProfit
  L5_2 = A1_2.Profit
  L6_2 = A1_2.ShowStamp
  L7_2 = A1_2.Stamp
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._setup_desc = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_icon
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A1_2 or L7_2
  if not A1_2 then
    L7_2 = A3_2
  end
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A1_2 or L7_2
  if not A1_2 then
    L7_2 = A3_2
  end
  L5_2(L6_2, L7_2)
  if A1_2 then
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_icon
    L8_2 = L0_1.AlleyConstValue
    L8_2 = L8_2.FundItemIconPath
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_num
    L6_2 = L5_2
    L5_2 = L5_2.SetCustomizedText
    L7_2 = A2_2
    L5_2(L6_2, L7_2)
  end
  if A3_2 then
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_icon
    L8_2 = L0_1.AlleyConstValue
    L8_2 = L8_2.StampItemIconPath
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_num
    L6_2 = L5_2
    L5_2 = L5_2.SetCustomizedText
    L7_2 = A4_2
    L5_2(L6_2, L7_2)
  end
end
L1_1._setup_currency = L2_1
return L1_1
