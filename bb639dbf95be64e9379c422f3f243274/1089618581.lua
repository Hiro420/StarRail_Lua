local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentTreeRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentTreeRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentTreeRowSinglePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentTreeRowTriplePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueTalentPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueTalentPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._cur_select_talent_data_item = nil
  A0_2._cur_select_btn = nil
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "IconActiveColor"
  L4_2 = "#DBC291"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "IconUnActiveColor"
  L4_2 = "#FFFFFF"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "LineActiveColor"
  L4_2 = "#DBC291FF"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "LineUnActiveColor"
  L4_2 = "#FFFFFF33"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "InnerCircleActiveColor"
  L4_2 = "#DBC291"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "InnerCircleUnActiveColor"
  L4_2 = "#FFFFFF"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "OuterCircleActiveColor"
  L4_2 = "#DBC29133"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "OuterCircleUnActiveColor"
  L4_2 = "#FFFFFF33"
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueTalentDetailPanel
  L4_2 = G
  L4_2 = L4_2.RogueTalentDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._talent_detail_panel = L1_2
  L1_2 = A0_2._talent_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.detail_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L4_2 = A0_2._on_close_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.PBMNNBODGDG
  L4_2 = A0_2._on_get_rogue_talent_info_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.CHEEIBMOFDF
  L4_2 = A0_2._on_get_rogue_talent_active_rsp
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.prefab_load_res_bar
  L3_2 = "RogueTalentPage"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._talent_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_talent_active_callback
  L3_2 = A0_2._on_talent_item_active
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_talent_data_item_list
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_NetworkManager
    L3_2 = L2_2
    L2_2 = L2_2.KMKOGBFJBOG
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.content
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    A0_2._talent_data_items = L1_2
    L3_2 = A0_2
    L2_2 = A0_2._setup_view_when_data_ready
    L2_2(L3_2)
  end
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_talent_data_item_list
  L1_2 = L1_2(L2_2)
  A0_2._talent_data_items = L1_2
  L1_2 = A0_2._talent_data_items
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_when_data_ready
  L1_2(L2_2)
end
L0_1._on_get_rogue_talent_info_rsp = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_talent_tree_row_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_default_selected
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_all_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_default_selected
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view_when_data_ready = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_all_view
  L1_2(L2_2)
end
L0_1._on_get_rogue_talent_active_rsp = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_talent_loop_list_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_detail_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_activated_num
  L1_2(L2_2)
end
L0_1._setup_all_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._rogue_talent_tree_row_panels
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._rogue_talent_tree_row_panels
  L2_2 = A0_2._default_row_index
  L2_2 = L2_2 + 1
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.get_root_transform
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L3_2 = math
      L3_2 = L3_2.max
      L4_2 = 0
      L5_2 = L2_2.anchoredPosition
      L5_2 = L5_2.y
      L5_2 = -L5_2
      L5_2 = L5_2 - 30
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.prefab_load_skillrow
      L4_2 = L4_2.transform
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Vector2
      L6_2 = 0
      L7_2 = L3_2
      L5_2 = L5_2(L6_2, L7_2)
      L4_2.anchoredPosition = L5_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_panel_by_item_data
  L4_2 = A0_2._cur_select_talent_data_item
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._cur_select_item_panel = L2_2
end
L0_1._setup_default_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_close_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_talent_tree_row_list
  L1_2 = L1_2(L2_2)
  A0_2._talent_tree_row_list = L1_2
end
L0_1._init_talent_tree_row_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = A0_2._talent_tree_row_list
  L2_2 = L1_2
  L1_2 = L1_2.Count
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    return
  end
  L1_2 = A0_2._talent_tree_row_list
  L2_2 = L1_2
  L1_2 = L1_2.Get
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.get_item_count
  L2_2 = L2_2(L3_2)
  if L2_2 == 0 then
    return
  end
  L2_2 = 0
  L3_2 = 0
  L5_2 = L1_2
  L4_2 = L1_2.get_data_item
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = false
  L6_2 = 0
  L7_2 = A0_2._talent_tree_row_list
  L8_2 = L7_2
  L7_2 = L7_2.Count
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._talent_tree_row_list
    L11_2 = L10_2
    L10_2 = L10_2.Get
    L12_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = 0
    L13_2 = L10_2
    L12_2 = L10_2.get_item_count
    L12_2 = L12_2(L13_2)
    L12_2 = L12_2 - 1
    L13_2 = 1
    for L14_2 = L11_2, L12_2, L13_2 do
      L16_2 = L10_2
      L15_2 = L10_2.get_data_item
      L17_2 = L14_2
      L15_2 = L15_2(L16_2, L17_2)
      L17_2 = L15_2
      L16_2 = L15_2.IsUnlocked
      L16_2 = L16_2(L17_2)
      if L16_2 then
        L16_2 = L15_2.TalentID
        L17_2 = L4_2.TalentID
        if L16_2 > L17_2 then
          L4_2 = L15_2
          L2_2 = L9_2
          L3_2 = L14_2
          L5_2 = true
        end
      end
      if not L5_2 then
        L17_2 = L15_2
        L16_2 = L15_2.IsActivated
        L16_2 = L16_2(L17_2)
        if L16_2 then
          L16_2 = L15_2.TalentID
          L17_2 = L4_2.TalentID
          if L16_2 > L17_2 then
            L4_2 = L15_2
            L2_2 = L9_2
            L3_2 = L14_2
          end
        end
      end
    end
  end
  A0_2._default_row_index = L2_2
  A0_2._default_col_index = L3_2
  A0_2._cur_select_talent_data_item = L4_2
end
L0_1._init_default_selected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 ~= nil then
    L2_2 = A0_2._rogue_talent_tree_row_panels
    if L2_2 ~= nil then
      goto lbl_8
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_8::
  L2_2 = 1
  L3_2 = A0_2._rogue_talent_tree_row_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._rogue_talent_tree_row_panels
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.get_item_panel_by_data
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      return L7_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_panel_by_item_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_instantiate_tree
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_tree_view
  L1_2(L2_2)
end
L0_1._setup_talent_loop_list_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2._rogue_talent_tree_row_panels
  if L1_2 ~= nil then
    return
  end
  L1_2 = {}
  A0_2._rogue_talent_tree_row_panels = L1_2
  L1_2 = A0_2._talent_tree_row_list
  L2_2 = L1_2
  L1_2 = L1_2.Count
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.prefab_load_skillrow
  L2_2 = L2_2.transform
  L3_2 = 0
  L4_2 = L1_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._talent_tree_row_list
    L8_2 = L7_2
    L7_2 = L7_2.Get
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = nil
    L10_2 = L7_2
    L9_2 = L7_2.get_item_count
    L9_2 = L9_2(L10_2)
    if L9_2 == 1 then
      L10_2 = A0_2
      L9_2 = A0_2.create_panel
      L11_2 = G
      L11_2 = L11_2.RogueTalentTreeRowPanel
      L12_2 = G
      L12_2 = L12_2.RogueTalentTreeRowSinglePanelBinder
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2 = L9_2
    else
      L10_2 = L7_2
      L9_2 = L7_2.get_item_count
      L9_2 = L9_2(L10_2)
      if L9_2 == 3 then
        L10_2 = A0_2
        L9_2 = A0_2.create_panel
        L11_2 = G
        L11_2 = L11_2.RogueTalentTreeRowPanel
        L12_2 = G
        L12_2 = L12_2.RogueTalentTreeRowTriplePanelBinder
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L8_2 = L9_2
      end
    end
    if L8_2 ~= nil then
      L10_2 = A0_2
      L9_2 = A0_2._get_loop_list_prefab_index
      L11_2 = L6_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = A0_2._binder
      L10_2 = L10_2.prefab_load_skillrow
      L10_2 = L10_2.MultiPrefabList
      L10_2 = L10_2[L9_2]
      L12_2 = A0_2
      L11_2 = A0_2.instantiate_object
      L13_2 = L10_2
      L14_2 = L2_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L13_2 = L8_2
      L12_2 = L8_2.bind
      L14_2 = L11_2.transform
      L12_2(L13_2, L14_2)
      L13_2 = L8_2
      L12_2 = L8_2.set_item_click_callback
      L14_2 = A0_2._on_talent_item_click
      L15_2 = A0_2
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = A0_2._rogue_talent_tree_row_panels
      L14_2 = A0_2._rogue_talent_tree_row_panels
      L14_2 = #L14_2
      L14_2 = L14_2 + 1
      L15_2 = L8_2
      L12_2(L13_2, L14_2, L15_2)
    end
  end
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = L2_2
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_custom_navigation
  L3_2(L4_2)
end
L0_1._try_instantiate_tree = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._rogue_talent_tree_row_panels
  if L1_2 == nil then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2._rogue_talent_tree_row_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._talent_tree_row_list
    L7_2 = L6_2
    L6_2 = L6_2.Get
    L8_2 = L4_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L8_2 = L5_2
      L7_2 = L5_2.setup_row_data
      L9_2 = L6_2
      L10_2 = A0_2._cur_select_talent_data_item
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._refresh_tree_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = A0_2._talent_data_items
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._talent_data_items
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.IsActivated
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.activated_num
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_activated_num = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_select_talent_data_item
  if L1_2 == nil then
    L1_2 = A0_2._talent_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._talent_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._talent_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_select_talent_data_item
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._talent_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueTalentActive"
  L4_2 = A0_2._cur_select_talent_data_item
  L4_2 = L4_2.TalentID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_detail_view = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._cur_select_talent_data_item = A1_2
  A0_2._cur_select_btn = A2_2
  A0_2._cur_select_item_panel = A3_2
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = A0_2._cur_select_btn
    if L4_2 ~= nil then
      L4_2 = A0_2._cur_select_btn
      L4_2 = L4_2.transform
      if L4_2 ~= nil then
        L4_2 = A0_2._cur_select_btn
        L4_2 = L4_2.transform
        L4_2 = L4_2.parent
        if L4_2 ~= nil then
          L4_2 = A0_2._binder
          L4_2 = L4_2.scroll_rect
          L5_2 = L4_2
          L4_2 = L4_2.ScrollToTransform
          L6_2 = A0_2._cur_select_btn
          L6_2 = L6_2.transform
          L6_2 = L6_2.parent
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_tree_view
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_detail_view
  L4_2(L5_2)
end
L0_1._on_talent_item_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_select_item_panel
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._cur_select_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_active_anim
  L1_2(L2_2)
end
L0_1._on_talent_item_active = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._talent_tree_row_list
  L3_2 = L2_2
  L2_2 = L2_2.Get
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._talent_tree_row_list
  L4_2 = L3_2
  L3_2 = L3_2.Count
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2 - 1
  if A1_2 < L4_2 then
    L4_2 = A0_2._talent_tree_row_list
    L5_2 = L4_2
    L4_2 = L4_2.Get
    L6_2 = A1_2 + 1
    L4_2 = L4_2(L5_2, L6_2)
    L6_2 = L2_2
    L5_2 = L2_2.get_item_count
    L5_2 = L5_2(L6_2)
    if L5_2 == 1 then
      L6_2 = L4_2
      L5_2 = L4_2.get_item_count
      L5_2 = L5_2(L6_2)
      if L5_2 == 1 then
        L5_2 = 0
        return L5_2
    end
    else
      L6_2 = L2_2
      L5_2 = L2_2.get_item_count
      L5_2 = L5_2(L6_2)
      if L5_2 == 1 then
        L6_2 = L4_2
        L5_2 = L4_2.get_item_count
        L5_2 = L5_2(L6_2)
        if L5_2 == 3 then
          L5_2 = 1
          return L5_2
      end
      else
        L6_2 = L2_2
        L5_2 = L2_2.get_item_count
        L5_2 = L5_2(L6_2)
        if L5_2 == 3 then
          L6_2 = L4_2
          L5_2 = L4_2.get_item_count
          L5_2 = L5_2(L6_2)
          if L5_2 == 1 then
            L5_2 = 2
            return L5_2
        end
        else
          L6_2 = L2_2
          L5_2 = L2_2.get_item_count
          L5_2 = L5_2(L6_2)
          if L5_2 == 3 then
            L6_2 = L4_2
            L5_2 = L4_2.get_item_count
            L5_2 = L5_2(L6_2)
            if L5_2 == 3 then
              L5_2 = 3
              return L5_2
            end
          end
        end
      end
    end
  else
    L5_2 = L2_2
    L4_2 = L2_2.get_item_count
    L4_2 = L4_2(L5_2)
    if L4_2 == 1 then
      L4_2 = 4
      return L4_2
    else
      L5_2 = L2_2
      L4_2 = L2_2.get_item_count
      L4_2 = L4_2(L5_2)
      if L4_2 == 3 then
        L4_2 = 5
        return L4_2
      end
    end
  end
end
L0_1._get_loop_list_prefab_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = A0_2
  L1_2 = A0_2._build_talent_tree
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.List
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = {}
  L6_2 = A0_2
  L5_2 = A0_2._find_head_node
  L7_2 = L1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  while true do
    L6_2 = #L4_2
    if L6_2 == 0 then
      break
    end
    L6_2 = #L4_2
    L7_2 = G
    L7_2 = L7_2.new
    L8_2 = G
    L8_2 = L8_2.RogueTalentTreeRow
    L7_2 = L7_2(L8_2)
    L8_2 = 1
    L9_2 = L6_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = table
      L12_2 = L12_2.remove
      L13_2 = L4_2
      L14_2 = 1
      L12_2 = L12_2(L13_2, L14_2)
      L13_2 = L3_2[L12_2]
      if not L13_2 then
        L14_2 = L7_2
        L13_2 = L7_2.add_data_item
        L15_2 = L12_2.data
        L13_2(L14_2, L15_2)
        L13_2 = ipairs
        L14_2 = L12_2.nextNodes
        L13_2, L14_2, L15_2 = L13_2(L14_2)
        for L16_2, L17_2 in L13_2, L14_2, L15_2 do
          L18_2 = table
          L18_2 = L18_2.insert
          L19_2 = L4_2
          L20_2 = L17_2
          L18_2(L19_2, L20_2)
        end
      end
      L3_2[L12_2] = true
    end
    L9_2 = L2_2
    L8_2 = L2_2.Add
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L2_2
end
L0_1._get_talent_tree_row_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = nil
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L2_2 = L7_2
    break
  end
  while true do
    L3_2 = L2_2.preNodes
    if L3_2 == nil then
      break
    end
    L3_2 = L2_2.preNodes
    L3_2 = #L3_2
    if L3_2 == 0 then
      break
    end
    L3_2 = L2_2.preNodes
    L2_2 = L3_2[1]
  end
  return L2_2
end
L0_1._find_head_node = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._talent_data_items
  if L1_2 ~= nil then
    L2_2 = L1_2.Count
    if L2_2 ~= 0 then
      goto lbl_9
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_9::
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L8_2 = L7_2.TalentID
    L10_2 = A0_2
    L9_2 = A0_2._create_tree_node
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    L2_2[L8_2] = L9_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._link_node
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1._build_talent_tree = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.data
    L9_2 = L7_2
    L8_2 = L7_2.NextTalentIDs
    L8_2 = L8_2(L9_2)
    L9_2 = 0
    L10_2 = L8_2.Length
    L10_2 = L10_2 - 1
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = L8_2[L12_2]
      L13_2 = A1_2[L13_2]
      if L13_2 ~= nil then
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L13_2.preNodes
        L16_2 = L6_2
        L14_2(L15_2, L16_2)
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L6_2.nextNodes
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
      end
    end
  end
end
L0_1._link_node = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = {}
  L2_2.data = A1_2
  L3_2 = {}
  L2_2.nextNodes = L3_2
  L3_2 = {}
  L2_2.preNodes = L3_2
  return L2_2
end
L0_1._create_tree_node = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueTalentData
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetTalentDataItemList
  return L2_2(L3_2)
end
L0_1._get_talent_data_item_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_select_btn
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_select_btn
    L1_2 = L1_2.gameObject
    return L1_2
  end
  L1_2 = A0_2._default_row_index
  if L1_2 ~= nil then
    L1_2 = A0_2._default_col_index
    if L1_2 ~= nil then
      L1_2 = A0_2._rogue_talent_tree_row_panels
      L2_2 = A0_2._default_row_index
      L2_2 = L2_2 + 1
      L1_2 = L1_2[L2_2]
      if L1_2 ~= nil then
        L3_2 = L1_2
        L2_2 = L1_2.get_btn_go
        L4_2 = A0_2._default_col_index
        L4_2 = L4_2 + 1
        return L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._rogue_talent_tree_row_panels
  if L1_2 == nil then
    return
  end
  L1_2 = nil
  L2_2 = ipairs
  L3_2 = A0_2._rogue_talent_tree_row_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.get_btn_list
    L7_2 = L7_2(L8_2)
    if L7_2 ~= nil then
      L8_2 = #L7_2
      if 0 < L8_2 then
        L9_2 = A0_2
        L8_2 = A0_2.setup_navigation
        L10_2 = L7_2
        L11_2 = NavigationType
        L11_2 = L11_2.Horizontal
        L12_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2)
        if L1_2 ~= nil then
          L9_2 = A0_2
          L8_2 = A0_2._setup_navigation_between_two_line
          L10_2 = L1_2
          L11_2 = L7_2
          L8_2(L9_2, L10_2, L11_2)
        end
        L1_2 = L7_2
      end
    end
  end
end
L0_1._setup_custom_navigation = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 ~= nil and A2_2 ~= nil then
    L3_2 = #A1_2
    if L3_2 ~= 0 then
      L3_2 = #A2_2
      if L3_2 ~= 0 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L3_2 = #A1_2
  L4_2 = #A2_2
  L3_2 = L3_2 == L4_2
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.navigation
    if L3_2 then
      L10_2 = A2_2[L7_2]
      L9_2.selectOnDown = L10_2
    else
      L10_2 = A2_2[2]
      if not L10_2 then
        L10_2 = A2_2[1]
      end
      L9_2.selectOnDown = L10_2
    end
    L8_2.navigation = L9_2
  end
  L4_2 = ipairs
  L5_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.navigation
    if L3_2 then
      L10_2 = A1_2[L7_2]
      L9_2.selectOnUp = L10_2
    else
      L10_2 = A1_2[2]
      if not L10_2 then
        L10_2 = A1_2[1]
      end
      L9_2.selectOnUp = L10_2
    end
    L8_2.navigation = L9_2
  end
end
L0_1._setup_navigation_between_two_line = L2_1
return L0_1
