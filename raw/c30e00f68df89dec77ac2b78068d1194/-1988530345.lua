local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterResistListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ResistIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ResistIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterResistListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._type_resist_datas = L1_2
  L1_2 = {}
  A0_2._status_resist_datas = L1_2
  A0_2._resist_count = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_resist
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_resist_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_resist_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._resist_count
  L1_2 = 0 < L1_2
  return L1_2
end
L0_1.have_resist_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.BattleUIUtils
  L2_2 = L2_2.get_type_resist_data_table
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._type_resist_datas = L2_2
  L2_2 = G
  L2_2 = L2_2.BattleUIUtils
  L2_2 = L2_2.get_status_resist_data_table
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._status_resist_datas = L2_2
  L2_2 = A0_2._type_resist_datas
  L2_2 = #L2_2
  L3_2 = A0_2._status_resist_datas
  L3_2 = #L3_2
  L2_2 = L2_2 + L3_2
  A0_2._resist_count = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = A0_2._resist_count
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._resist_count
  if 0 < L2_2 then
    L2_2 = {}
    A0_2._panel_icons = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_view_resist
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._resist_count
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_resist_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ResistIconPanel
    L8_2 = G
    L8_2 = L8_2.ResistIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_select_callback
    L7_2 = A0_2._on_icon_select
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_deselect_callback
    L7_2 = A0_2._on_icon_deselect
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A2_2 + 1
  L6_2 = A0_2._type_resist_datas
  L6_2 = #L6_2
  if L5_2 <= L6_2 then
    L6_2 = A0_2._type_resist_datas
    L6_2 = L6_2[L5_2]
    L8_2 = L4_2
    L7_2 = L4_2.setup_type_view
    L9_2 = L6_2
    L10_2 = L5_2
    L7_2(L8_2, L9_2, L10_2)
  else
    L6_2 = A0_2._status_resist_datas
    L7_2 = A0_2._type_resist_datas
    L7_2 = #L7_2
    L7_2 = L5_2 - L7_2
    L6_2 = L6_2[L7_2]
    L8_2 = L4_2
    L7_2 = L4_2.setup_status_view
    L9_2 = L6_2
    L10_2 = L5_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L6_2 = A0_2._panel_icons
  L6_2[L5_2] = L4_2
  return L3_2
end
L0_1._on_resist_item_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._panel_icons
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.show_hint
    L9_2 = L5_2 == A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._on_icon_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._panel_icons
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.show_hint
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
end
L0_1._on_icon_deselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_resist
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._resist_count
    if L2_2 ~= 0 then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L0_1.get_first_selected_object = L1_1
return L0_1
