local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDimensionTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._text_id = A1_2
  A0_2._icon_path = A2_2
  A0_2._reddot_name = A3_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.selected_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._text_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.unselected_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._text_id
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_root
  L3_2 = L3_2.gameObject
  L4_2 = A0_2.uid
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._icon_path
  if L1_2 then
    L1_2 = A0_2._icon_path
    if L1_2 ~= "" then
      L2_2 = A0_2
      L1_2 = A0_2._load_sprite_to
      L3_2 = A0_2._binder
      L3_2 = L3_2.selected_icon
      L4_2 = A0_2._icon_path
      L1_2(L2_2, L3_2, L4_2)
      L2_2 = A0_2
      L1_2 = A0_2._load_sprite_to
      L3_2 = A0_2._binder
      L3_2 = L3_2.unselected_icon
      L4_2 = A0_2._icon_path
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  L1_2 = A0_2._reddot_name
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = A0_2._reddot_name
    L4_2 = nil
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._on_added = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._pre_click_cbk = A1_2
  A0_2._pre_click_owner = A2_2
end
L0_1.register_pre_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pre_click_cbk
  if L1_2 then
    L1_2 = A0_2._pre_click_owner
    if L1_2 then
      L1_2 = A0_2._pre_click_cbk
      L2_2 = A0_2._pre_click_owner
      L3_2 = A0_2.uid
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.tab_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L1_1
return L0_1
