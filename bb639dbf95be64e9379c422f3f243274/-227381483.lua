local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.BaseAvatarSelectPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeAvatarSelectPanel"
L2_1 = G
L2_1 = L2_1.BaseAvatarSelectPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.super
  L1_2 = L1_2._on_load
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2._on_dispose
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = {}
  end
  A0_2._selected_avatars = L2_2
  L2_2 = L0_1.super
  L2_2 = L2_2.init
  L3_2 = A0_2
  L2_2(L3_2)
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.set_show_hp
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_selected_order
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0 < L3_2
  if L4_2 then
    A0_2._last_selected_panel = A1_2
  end
  L6_2 = A1_2
  L5_2 = A1_2.setup_view
  L7_2 = A2_2
  L8_2 = false
  L9_2 = L4_2
  L10_2 = nil
  L11_2 = A0_2._strategy
  L11_2 = L11_2.max_selection
  L11_2 = 1 < L11_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = A1_2
  L5_2 = A1_2.setup_order
  L7_2 = A0_2._strategy
  L7_2 = L7_2.max_selection
  L7_2 = 1 < L7_2 and L7_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.setup_icon_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_avatars
  return L1_2
end
L0_1.get_top_avatars = L1_1
return L0_1
