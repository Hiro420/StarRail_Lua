local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AlleyModule
L1_1 = "AlleyShipping_Currency_CompleteOrder"
L2_1 = "AlleyShipping_Currency_Remind"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "AlleyPackProfitPreviewPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_currency
  L4_2 = L0_1.AlleyConstValue
  L4_2 = L4_2.FundItemIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_profit_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1.setup_profit_title = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_profit_preview
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if A2_2 == nil then
    A2_2 = 0
  end
  if A3_2 == nil then
    A3_2 = 0
  end
  L4_2 = A2_2 + A3_2
  if 0 < L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIAnimationUtils
    L4_2 = L4_2.PlayFromBegin
    L5_2 = A0_2._binder
    L5_2 = L5_2.animation_profit
    L6_2 = L2_1
    L4_2(L5_2, L6_2)
  end
end
L3_1.setup_profit_preview = L4_1
return L3_1
