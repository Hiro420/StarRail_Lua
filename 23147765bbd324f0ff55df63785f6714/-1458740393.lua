local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookMainPagePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookMainPagePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.root_btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._index = A1_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.name
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextID
  L9_2 = A2_2
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2._load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.img
  L10_2 = A3_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.num
  L8_2 = L7_2
  L7_2 = L7_2.SetCustomizedText
  L9_2 = A4_2
  L10_2 = "/"
  L11_2 = A5_2
  L9_2 = L9_2 .. L10_2 .. L11_2
  L7_2(L8_2, L9_2)
  if A6_2 then
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.bind_reddot
    L9_2 = "RogueHandbookAeon"
    L10_2 = "#"
    L11_2 = A0_2
    L12_2 = A0_2._binder
    L12_2 = L12_2.red_dot
    L12_2 = L12_2.transform
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_locked
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_locked = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._cbk_owner = A1_2
  A0_2._cbk = A2_2
end
L0_1.register_click_cbk = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cbk
  if L1_2 then
    L1_2 = A0_2._cbk_owner
    if L1_2 then
      L1_2 = A0_2._cbk
      L2_2 = A0_2._cbk_owner
      L3_2 = A0_2._index
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_root_btn_clicked = L1_1
return L0_1
