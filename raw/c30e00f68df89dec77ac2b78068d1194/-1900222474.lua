local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoEditor.PhotoEditPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoEditor.PhotoFilterInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoEditor.PhotoFilterInfoPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PhotoGraphModule
L1_1 = 1.4
L2_1 = 1.5
L3_1 = 1.5
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "PhotoEditPage"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
L4_1._TEXTID_ORIGIN_PIC = "UIText_PhotoGraph_Filter_Origin"
L4_1._max_alpha = 1
L4_1._min_alpha = 0
L4_1._alpha_step = 0.01
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PhotoEditPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._filter_item_data_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._load_filter_data
  L1_2(L2_2)
  A0_2._cur_alpha = 1
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  A0_2._texture = A1_2
end
L4_1.init = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_navigation_target
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L4_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_filter_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = L1_2.UserObjectData
      L2_2 = L2_2._binder
      L2_2 = L2_2.btn_root
      L3_2 = L2_2
      L2_2 = L2_2.SetChecked
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L4_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L4_1._init_ui_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._adjust_ui_for_aspect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_save
  L4_2 = A0_2._on_btn_save
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_alpha_plus
  L4_2 = A0_2._on_btn_alpha_plus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_alpha_minus
  L4_2 = A0_2._on_btn_alpha_minus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_alpha_plus
  L4_2 = A0_2._on_btn_alpha_plus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_alpha_minus
  L4_2 = A0_2._on_btn_alpha_minus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphExit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_filter_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_filter_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_slider_alpha
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_water_mark
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_texture
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_cur_filter
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_share_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_alpha
  L1_2.value = 1
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_alpha
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_alpha
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    A0_2._cur_alpha = A0_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._process_alpha
    L3_3 = A0_2._cur_alpha
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L4_1._init_slider_alpha = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.water_mark_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L4_1._init_water_mark = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider_alpha
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.slider_alpha
      L1_2 = L1_2.onValueChanged
      L2_2 = L1_2
      L1_2 = L1_2.RemoveAllListeners
      L1_2(L2_2)
    end
  end
  A0_2._filter_item_data_list = nil
  A0_2._texture = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._filter_item_data_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.PhotoGraphFilterConfig
  L1_2 = L1_2()
  L2_2 = L4_1._TEXTID_ORIGIN_PIC
  L1_2.Name = L2_2
  L2_2 = A0_2._filter_item_data_list
  L2_2[1] = L1_2
  L2_2 = A0_2._filter_item_data_list
  L2_2 = L2_2[1]
  A0_2._origin_filter_item = L2_2
  L2_2 = L0_1.FilterConfig
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._filter_item_data_list
    L8_2 = A0_2._filter_item_data_list
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L2_2[L6_2]
    L7_2[L8_2] = L9_2
  end
end
L4_1._load_filter_data = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_filter_data
  if L1_2 ~= nil then
    return
  end
  L1_2 = A0_2._filter_item_data_list
  L1_2 = L1_2[1]
  A0_2._cur_filter_data = L1_2
end
L4_1._set_cur_filter = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.share_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_report_source
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ShareSource
  L3_2 = L3_2.PhotoGraph
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.share_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._binder
  L3_2 = L3_2.photo_image_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_photo
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._setup_share_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photo_image_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._texture
  L1_2(L2_2, L3_2)
end
L4_1._setup_texture = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_filter_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._filter_item_data_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_filter_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L4_1._setup_filter_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_filter_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_origin_filter
  L3_2 = A0_2._cur_filter_data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_slider_alpha
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_filter
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L4_1._refresh = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PhotoFilterInfoPanel
    L8_2 = G
    L8_2 = L8_2.PhotoFilterInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._filter_item_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._texture
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_select
  L8_2 = A0_2._cur_filter_data
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_handler
  L8_2 = A0_2._on_filter_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._is_origin_filter
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L7_2 = L4_2
    L6_2 = L4_2.reset_filter
    L6_2(L7_2)
  else
    L7_2 = L4_2
    L6_2 = L4_2.init_with_config
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  return L3_2
end
L4_1._on_filter_change = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cur_filter_data
  if L2_2 == A1_2 then
    return
  end
  A0_2._cur_filter_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L4_1._on_filter_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_filter_data
  if not L2_2 then
    return
  end
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.photo_image_panel
    L3_2 = L2_2
    L2_2 = L2_2.reset_filter
    L2_2(L3_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.photo_image_panel
    L3_2 = L2_2
    L2_2 = L2_2.init_with_config
    L4_2 = A0_2._cur_filter_data
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.slider_alpha
    L3_2 = A0_2._cur_filter_data
    L3_2 = L3_2.LUTDefaultIntensity
    L2_2.value = L3_2
    L3_2 = A0_2
    L2_2 = A0_2._process_alpha
    L4_2 = A0_2._cur_filter_data
    L4_2 = L4_2.LUTDefaultIntensity
    L2_2(L3_2, L4_2)
  end
end
L4_1._setup_filter = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.photo_image_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_filter_alpha
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2 * 100
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_alpha
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L4_1._process_alpha = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._origin_filter_item
  L2_2 = L2_2 == A1_2
  return L2_2
end
L4_1._is_origin_filter = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._on_btn_exit = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsCsObjectNull
  L2_2 = A0_2._texture
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "No texture to Save!!"
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.photo_image_panel
  L2_2 = L1_2
  L1_2 = L1_2.save_photo
  L1_2(L2_2)
end
L4_1._on_btn_save = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._cur_alpha
  L4_2 = L4_1._alpha_step
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
end
L4_1._on_btn_alpha_plus = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._cur_alpha
  L4_2 = L4_1._alpha_step
  L3_2 = L3_2 - L4_2
  L1_2(L2_2, L3_2)
end
L4_1._on_btn_alpha_minus = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_alpha
  L4_2 = A0_2
  L3_2 = A0_2._get_valid_ratio
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.value = L3_2
end
L4_1._set_slider_value = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = A1_2
  L4_2 = L4_1._max_alpha
  L2_2 = L2_2(L3_2, L4_2)
  A1_2 = L2_2
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = A1_2
  L4_2 = L4_1._min_alpha
  L2_2 = L2_2(L3_2, L4_2)
  A1_2 = L2_2
  return A1_2
end
L4_1._get_valid_ratio = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Screen
    L1_2 = L1_2.width
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Screen
    L2_2 = L2_2.height
    L1_2 = L1_2 / L2_2
    L2_2 = L1_1
    if L1_2 < L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.rect_image
      L2_2 = L2_2.localScale
      L3_2 = A0_2._binder
      L3_2 = L3_2.rect_image
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.Vector3
      L5_2 = L2_1
      L6_2 = L3_1
      L7_2 = L2_2.z
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2.localScale = L4_2
    end
  end
end
L4_1._adjust_ui_for_aspect = L5_1
return L4_1
