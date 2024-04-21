local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AlleyModule
L1_1 = "AlleyShipping_AddNumHint_Once"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "AlleyPackProfitJumpTextPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = L0_1.AlleyConstValue
  L4_2 = L4_2.FundItemIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L1_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._recycle
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._recycle_callback = nil
  A0_2._recycle_callback_self = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._recycle_callback = A1_2
  A0_2._recycle_callback_self = A2_2
end
L2_1.register_recycle_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_transform
  L2_2.localPosition = A1_2
end
L2_1.adjust_pos = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_profit
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Rogue_Aeon_Level_Tip_1"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_profit
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
end
L2_1.show_profit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._recycle_callback
  L3_2 = A0_2._recycle_callback_self
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._recycle = L3_1
return L2_1
