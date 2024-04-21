local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Settlement.ChessRogueExitPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.LookAtPhonePanel"
L0_1(L1_1)
L0_1 = {}
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.RogueSubMode
L1_1 = L1_1.ChessRogue
L0_1[L1_1] = "UIText_RogueDLC_Title_Activity"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.RogueSubMode
L1_1 = L1_1.ChessRogueNous
L0_1[L1_1] = "UIText_RogueNous_Exit_Title_1"
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.RogueSubMode
L2_1 = L2_1.ChessRogue
L1_1[L2_1] = "UIText_RogueDLC_ProgressAbandon"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.RogueSubMode
L2_1 = L2_1.ChessRogueNous
L1_1[L2_1] = "UIText_RogueNous_Exit_Tip_1"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ChessRogueExitPage"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.SystemOpenModule
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueExitPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L2_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L2_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurSubMode
  L1_2 = L1_2(L2_2)
  A0_2._sub_mode = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn1
  L4_2 = A0_2._on_btn1_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn2
  L4_2 = A0_2._on_btn2_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn1
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn1
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn2
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn2
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.LookAtPhonePanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_look_at_phone = L1_2
  L1_2 = A0_2._panel_look_at_phone
  L2_2 = L1_2
  L1_2 = L1_2.start_look_at_phone
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UITextLanguageChange
  L4_2 = A0_2._on_language_changed
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_status
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_func_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_desc_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btns_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L2_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.GetExitFuncEntrances
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_func
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = nil
  L6_2 = nil
  L7_2 = NavigationType
  L7_2 = L7_2.Vertical
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L2_1._setup_func_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L1_2 = L1_2.CurrentGameMode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameModeType
  L2_2 = L2_2.ChessRogue
  if L1_2 == L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.ChessRogueModule
    L2_2 = L2_2.ChessRogueData
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = "UIText_Rogue_Difficulty"
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetRomanNumberTextID
    L6_2 = L2_2.AreaInfo
    L6_2 = L6_2.CurAreaDataItem
    L6_2 = L6_2.Difficulty
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_area
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = L3_2
    L8_2 = " "
    L9_2 = L4_2
    L7_2 = L7_2 .. L8_2 .. L9_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_progress
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = L2_2.AreaInfo
    L5_2 = L5_2.CurAreaLayerDataItem
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_layer
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2 ~= nil
    L6_2(L7_2, L8_2)
    if L5_2 ~= nil then
      L6_2 = A0_2._binder
      L6_2 = L6_2.txt_layer
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = L5_2.LayerIndexID
      L6_2(L7_2, L8_2)
    end
  end
end
L2_1._setup_info_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
end
L2_1._on_language_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._desc
  L1_2(L2_2, L3_2)
end
L2_1._setup_desc_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.game_mode_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._sub_mode
  L3_2 = L0_1[L3_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.exit_hint_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._sub_mode
  L3_2 = L1_1[L3_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_btn1_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._btn1_name
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._btn1_icon
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_btn1_icon
    L4_2 = A0_2._btn1_icon
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_btn2_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._btn2_name
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._btn2_icon
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_btn2_icon
    L4_2 = A0_2._btn2_icon
    L1_2(L2_2, L3_2, L4_2)
  end
end
L2_1._setup_btns_view = L4_1
function L4_1(A0_2, A1_2)
  A0_2._desc = A1_2
end
L2_1.set_desc = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._btn1_callback = A1_2
  A0_2._btn1_name = A2_2
  A0_2._btn1_desc = A3_2
  A0_2._btn1_icon = A4_2
end
L2_1.set_btn1 = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._btn2_callback = A1_2
  A0_2._btn2_name = A2_2
  A0_2._btn2_desc = A3_2
  A0_2._btn2_icon = A4_2
end
L2_1.set_btn2 = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._panel_look_at_phone
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_look_at_phone
    L2_2 = L1_2
    L1_2 = L1_2.end_look_at_phone
    function L3_2()
      local L0_3, L1_3
    end
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L2_1._close = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._btn1_callback
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._close
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._btn1_desc
  if L1_2 == nil then
    L1_2 = A0_2._btn1_callback
    L1_2()
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = A0_2._btn1_desc
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  function L4_2(A0_3)
    local L1_3
    if A0_3 then
      L1_3 = A0_2._btn1_callback
      L1_3()
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_btn1_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._btn2_callback
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._close
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._btn2_desc
  if L1_2 == nil then
    L1_2 = A0_2._btn2_callback
    L1_2()
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = A0_2._btn2_desc
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  function L4_2(A0_3)
    local L1_3
    if A0_3 then
      L1_3 = A0_2._btn2_callback
      L1_3()
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_btn2_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = {}
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn1
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L2_1._init_ui_navigation = L4_1
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
L2_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn1
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_top_page_or_dialog
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.is_in_special_zoom
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = CS
        L2_2 = L2_2.InControl
        L2_2 = L2_2.InputControlType
        L2_2 = L2_2.LeftStickButton
        L2_2 = #L2_2
        if A1_2 == L2_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.list_func
          L3_2 = L2_2
          L2_2 = L2_2.get_first_selected_object
          L2_2 = L2_2(L3_2)
          L4_2 = A0_2
          L3_2 = A0_2.set_special_zoom_navigation_target
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L2_1._on_in_control_click = L4_1
return L2_1
