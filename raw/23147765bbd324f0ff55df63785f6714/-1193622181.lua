local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Entrance.AlleyFundPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Event.AlleyLetterInfoRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Event.AlleyLetterDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyLetterDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
L2_1 = "AlleyLetterDialog_FadeIn_Default"
L3_1 = "AlleyLetterDialog_FadeIn"
L4_1 = "CommonPageFadeIn"
L5_1 = "CommonPageFadeOut"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyLetterDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._first_open_id = A1_2
  A0_2._open_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._get_max_stage
  L2_2 = L2_2(L3_2)
  A0_2._max_stage = L2_2
  L2_2 = A0_2._max_stage
  if 3 < L2_2 then
    A0_2._max_stage = 3
  end
  L2_2 = A0_2._max_stage
  A0_2._cur_select_stage = L2_2
  L2_2 = A0_2._first_open_id
  if L2_2 == 2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L3_2 = A0_2._max_stage
    L2_2.AlleyMaxStagePageSeen = L3_2
  end
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = L1_1.CurMainEventStage
  L3_2 = L1_1.MaxFinishedMainEventStage
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 <= 3 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AlleyStageExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.GetEventMissionData
    L5_2 = L2_2.StageMainMission
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 ~= nil then
      L4_2 = L3_2.IsFinish
      if L4_2 then
        goto lbl_25
      end
    end
    L1_2 = L1_2 - 1
  end
  ::lbl_25::
  return L1_2
end
L0_1._get_max_stage = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_continue
  L4_2 = A0_2._on_btn_continue
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_prev
  L4_2 = A0_2._on_btn_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_btn_next
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L5_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_out_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.info_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_stage_info_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyFundPanel
  L4_2 = G
  L4_2 = L4_2.AlleyFundPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fund_panel = L1_2
  L1_2 = A0_2._fund_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_fund_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._open_id
  if L1_2 == 1 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 33
    L4_2 = A0_2._binder
    L4_2 = L4_2.scroll_rect_phase
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._open_id
    if L1_2 == 2 then
      L2_2 = A0_2
      L1_2 = A0_2.setup_short_cut_hint_panel
      L3_2 = 33
      L4_2 = A0_2._binder
      L4_2 = L4_2.scroll_rect_mission
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._open_id
    if L2_2 == 2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.info_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L1_2 = A0_2._open_id
  if L1_2 == 1 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._open_id
    if L1_2 == 2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.anim_root
      L2_2 = L1_2
      L1_2 = L1_2.Play
      L3_2 = L2_1
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_dialog_state
  L1_2(L2_2)
  L1_2 = A0_2._open_id
  if L1_2 == 1 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_phase_panel
    L1_2(L2_2)
  else
    L1_2 = A0_2._open_id
    if L1_2 == 2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_mission_panel
      L1_2(L2_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._refresh_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_phase_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._open_id
  L3_2 = L3_2 == 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._open_id
  L3_2 = L3_2 == 2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_arrow_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._open_id
  L3_2 = L3_2 == 2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._open_id
  L3_2 = L3_2 == 2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._open_id
  L3_2 = L3_2 == 2
  L1_2(L2_2, L3_2)
end
L0_1._setup_dialog_state = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._fund_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.AlleyFormerFunds
  L4_2 = L1_1.Funds
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AlleyStageExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._max_stage
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_phase_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.StageTitle
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.StageDesc
  L5_2 = L1_2.StageTarget
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_phase_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AlleyStageExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cur_select_stage
  L1_2 = L1_2(L2_2)
  A0_2._cur_stage_row = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_mission_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cur_stage_row
  L3_2 = L3_2.StageTitle
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_page_index
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_stage_info
  L1_2(L2_2)
end
L0_1._setup_mission_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._stage_info_list = L1_2
  L1_2 = 0
  L2_2 = A0_2._cur_stage_row
  L2_2 = L2_2.StageAlleyEvent
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = {}
    L5_2.type = "Event"
    L6_2 = A0_2._cur_stage_row
    L6_2 = L6_2.StageAlleyEvent
    L6_2 = L6_2[L4_2]
    L5_2.id = L6_2
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._stage_info_list
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = 0
  L2_2 = A0_2._cur_stage_row
  L2_2 = L2_2.StageSpecialOrder
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = {}
    L5_2.type = "Order"
    L6_2 = A0_2._cur_stage_row
    L6_2 = L6_2.StageSpecialOrder
    L6_2 = L6_2[L4_2]
    L5_2.id = L6_2
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._stage_info_list
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_prev
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_select_stage
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_keymap_prev
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_select_stage
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_select_stage
  L4_2 = A0_2._max_stage
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_keymap_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_select_stage
  L4_2 = A0_2._max_stage
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_select
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_select
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._cur_select_stage
    L7_2 = L4_2 == L7_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_unselect
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._cur_select_stage
    L7_2 = L4_2 ~= L7_2
    L5_2(L6_2, L7_2)
  end
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_page
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_page
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._max_stage
    L7_2 = L4_2 <= L7_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_page_index = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.info_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._stage_info_list
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.info_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_stage_info = L6_1
function L6_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.AlleyLetterInfoRow
    L8_2 = G
    L8_2 = L8_2.AlleyLetterInfoRowBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._stage_info_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_stage_info_changed = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._open_id = 2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_page
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 33
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect_mission
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_continue = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L1_2 = A0_2._cur_select_stage
  L1_2 = L1_2 - 1
  A0_2._cur_select_stage = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_page_index
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_page
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 33
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect_mission
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_prev = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L1_2 = A0_2._cur_select_stage
  L1_2 = L1_2 + 1
  A0_2._cur_select_stage = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_page_index
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_page
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 33
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect_mission
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_next = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_page
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._on_fade_out_anim_end = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._open_id
  if L1_2 == 1 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L6_1
return L0_1
