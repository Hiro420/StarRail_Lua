local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumExhibitCollctionHintDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumExhibitCollctionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumExhibitCollctionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = "MuseumExhibitionCollectionHintDialog_Once"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MuseumModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "MuseumExhibitCollctionHintDialog"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumExhibitCollctionHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_special_above_dialog = true
  A0_2._is_resp_esc = false
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  A0_2._items_table = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_enumerable
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L1_1.AllExhibitItemData
    L9_2 = L8_2
    L8_2 = L8_2.TryGetValue
    L10_2 = L7_2
    L8_2, L9_2 = L8_2(L9_2, L10_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._items_table
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_exhibit_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_exhibit_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MuseumAreaNewExhibitItemHintFinish
  L1_2(L2_2)
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_properties
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_list
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  A0_2._time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._time
  L2_2 = L2_2 - A1_2
  A0_2._time = L2_2
  L2_2 = A0_2._time
  if L2_2 < 0 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L2_1._on_tick = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MuseumExhibitCollctionPanel
    L8_2 = G
    L8_2 = L8_2.MuseumExhibitCollctionPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._items_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L2_1._on_exhibit_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = nil
  L4_2 = G
  L4_2 = L4_2.MuseumUtils
  L4_2 = L4_2.get_items_property_values
  L5_2 = A0_2._items_table
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L3_2 = L6_2
  L2_2 = L5_2
  L1_2 = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.property_a_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L1_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.StuffStats
  L7_2 = L7_2.StatsA
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.property_b_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L2_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.StuffStats
  L7_2 = L7_2.StatsB
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.property_c_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.StuffStats
  L7_2 = L7_2.StatsC
  L4_2(L5_2, L6_2, L7_2)
end
L2_1._setup_properties = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_exhibit_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._items_table
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_exhibit_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L2_1._setup_item_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = 0
  L4_2 = ipairs
  L5_2 = A0_2._items_table
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.MuseumItemRow
    L10_2 = L9_2.StatsA
    L1_2 = L1_2 + L10_2
    L10_2 = L9_2.StatsB
    L2_2 = L2_2 + L10_2
    L10_2 = L9_2.StatsC
    L3_2 = L3_2 + L10_2
  end
  L4_2 = L1_2
  L5_2 = L2_2
  L6_2 = L3_2
  return L4_2, L5_2, L6_2
end
L2_1.get_items_property_values = L3_1
return L2_1
