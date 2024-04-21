local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasPageTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasPageTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritAtlasPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
L2_1 = 4
L3_1 = 5
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherSpiritAtlasPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._play_spirit_queue = A1_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.deep_copy
  L4_2 = A0_2._play_spirit_queue
  L3_2 = L3_2(L4_2)
  A0_2._play_spirit_toast_queue = L3_2
  if A1_2 ~= nil then
    L3_2 = A1_2[1]
    A0_2._locate_spirit_id = L3_2
  end
  L3_2 = A2_2 or L3_2
  if A2_2 then
    L3_2 = A0_2._play_spirit_queue
    L3_2 = L3_2 ~= nil
  end
  A0_2.is_play_anim = L3_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._spirit_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_click_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._top_tab_control = L1_2
  L1_2 = A0_2._top_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_top_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left_tab
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right_tab
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  A0_2._cur_type_row = nil
  L2_2 = A0_2
  L1_2 = A0_2._generate_tab_info
  L1_2(L2_2)
  L1_2 = {}
  A0_2._spirit_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_spirit_table
  L1_2(L2_2)
  L1_2 = A0_2._spirit_table
  L1_2 = L1_2[1]
  A0_2._selected_spirit_display_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritAtlasListPanel
  L4_2 = G
  L4_2 = L4_2.AetherSpiritAtlasListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._spirit_list_panel = L1_2
  L1_2 = A0_2._spirit_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_click_spirit_item
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._spirit_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_locate_end_callback
  L3_2 = A0_2._locate_spirit
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._spirit_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_spirit_list_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._top_tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_prev
      L1_2(L2_2)
    end
  end
end
L0_1._select_prev = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._top_tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_next
      L1_2(L2_2)
    end
  end
end
L0_1._select_next = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  A0_2._tab_row_table = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AetherDivideGymInfoExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._tab_row_table
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = {}
  L3_2 = L3_1
  L2_2.ID = L3_2
  L2_2.Name = "UIText_AetherDivide_Common_Others"
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ConstValueClientExcelTable
  L3_2 = L3_2.GetData
  L4_2 = "AetherDivide_AtlasOtherTypeIcon"
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.Value
  L4_2 = L4_2.StringValue
  L2_2.TabIconPath = L4_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._tab_row_table
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = A0_2._tab_row_table
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.ID
    L3_3 = A1_3.ID
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L4_2(L5_2, L6_2)
  L4_2 = 1
  L5_2 = A0_2._tab_row_table
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = nil
    L9_2 = A0_2._tab_row_table
    L8_2 = L9_2[L7_2]
    L10_2 = A0_2
    L9_2 = A0_2.create_panel
    L11_2 = G
    L11_2 = L11_2.AetherSpiritAtlasPageTabItem
    L12_2 = G
    L12_2 = L12_2.AetherSpiritAtlasPageTabItemBinder
    L13_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2.button_prefab_index = 0
    L11_2 = L9_2
    L10_2 = L9_2.bind
    L12_2 = A0_2._binder
    L12_2 = L12_2.node_top_tab
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.register_callback
    L12_2 = A0_2._on_tab_click
    L13_2 = A0_2
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = A0_2._top_tab_control
    L11_2 = L10_2
    L10_2 = L10_2.add_item
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
end
L0_1._generate_tab_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.AllAetherMonsterDisplayAvatars
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._spirit_table
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_3.Status
    L3_3 = A1_3.Status
    if L2_3 ~= L3_3 then
      L4_3 = CS
      L4_3 = L4_3.RPG
      L4_3 = L4_3.Client
      L4_3 = L4_3.AetherMonsterAvatarDisplayDataStatus
      L4_3 = L4_3.Unlocked
      if L2_3 == L4_3 then
        L4_3 = true
        return L4_3
      else
        L4_3 = CS
        L4_3 = L4_3.RPG
        L4_3 = L4_3.Client
        L4_3 = L4_3.AetherMonsterAvatarDisplayDataStatus
        L4_3 = L4_3.Forbidden
        if L2_3 == L4_3 then
          L4_3 = false
          return L4_3
        else
          L4_3 = CS
          L4_3 = L4_3.RPG
          L4_3 = L4_3.Client
          L4_3 = L4_3.AetherMonsterAvatarDisplayDataStatus
          L4_3 = L4_3.Unlocked
          if L3_3 == L4_3 then
            L4_3 = false
            return L4_3
          else
            L4_3 = true
            return L4_3
          end
        end
      end
    end
    L4_3 = A0_3.ID
    L5_3 = A1_3.ID
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2._spirit_table
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._generate_spirit_table = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_type_row = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_bg_gym_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIPanelSwitch
  L3_2 = A0_2.__name
  L4_2 = "AtlasTab"
  L5_2 = A0_2._cur_type_row
  L5_2 = L5_2.ID
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2.guid
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_tab_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._play_spirit_queue
  if L1_2 ~= nil then
    L1_2 = A0_2._play_spirit_queue
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = L2_1
      L2_2 = A0_2._play_spirit_queue
      L2_2 = #L2_2
      L1_2 = L1_2 * L2_2
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_UIManager
      L3_2 = L2_2
      L2_2 = L2_2.BlockFixedTime
      L4_2 = L1_2
      L5_2 = L1_2
      L6_2 = nil
      L7_2 = false
      L8_2 = "AetherSpiritAtlasPage"
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      A0_2._block_id = L2_2
      A0_2._last_tab_index = nil
      L3_2 = A0_2
      L2_2 = A0_2._locate_spirit
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._open_unlock_toast_dialog
      L2_2(L3_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._get_locate_tab_index
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._top_tab_control
    L3_2 = L2_2
    L2_2 = L2_2.click_item_by_uid
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    A0_2.is_play_anim = false
  end
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._play_spirit_queue
  if L1_2 ~= nil then
    L1_2 = A0_2._play_spirit_queue
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = table
      L1_2 = L1_2.remove
      L2_2 = A0_2._play_spirit_queue
      L3_2 = 1
      L1_2 = L1_2(L2_2, L3_2)
      A0_2._locate_spirit_id = L1_2
      L2_2 = A0_2
      L1_2 = A0_2._get_locate_tab_index
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2._last_tab_index
      if L1_2 ~= L2_2 then
        L2_2 = A0_2._top_tab_control
        L3_2 = L2_2
        L2_2 = L2_2.click_item_by_uid
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
        A0_2._last_tab_index = L1_2
      else
        L2_2 = A0_2._spirit_list_panel
        L3_2 = L2_2
        L2_2 = L2_2.setup_spirit_item_list
        L4_2 = A0_2._locate_spirit_id
        L2_2(L3_2, L4_2)
      end
  end
  else
    L1_2 = A0_2._block_id
    if L1_2 ~= nil then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_UIManager
      L2_2 = L1_2
      L1_2 = L1_2.TryUnblockFixedTime
      L3_2 = A0_2._block_id
      L1_2(L2_2, L3_2)
    end
    A0_2._block_id = nil
    A0_2.is_play_anim = false
    A0_2._locate_spirit_id = nil
  end
end
L0_1._locate_spirit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._locate_spirit_id
  if L1_2 == nil then
    L1_2 = 1
    return L1_2
  end
  L1_2 = L1_1.AllAetherMonsterDisplayAvatars
  L2_2 = A0_2._locate_spirit_id
  L1_2 = L1_2[L2_2]
  L2_2 = 1
  L3_2 = A0_2._tab_row_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2.GymLocation
    L7_2 = A0_2._tab_row_table
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.ID
    if L6_2 == L7_2 then
      return L5_2
    end
  end
  L2_2 = 1
  return L2_2
end
L0_1._get_locate_tab_index = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._toast_dialog = nil
  L1_2 = A0_2._play_spirit_toast_queue
  if L1_2 ~= nil then
    L1_2 = A0_2._play_spirit_toast_queue
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = table
      L1_2 = L1_2.remove
      L2_2 = A0_2._play_spirit_toast_queue
      L3_2 = 1
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_async_show
      L3_2 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasUnlockToast.AetherSpiritAtlasUnlockToastDialog"
      L4_2 = L1_2
      L2_2 = L2_2(L3_2, L4_2)
      A0_2._toast_dialog = L2_2
      L2_2 = A0_2._toast_dialog
      L2_2 = L2_2.LuaTable
      L3_2 = L2_2
      L2_2 = L2_2.register_close_callback
      L4_2 = A0_2._open_unlock_toast_dialog
      L5_2 = A0_2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._open_unlock_toast_dialog = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cur_type_row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_sub_title = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_type_row
  L1_2 = L1_2.ID
  L2_2 = L3_1
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ConstValueClientExcelTable
    L1_2 = L1_2.GetData
    L2_2 = "AetherDivide_AtlasOtherTypeIconBackground"
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_gym_icon
    L5_2 = L1_2.Value
    L5_2 = L5_2.StringValue
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_gym_icon
    L4_2 = A0_2._cur_type_row
    L4_2 = L4_2.IconPath
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_bg_gym_icon = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._spirit_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_type_row
  L4_2 = A0_2._spirit_table
  L5_2 = A0_2._locate_spirit_id
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._spirit_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_empty
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_spirit_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._selected_spirit_display_data = A1_2
  L2_2 = A0_2._spirit_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_filtered_spirit_table
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._selected_spirit_display_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AetherMonsterAvatarDisplayDataStatus
  L4_2 = L4_2.Unlocked
  if L3_2 == L4_2 then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.GetAetherMonsterAvatar
    L5_2 = A0_2._selected_spirit_display_data
    L5_2 = L5_2.ID
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = G
    L4_2 = L4_2.UIManager
    L4_2 = L4_2.load_and_async_show
    L5_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainPage"
    L6_2 = L3_2
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  else
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.Common.Toast.PileToastCenterDialog"
    L5_2 = G
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = A0_2._selected_spirit_display_data
    L6_2 = L6_2.Row
    L6_2 = L6_2.SpiritUnlockDescription
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._on_click_spirit_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_click_close = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._play_spirit_toast_queue = nil
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_unload = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
return L0_1
