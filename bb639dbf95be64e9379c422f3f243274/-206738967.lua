local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "UIText_ActivityMonopoly_DailyTransfer_RewardPage"
L2_1 = "UIText_ActivityMonopoly_DailyTransfer_Continue"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityMonopolyServerSettlePanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2, A1_2, A2_2)
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_return
  L4_2 = A0_2._on_btn_return
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._server_progress = A1_2
  L3_2 = A2_2 or L3_2
  if A2_2 == nil or not A2_2 then
    L3_2 = false
  end
  A0_2._is_jackpot_main_page_settle = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_progress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_ActivityMonopoly_Common_PercentValue"
  L6_2 = A0_2._server_progress
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bg_normal
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L0_1.JackpotInfo
  L5_2 = L5_2.IsProgressExtra
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bg_extra
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L0_1.JackpotInfo
  L5_2 = L5_2.IsProgressExtra
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._is_jackpot_main_page_settle
  if L3_2 then
    L3_2 = L2_1
    if L3_2 then
      goto lbl_34
    end
  end
  L3_2 = L1_1
  ::lbl_34::
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_btn_return
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._return_callback
  L3_2 = A0_2._return_handler
  L1_2(L2_2, L3_2)
end
L3_1._on_btn_return = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._return_callback = A1_2
  A0_2._return_handler = A2_2
end
L3_1.register_btn_callback = L4_1
return L3_1
