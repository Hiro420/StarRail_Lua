local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.PileToastDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.PileToastItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.PileToastItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PileToastDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.block_when_async_load = false
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PileToastDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.add_hide_node_on_sharing
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessage
  L4_2 = L0_1._on_toast
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.pile_toast
  L3_2 = L2_2
  L2_2 = L2_2.Pile
  L4_2 = nil
  L5_2 = nil
  L6_2 = A1_2[1]
  L7_2 = unpack
  L8_2 = A1_2[2]
  L7_2, L8_2 = L7_2(L8_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_toast = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = UNITY_EDITOR
  if not L2_2 then
    L2_2 = NG_HSOD_DEBUG
    if not L2_2 then
      L2_2 = NG_HSOD_PROFILE
    end
  end
  if L2_2 == false then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogWarningFormatWithTag
    L3_2 = G
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.UI
    L4_2 = "Pile Toast -- Use Debug Function In Release."
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.pile_toast
  L3_2 = L2_2
  L2_2 = L2_2.Pile
  L4_2 = nil
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_toast_debug = L1_1
return L0_1
