local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueUnderLinePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueUnderLinePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._not_disable_root_btn = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_extra_info_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 == nil then
    A2_2 = false
  end
  A0_2._not_disable_root_btn = A2_2
  A0_2._extra_info = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_root_btn
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._extra_info
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1.is_extra_info_available = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_extra_info_available
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.show_extra_info
  L2_2 = A0_2._extra_info
  L1_2(L2_2)
end
L0_1.show_extra_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.show_extra_info
  L1_2(L2_2)
end
L0_1._on_extra_info_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._not_disable_root_btn
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root_btn
    L1_2.enabled = true
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  L3_2 = A0_2
  L2_2 = A0_2.is_extra_info_available
  L2_2 = L2_2(L3_2)
  L1_2.enabled = L2_2
end
L0_1._refresh_root_btn = L1_1
return L0_1
