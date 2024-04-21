local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.RelicArchive.RelicSuitDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.ArchiveFilterItemListDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.RelicArchive.RelicSuitFilterItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.RelicArchive.RelicSuitFilterItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSuitDetailPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RelicSuitDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_story
  L4_2 = A0_2._on_btn_story
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_filter
  L4_2 = A0_2._on_btn_filter
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.suit_containter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_icon_info_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 61
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.ClearAllNewStatus
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.suit_containter_panel
  L2_2 = L1_2
  L1_2 = L1_2.trigger_default_select
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.suit_containter_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.get_relic_title_textid
  L4_2 = A0_2._data
  L4_2 = L4_2.Row
  L4_2 = L4_2.IsPlanarSuit
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_suit_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.SetName
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.ClearAllNewStatus
  L2_2(L3_2)
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_cur_selected_panel
  L4_2 = nil
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_entry_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._cur_selected_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._cur_selected_panel
    L4_2 = L3_2
    L3_2 = L3_2.is_equal
    L5_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      return
    end
  end
  L3_2 = A0_2._data
  L4_2 = L3_2
  L3_2 = L3_2.OnRelicTypeClick
  L5_2 = A1_2.Type
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_cur_selected_panel
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._cur_selected_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.suit_single_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._on_icon_info_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._cur_selected_panel = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.suit_containter_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_selected_panel
  L4_2 = A0_2._cur_selected_panel
  L2_2(L3_2, L4_2)
end
L0_1._set_cur_selected_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Archive.RelicArchive.RelicArchiveSuitBGStoryDialog"
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_story = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ArchiveFilterItemListDialog
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = G
  L4_2 = L4_2.RelicSuitFilterItemPanel
  L5_2 = G
  L5_2 = L5_2.RelicSuitFilterItemPanelBinder
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.ArchiveType
  L6_2 = L6_2.Relic
  L7_2 = A0_2._data
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_click_callback
  L4_2 = A0_2._on_entry_click
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_lock_hint
  L4_2 = "UIText_RelicAtlas_SetNotObtained"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_exit_callback
  L4_2 = A0_2._on_filter_dialog_exit
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.show
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_filter_dialog_show
  L2_2(L3_2)
end
L0_1._on_btn_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_filter
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "DataBankFilterFadeIn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_selected_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_selected
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_filter_dialog_show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_filter
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "DataBankFilterFadeOut"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_selected_panel
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.suit_containter_panel
    L2_2 = L1_2
    L1_2 = L1_2.trigger_default_select
    L1_2(L2_2)
  else
    L1_2 = A0_2._cur_selected_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_selected
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_filter_dialog_exit = L1_1
function L1_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.suit_containter_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
return L0_1
