local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.TravelBrochurePasterBookPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochurePasterTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochurePasterTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochurePasterIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochurePasterIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochurePasterTextIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.TravelBrochureUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureBgPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.TravelBrochureModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TravelBrochurePasterBookPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TravelBrochurePasterBookPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._multi_paster_ids = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._diary_data = A1_2
  L3_2 = A2_2 == true
  A0_2._display_only = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._init_tab_data
  L3_2(L4_2)
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._diary_data
  L1_2 = L1_2.ID
  L2_2 = {}
  A0_2._tab_paster_ids = L2_2
  L2_2 = {}
  A0_2._tab_names = L2_2
  L2_2 = {}
  A0_2._tab_icons = L2_2
  L2_2 = {}
  A0_2._tab_types = L2_2
  L2_2 = {}
  A0_2._tab_reddot_keys = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.PasterConfigExcelTable
  L3_2 = L3_2.GetDiaryImagePasterIDs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = #L2_2
  if 0 < L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._tab_paster_ids
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._tab_names
    L5_2 = "UIText_TravelBrochure_PasterTab01"
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._tab_icons
    L5_2 = "SpriteOutput/UI/TravelBrochure/TBStickerTabListIconImage.png"
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._tab_types
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.TravelBrochurePasterType
    L5_2 = L5_2.Image
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._tab_reddot_keys
    L5_2 = "TravelBrochureImagePasterNewInDiary"
    L3_2(L4_2, L5_2)
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PasterConfigExcelTable
  L4_2 = L4_2.GetDiaryTextPasterIDs
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = #L3_2
  if 0 < L4_2 then
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._tab_paster_ids
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._tab_names
    L6_2 = "UIText_TravelBrochure_PasterTab02"
    L4_2(L5_2, L6_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._tab_icons
    L6_2 = "SpriteOutput/UI/TravelBrochure/TBStickerTabListIconText.png"
    L4_2(L5_2, L6_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._tab_types
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.TravelBrochurePasterType
    L6_2 = L6_2.Text
    L4_2(L5_2, L6_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._tab_reddot_keys
    L6_2 = "TravelBrochureTextPasterNewInDiary"
    L4_2(L5_2, L6_2)
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_list
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.PasterConfigExcelTable
  L5_2 = L5_2.GetCommonPasterIDs
  L5_2, L6_2, L7_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = #L4_2
  if 0 < L5_2 then
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._tab_paster_ids
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._tab_names
    L7_2 = "UIText_TravelBrochure_PasterTab03"
    L5_2(L6_2, L7_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._tab_types
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.TravelBrochurePasterType
    L7_2 = L7_2.Image
    L5_2(L6_2, L7_2)
  end
  A0_2._init_index = 1
end
L1_1._init_tab_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureDataSynced
  L4_2 = A0_2._on_data_synced
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochurePasterSynced
  L4_2 = A0_2._on_paster_synced
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back2
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_multi
  L4_2 = A0_2._on_btn_multi
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_apply
  L4_2 = A0_2._on_btn_apply
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_image
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_image_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_text_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TravelBrochureBgPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_bg = L1_2
  L1_2 = A0_2._panel_bg
  L2_2 = L1_2
  L1_2 = L1_2.init_node
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bg
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_bg
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._record_seen
  L3_2 = A0_2._current_paster_id
  L1_2(L2_2, L3_2)
end
L1_1._on_unload = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._diary_data
  L3_2 = L2_2
  L2_2 = L2_2.GetPasterData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.IsUnlocked
    if L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.TravelBrochureUtils
      L3_2 = L3_2.RecordPasterSeen
      L4_2 = L2_2.ID
      L3_2(L4_2)
    end
  end
end
L1_1._record_seen = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = ipairs
  L2_2 = A0_2._tab_paster_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.TravelBrochurePasterTabItem
    L9_2 = G
    L9_2 = L9_2.TravelBrochurePasterTabItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = A0_2._tab_names
    L9_2 = L9_2[L4_2]
    L10_2 = A0_2._tab_icons
    L10_2 = L10_2[L4_2]
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_reddot
    L9_2 = A0_2._tab_reddot_keys
    L9_2 = L9_2[L4_2]
    L10_2 = A0_2._diary_data
    L10_2 = L10_2.ID
    L7_2(L8_2, L9_2, L10_2)
    L6_2.button_prefab_index = 0
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_tab_control
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
end
L1_1._load_tab = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._panel_bg
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._diary_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_bg
  L2_2 = L1_2
  L1_2 = L1_2.show_bg_effect
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_bg
  L2_2 = L1_2
  L1_2 = L1_2.show_front_content
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_operation
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "Player_PasterPage_NoInput_ChatList"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = A0_2._tab_paster_ids
  L4_2 = #L4_2
  L5_2 = A0_2._init_index
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tab_types
  L2_2 = L2_2[A1_2]
  A0_2._current_type = L2_2
  L2_2 = A0_2._tab_paster_ids
  L2_2 = L2_2[A1_2]
  A0_2._paster_ids = L2_2
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._paster_ids
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = CS
    L2_3 = L2_3.RPG
    L2_3 = L2_3.Client
    L2_3 = L2_3.TravelBrochureUtils
    L2_3 = L2_3.IsPasterNew
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L3_3 = CS
    L3_3 = L3_3.RPG
    L3_3 = L3_3.Client
    L3_3 = L3_3.TravelBrochureUtils
    L3_3 = L3_3.IsPasterNew
    L4_3 = A1_3
    L3_3 = L3_3(L4_3)
    if L2_3 ~= L3_3 then
      return L2_3
    end
    L4_3 = CS
    L4_3 = L4_3.RPG
    L4_3 = L4_3.Client
    L4_3 = L4_3.TravelBrochureUtils
    L4_3 = L4_3.IsPasterUnlocked
    L5_3 = A0_3
    L4_3 = L4_3(L5_3)
    L5_3 = CS
    L5_3 = L5_3.RPG
    L5_3 = L5_3.Client
    L5_3 = L5_3.TravelBrochureUtils
    L5_3 = L5_3.IsPasterUnlocked
    L6_3 = A1_3
    L5_3 = L5_3(L6_3)
    if L4_3 ~= L5_3 then
      return L4_3
    end
    L6_3 = A0_2._display_only
    if not L6_3 then
      L6_3 = CS
      L6_3 = L6_3.RPG
      L6_3 = L6_3.Client
      L6_3 = L6_3.TravelBrochureUtils
      L6_3 = L6_3.IsPasterPasted
      L7_3 = A0_3
      L6_3 = L6_3(L7_3)
      L7_3 = CS
      L7_3 = L7_3.RPG
      L7_3 = L7_3.Client
      L7_3 = L7_3.TravelBrochureUtils
      L7_3 = L7_3.IsPasterPasted
      L8_3 = A1_3
      L7_3 = L7_3(L8_3)
      if L6_3 ~= L7_3 then
        return L7_3
      end
    end
    L6_3 = A0_3 < A1_3
    return L6_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._paster_ids
  L2_2 = L2_2[1]
  A0_2._current_paster_id = L2_2
  L2_2 = A0_2._display_only
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L3_2 = L2_2
  L2_2 = L2_2.TravelBrochureGetPasterQuick
  L2_2 = not L2_2 and L2_2
  A0_2._in_multi = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_items
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_current
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureOperated
  L2_2(L3_2)
end
L1_1._on_tab_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._paster_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.TravelBrochureUtils
    L7_2 = L7_2.IsPasterUnlocked
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_got_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_total_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._paster_ids
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
end
L1_1._setup_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._diary_data
  L2_2 = L1_2
  L1_2 = L1_2.GetPasterData
  L3_2 = A0_2._current_paster_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_content
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = L1_2.IsUnlocked
  L5_2 = not L5_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_multi
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._display_only
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_multi
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A0_2._in_multi
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._in_multi
  if L2_2 then
    L2_2 = "Menu_UnchangeY"
    if L2_2 then
      goto lbl_30
    end
  end
  L2_2 = "Menu_Confirm"
  ::lbl_30::
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_control_button_apply
  L4_2 = L3_2
  L3_2 = L3_2.SetActionName
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_control_tip_apply
  L4_2 = L3_2
  L3_2 = L3_2.SetInControlTipKey
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._in_multi
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_apply
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._display_only
    L5_2 = not L5_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_apply
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetInteractable
    L5_2 = A0_2._multi_paster_ids
    L5_2 = #L5_2
    L5_2 = 0 < L5_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_apply
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_TravelBrochure_BatchUse"
    L6_2 = A0_2._multi_paster_ids
    L6_2 = #L6_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = L1_2.IsUnlocked
    if L3_2 then
      L3_2 = A0_2._display_only
      L3_2 = not L3_2
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_apply
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_apply
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetInteractable
    L6_2 = L1_2.IsPasted
    L6_2 = not L6_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_apply
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L1_2.IsPasted
    if L6_2 then
      L6_2 = "UIText_TravelBrochure_PasterButton02"
      if L6_2 then
        goto lbl_93
      end
    end
    L6_2 = "UIText_TravelBrochure_PasterButton01"
    ::lbl_93::
    L4_2(L5_2, L6_2)
  end
end
L1_1._setup_current = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._current_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TravelBrochurePasterType
  L2_2 = L2_2.Image
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_list_image
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_list_text
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_image
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._paster_ids
    L3_2 = #L3_2
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_image
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
  else
    L1_2 = A0_2._current_type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TravelBrochurePasterType
    L2_2 = L2_2.Text
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_list_image
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_list_text
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.list_text
      L2_2 = L1_2
      L1_2 = L1_2.SetListItemCount
      L3_2 = A0_2._paster_ids
      L3_2 = #L3_2
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.list_text
      L2_2 = L1_2
      L1_2 = L1_2.RefreshAllShownItem
      L1_2(L2_2)
    end
  end
end
L1_1._setup_items = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._current_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TravelBrochurePasterType
  L2_2 = L2_2.Image
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_image
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._paster_ids
    L3_2 = #L3_2
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_image
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
  else
    L1_2 = A0_2._current_type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TravelBrochurePasterType
    L2_2 = L2_2.Text
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.list_text
      L2_2 = L1_2
      L1_2 = L1_2.SetListItemCount
      L3_2 = A0_2._paster_ids
      L3_2 = #L3_2
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.list_text
      L2_2 = L1_2
      L1_2 = L1_2.RefreshAllShownItem
      L1_2(L2_2)
    end
  end
end
L1_1._refresh_items = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_29
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.TravelBrochurePasterIconPanel
  L8_2 = G
  L8_2 = L8_2.TravelBrochurePasterIconPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._on_paster_clicked
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_selected_callback
  L7_2 = A0_2._on_paster_selected
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  ::lbl_29::
  L5_2 = A0_2._paster_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._diary_data
  L7_2 = L6_2
  L6_2 = L6_2.GetPasterData
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2._current_paster_id
  L7_2 = L7_2 == L5_2
  L9_2 = L4_2
  L8_2 = L4_2.setup_view
  L10_2 = L6_2
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_pasted
  L10_2 = L6_2.IsPasted
  if L10_2 then
    L10_2 = A0_2._display_only
    L10_2 = not L10_2
  end
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_in_multi
  L10_2 = A0_2._in_multi
  if L10_2 then
    L10_2 = L6_2.IsPasted
    L10_2 = not L10_2 and L10_2
  end
  L11_2 = G
  L11_2 = L11_2.Utils
  L11_2 = L11_2.index_of_item
  L12_2 = A0_2._multi_paster_ids
  L13_2 = L5_2
  L11_2 = L11_2(L12_2, L13_2)
  L11_2 = nil ~= L11_2
  L8_2(L9_2, L10_2, L11_2)
  return L3_2
end
L1_1._on_image_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_29
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.TravelBrochurePasterIconPanel
  L8_2 = G
  L8_2 = L8_2.TravelBrochurePasterTextIconPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._on_paster_clicked
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_selected_callback
  L7_2 = A0_2._on_paster_selected
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  ::lbl_29::
  L5_2 = A0_2._paster_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._diary_data
  L7_2 = L6_2
  L6_2 = L6_2.GetPasterData
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2._current_paster_id
  L7_2 = L7_2 == L5_2
  L9_2 = L4_2
  L8_2 = L4_2.setup_view
  L10_2 = L6_2
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_pasted
  L10_2 = L6_2.IsPasted
  if L10_2 then
    L10_2 = A0_2._display_only
    L10_2 = not L10_2
  end
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_in_multi
  L10_2 = A0_2._in_multi
  if L10_2 then
    L10_2 = L6_2.IsPasted
    L10_2 = not L10_2 and L10_2
  end
  L11_2 = G
  L11_2 = L11_2.Utils
  L11_2 = L11_2.index_of_item
  L12_2 = A0_2._multi_paster_ids
  L13_2 = L5_2
  L11_2 = L11_2(L12_2, L13_2)
  L11_2 = nil ~= L11_2
  L8_2(L9_2, L10_2, L11_2)
  return L3_2
end
L1_1._on_text_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._record_seen
  L4_2 = A0_2._current_paster_id
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.ID
  A0_2._current_paster_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_items
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_current
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureOperated
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.TravelBrochureUtils
  L2_2 = L2_2.try_report_preview_paster
  L3_2 = A1_2
  L4_2 = A0_2._diary_data
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
end
L1_1._on_paster_selected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._record_seen
  L4_2 = A0_2._current_paster_id
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.ID
  A0_2._current_paster_id = L2_2
  L2_2 = A0_2._in_multi
  if L2_2 then
    L2_2 = A1_2.IsUnlocked
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = "UIText_TravelBrochure_UnlockToast"
      L2_2(L3_2, L4_2)
    else
      L2_2 = A1_2.IsPasted
      if L2_2 then
        L2_2 = G
        L2_2 = L2_2.NotifyManager
        L2_2 = L2_2.notify
        L3_2 = G
        L3_2 = L3_2.CS
        L3_2 = L3_2.NotifyType
        L3_2 = L3_2.UIPileToastMessageTextID
        L4_2 = "UIText_TravelBrochure_CanNotUseToast"
        L2_2(L3_2, L4_2)
      else
        L2_2 = G
        L2_2 = L2_2.Utils
        L2_2 = L2_2.index_of_item
        L3_2 = A0_2._multi_paster_ids
        L4_2 = A0_2._current_paster_id
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 ~= nil then
          L3_2 = table
          L3_2 = L3_2.remove
          L4_2 = A0_2._multi_paster_ids
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
        else
          L3_2 = table
          L3_2 = L3_2.insert
          L4_2 = A0_2._multi_paster_ids
          L5_2 = A0_2._current_paster_id
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_items
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_current
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureOperated
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.TravelBrochureUtils
  L2_2 = L2_2.try_report_preview_paster
  L3_2 = A1_2
  L4_2 = A0_2._diary_data
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
end
L1_1._on_paster_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_items
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_current
  L1_2(L2_2)
end
L1_1._on_data_synced = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._diary_data
  L2_2 = L2_2.ID
  if A1_2 ~= L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._last_multi_paster_id
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2._apply_single
      L4_2 = A0_2._last_multi_paster_id
      L2_2(L3_2, L4_2)
      A0_2._last_multi_paster_id = nil
    end
  end
end
L1_1._on_paster_synced = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._display_only
  if L1_2 then
    return
  end
  L1_2 = A0_2._in_multi
  L1_2 = not L1_2
  A0_2._in_multi = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.TravelBrochureSetPasterQuick
  L3_2 = A0_2._in_multi
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._multi_paster_ids = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_items
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_current
  L1_2(L2_2)
end
L1_1._on_btn_multi = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._last_multi_paster_id = nil
  L1_2 = A0_2._in_multi
  if L1_2 then
    L1_2 = A0_2._multi_paster_ids
    L1_2 = #L1_2
    if L1_2 == 0 then
      return
    elseif L1_2 == 1 then
      L3_2 = A0_2
      L2_2 = A0_2._apply_single
      L4_2 = A0_2._multi_paster_ids
      L4_2 = L4_2[L1_2]
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._multi_paster_ids
      L2_2 = L2_2[L1_2]
      A0_2._last_multi_paster_id = L2_2
      L2_2 = A0_2._multi_paster_ids
      L2_2[L1_2] = nil
      L3_2 = A0_2
      L2_2 = A0_2.show_full_screen_block_for_packet
      L4_2 = CS
      L4_2 = L4_2.NIJNBICAPPA
      L4_2 = L4_2.KLGHKEEFIMA
      L2_2(L3_2, L4_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.NetworkManager
      L2_2 = L2_2.OOGONDGGKMI
      L3_2 = L2_2
      L2_2 = L2_2.FFNKBHAAJOL
      L4_2 = A0_2._diary_data
      L4_2 = L4_2.ID
      L5_2 = A0_2._multi_paster_ids
      L2_2(L3_2, L4_2, L5_2)
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2._apply_single
    L3_2 = A0_2._current_paster_id
    L1_2(L2_2, L3_2)
  end
end
L1_1._on_btn_apply = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._diary_data
  L3_2 = L2_2
  L2_2 = L2_2.AddPaster
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.exit
    L3_2(L4_2)
  end
end
L1_1._apply_single = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.TravelBrochureUtils
  L1_2 = L1_2.exit_travel_brochure
  L1_2()
end
L1_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_first_selected_tab_object
    return L2_2(L3_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_first_selected_item_object
      return L2_2(L3_2)
    end
  end
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.find_item_gameObject
  L3_2 = 1
  return L1_2(L2_2, L3_2)
end
L1_1._get_first_selected_tab_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L2_2 = A0_2._current_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.TravelBrochurePasterType
  L3_2 = L3_2.Image
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L1_2 = L2_2.list_image
  else
    L2_2 = A0_2._current_type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.TravelBrochurePasterType
    L3_2 = L3_2.Text
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L1_2 = L2_2.list_text
    end
  end
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.GetShownItemByItemIndex
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_37
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_37::
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  return L3_2(L4_2)
end
L1_1._get_first_selected_item_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_control_tip_apply
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = NavigationZoneType
    L4_2 = L4_2.Zone2
    L4_2 = A1_2 == L4_2
  end
  L3_2.IsShowTip = L4_2
  L3_2 = pairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.incontrols_move_content
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = NavigationZoneType
    L8_2 = L8_2.Zone2
    L8_2 = A1_2 == L8_2
    L7_2.enabled = L8_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_short_cut_hint
  L3_2(L4_2)
end
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 167
    L2_2(L3_2, L4_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 166
      L2_2(L3_2, L4_2)
    end
  end
end
L1_1._refresh_short_cut_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._in_control_exit_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_control_tip_apply
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.get_cur_zoom
    L3_2 = L3_2(L4_2)
    L4_2 = NavigationZoneType
    L4_2 = L4_2.Zone2
    L3_2 = L3_2 == L4_2
  end
  L2_2.IsShowTip = L3_2
end
L1_1._on_in_control_input_switch = L2_1
return L1_1
