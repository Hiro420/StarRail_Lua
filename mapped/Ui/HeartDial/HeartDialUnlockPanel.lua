local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialUnlockPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeartDialUnlockPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeartDialModule
L2_1 = "UIText_HeartDial_titledesc11"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_disable
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 ~= nil then
    L3_2 = A1_2
    L2_2 = A1_2.GetComponent
    L4_2 = typeof
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.NPCComponent
    L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    if L2_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.GetNPCName
      L3_2 = L3_2(L4_2)
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.TextmapStatic
      L4_2 = L4_2.GetText
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_desc
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L2_1
      L8_2 = L4_2
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A2_2
  A0_2._callback_owner = A1_2
end
L0_1.register_btn_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_owner
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_owner
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_confirm = L3_1
return L0_1
