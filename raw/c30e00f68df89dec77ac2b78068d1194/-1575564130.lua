local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = "MonopolyMiniGameGachaScrollCNum"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MonopolyModule
L2_1 = {}
L3_1 = "UIText_ActivityMonopoly_Game_MonopolyGachaC_Mark_A"
L4_1 = "UIText_ActivityMonopoly_Game_MonopolyGachaC_Mark_B"
L5_1 = "UIText_ActivityMonopoly_Game_MonopolyGachaC_Mark_C"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityMonopolyMiniGameChequeItemPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  A0_2._resource_id = 0
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._known_callback = A1_2
  A0_2._known_handler = A2_2
end
L3_1.register_known_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._resource_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayToEnd
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation
  L4_2 = L0_1
  L2_2(L3_2, L4_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._resource_id = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_unknown
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L2_1[A1_2]
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayToBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation
  L4_2 = L0_1
  L2_2(L3_2, L4_2)
end
L3_1.setup_unknown_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._resource_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation
  L4_2 = L0_1
  L2_2(L3_2, L4_2)
end
L3_1.play_known = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._resource_id
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_final
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._resource_id
  L3_2 = L3_2 - 100
  L1_2(L2_2, L3_2)
end
L3_1._refresh_view = L4_1
return L3_1
