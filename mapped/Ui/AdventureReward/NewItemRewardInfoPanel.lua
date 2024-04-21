local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.RedDotNew"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.RedDotNewBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NewItemRewardInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.loader_reddot
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.loader_reddot
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.transform
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2.create_panel
      L4_2 = G
      L4_2 = L4_2.RedDotNew
      L5_2 = G
      L5_2 = L5_2.RedDotNewBinder
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L4_2 = L2_2
      L3_2 = L2_2.async_bind
      L5_2 = L1_2.transform
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._row = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SetSingleLineEllipsis
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._row
  L4_2 = L4_2.ItemName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._row
  L4_2 = L4_2.ItemDesc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_item
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._row
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._row
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
end
L0_1._on_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MazeNewItemRewardFadeIn"
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MazeNewItemRewardFadeOut"
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_out = L1_1
return L0_1
