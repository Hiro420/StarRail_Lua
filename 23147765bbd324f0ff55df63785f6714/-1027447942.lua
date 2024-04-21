local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceInfoItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceInfoItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueEntranceBuffInfoDisplayPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_panels
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_content_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_aeon_buff_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_navigation
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.ContentData
  L3_2 = L3_2.TitleID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._data
  L3_2 = L3_2.ContentData
  L3_2 = L3_2.DescContent
  L1_2(L2_2, L3_2)
end
L0_1._setup_content_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._panels = L1_2
  L1_2 = {}
  A0_2._dice_panels = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.desc_item_roots
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ChessRogueEntranceInfoItem
    L9_2 = G
    L9_2 = L9_2.ChessRogueEntranceInfoItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_selected_callback
    L9_2 = A0_2._on_buff_panel_selected
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._panels
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_panels = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.BuffData
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_aeon_buff_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.eff_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.BuffTitle
  L1_2(L2_2, L3_2)
end
L0_1._setup_aeon_buff_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._data
    L6_2 = L6_2.BuffData
    L6_2 = L6_2[L4_2]
    if L6_2 ~= nil then
      L7_2 = L5_2
      L6_2 = L5_2.safe_set_active
      L8_2 = true
      L6_2(L7_2, L8_2)
      L7_2 = L5_2
      L6_2 = L5_2.setup_entrance_buff_view
      L8_2 = A0_2._data
      L8_2 = L8_2.BuffData
      L8_2 = L8_2[L4_2]
      L6_2(L7_2, L8_2)
    else
      L7_2 = L5_2
      L6_2 = L5_2.safe_set_active
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._refresh_aeon_buff_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._parent
  L4_2 = L3_2
  L3_2 = L3_2.get_scroll_rect
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._panels
  L4_2 = L4_2[1]
  if A1_2 == L4_2 then
    L5_2 = L3_2
    L4_2 = L3_2.SetVerticalScrollPercent
    L6_2 = 1
    L4_2(L5_2, L6_2)
  else
    L5_2 = L3_2
    L4_2 = L3_2.ScrollToTransform
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_buff_panel_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.is_active
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L10_2 = L6_2
      L9_2 = L6_2.get_btn_root
      L9_2, L10_2 = L9_2(L10_2)
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_navigation
  L3_2 = L1_2
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L2_2(L3_2, L4_2)
end
L0_1._init_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panels
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_btn_root
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
