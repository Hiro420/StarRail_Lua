local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.TravelBrochurePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureIntroChapterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureIntroChapterPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureMainChapterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureMainChapterPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureFinalChapterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureFinalChapterPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.TravelBrochureUtils"
L0_1(L1_1)
L0_1 = "4018"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TravelBrochureModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "TravelBrochurePage"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TravelBrochurePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_first = true
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetUnlockedDiaryDatas
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._diary_datas = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_diary_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._current_index = L2_2
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_first
  if L1_2 then
    L1_2 = "TravelBrochureMainPage_FirstFadeIn"
    return L1_2
  end
  L1_2 = ""
  return L1_2
end
L2_1.get_custom_fade_in_anim_name = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._diary_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ID
    if A1_2 == L7_2 then
      return L5_2
    end
  end
  L2_2 = 1
  return L2_2
end
L2_1._get_diary_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.override_transition_anim_type
  L3_2 = "TravelBrochurePasterBookPage"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UITransitionAnimType
  L4_2 = L4_2.Morph
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back
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
  L3_2 = L3_2.btn_last
  L4_2 = A0_2._on_btn_last
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_btn_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_paster
  L4_2 = A0_2._on_btn_paster
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureChoiceSelected
  L4_2 = A0_2._on_choice_selected
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TravelBrochureDiaryClosed
  L3_2 = A0_2._diary_datas
  L4_2 = A0_2._current_index
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L2_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.water_mark_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_operation
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "Player_NoInput_ChatList"
  L4_2 = "Player_Input_ChatList"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = 0.8
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_first_in
  L1_2(L2_2)
  A0_2._is_first = false
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_diary_panel
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.play_first_in
  if L2_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.play_first_in
    L2_2(L3_2)
  end
end
L2_1._play_first_in = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_in_directory
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._diary_datas
  L4_2 = A0_2._current_index
  L3_2 = L3_2[L4_2]
  L4_2 = A0_2._current_index
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_arrow_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_panel_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_paster_view
  L1_2(L2_2)
end
L2_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._current_index
  L1_2 = 1 < L1_2
  L2_2 = A0_2._current_index
  L3_2 = A0_2._diary_datas
  L3_2 = #L3_2
  L2_2 = L2_2 < L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_arrow
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L2_1._refresh_arrow_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._diary_datas
  L2_2 = A0_2._current_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.TravelBrochureType
  L3_2 = L3_2.Intro
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_intro
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_main
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_final
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._safe_get_intro_panel
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L5_2 = A0_2._current_index
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = L1_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.TravelBrochureType
    L3_2 = L3_2.Main
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_intro
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_main
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_final
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2._safe_get_main_panel
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = L1_2.Type
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.TravelBrochureType
      L3_2 = L3_2.Final
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_intro
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_main
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_final
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
        L3_2 = A0_2
        L2_2 = A0_2._safe_get_final_panel
        L2_2 = L2_2(L3_2)
        L3_2 = L2_2
        L2_2 = L2_2.setup_view
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TravelBrochureUtils
  L2_2 = L2_2.RecordDiarySeen
  L3_2 = L1_2.ID
  L2_2(L3_2)
end
L2_1._refresh_panel_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._diary_datas
  L2_2 = A0_2._current_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.TravelBrochureType
  L3_2 = L3_2.Intro
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._safe_get_intro_panel
    return L2_2(L3_2)
  else
    L2_2 = L1_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.TravelBrochureType
    L3_2 = L3_2.Main
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._safe_get_main_panel
      return L2_2(L3_2)
    else
      L2_2 = L1_2.Type
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.TravelBrochureType
      L3_2 = L3_2.Final
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2._safe_get_final_panel
        return L2_2(L3_2)
      end
    end
  end
end
L2_1._get_diary_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._diary_datas
  L2_2 = A0_2._current_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.CanPaste
  if L2_2 then
    L2_2 = L1_2.HasChoice
    L2_2 = not L2_2 or L2_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_paster
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "TravelBrochurePasterNewInDiary"
  L6_2 = A0_2._diary_datas
  L7_2 = A0_2._current_index
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.ID
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_paster_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  if L2_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.TutorialTaskUnlock
    L5_2 = L0_1
    L3_2(L4_2, L5_2)
  end
end
L2_1._refresh_paster_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._panel_intro
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.TravelBrochureIntroChapterPanel
    L4_2 = G
    L4_2 = L4_2.TravelBrochureIntroChapterPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._panel_intro = L1_2
    L1_2 = A0_2._panel_intro
    L2_2 = L1_2
    L1_2 = L1_2.sync_loadto
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_intro
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._panel_intro
  return L1_2
end
L2_1._safe_get_intro_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._panel_main
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.TravelBrochureMainChapterPanel
    L4_2 = G
    L4_2 = L4_2.TravelBrochureMainChapterPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._panel_main = L1_2
    L1_2 = A0_2._panel_main
    L2_2 = L1_2
    L1_2 = L1_2.sync_loadto
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_main
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._panel_main
    L2_2 = L1_2
    L1_2 = L1_2.set_obstacle_node
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_paster
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._panel_main
    L2_2 = L1_2
    L1_2 = L1_2.register_share_view_callback
    L3_2 = A0_2._set_share_view
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._panel_main
  return L1_2
end
L2_1._safe_get_main_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._panel_final
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.TravelBrochureFinalChapterPanel
    L4_2 = G
    L4_2 = L4_2.TravelBrochureFinalChapterPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._panel_final = L1_2
    L1_2 = A0_2._panel_final
    L2_2 = L1_2
    L1_2 = L1_2.sync_loadto
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_final
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._panel_final
  return L1_2
end
L2_1._safe_get_final_panel = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._diary_datas
  L3_2 = A0_2._current_index
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.ID
  if A1_2 ~= L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_paster_view
  L2_2(L3_2)
end
L2_1._on_choice_selected = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TravelBrochureSavePaster
  L1_2(L2_2)
  L1_2 = A0_2._current_index
  L1_2 = L1_2 - 1
  A0_2._current_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L2_1._on_btn_last = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TravelBrochureSavePaster
  L1_2(L2_2)
  L1_2 = A0_2._current_index
  L1_2 = L1_2 + 1
  A0_2._current_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L2_1._on_btn_next = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TravelBrochureSavePaster
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.TravelBrochure.TravelBrochurePasterBookPage"
  L3_2 = A0_2._diary_datas
  L4_2 = A0_2._current_index
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_paster = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TravelBrochureSavePaster
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.TravelBrochureUtils
  L1_2 = L1_2.exit_travel_brochure
  L1_2()
end
L2_1._on_btn_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TravelBrochureSavePaster
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._on_btn_back = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_main_panel
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.set_share_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.nodes_not_share
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = not A1_2
    L7_2(L8_2, L9_2)
  end
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_paster
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._refresh_paster_view
    L2_2(L3_2)
  end
end
L2_1._set_share_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_diary_panel
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
  L4_2 = A0_2
  L3_2 = A0_2._refresh_short_cut_hint
  L3_2(L4_2)
end
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_diary_panel
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.refresh_short_cut_hint
  L1_2(L2_2)
end
L2_1._refresh_short_cut_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._can_control_exit
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_control_exit_fail
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_back
  L1_2(L2_2)
end
L2_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_diary_panel
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2._can_control_exit
  if L2_2 == nil then
    L2_2 = true
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2._can_control_exit
  return L2_2(L3_2)
end
L2_1._can_control_exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_diary_panel
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2._on_control_exit_fail
  if L2_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2._on_control_exit_fail
  return L2_2(L3_2)
end
L2_1._on_control_exit_fail = L3_1
return L2_1
