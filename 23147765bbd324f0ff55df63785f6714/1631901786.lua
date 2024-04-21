local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.FanPhaseDetail.HeliobusPopulationPhaseDetailPageNumPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.FanPhaseDetail.HeliobusPopulationPhaseDetailPageNumPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.FanPhaseDetail.HeliobusPopulationPhaseDetailMissionPostPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.FanPhaseDetail.HeliobusPopulationPhaseDetailMissionPostPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.FanPhaseDetail.HeliobusPopulationPhaseDetailDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseDetailDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = 5
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MissionModule
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusPopulationPhaseDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  A0_2._pop_phase = A1_2
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
  local L1_2
  L1_2 = nil
  return L1_2
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
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_prev
  L4_2 = A0_2._on_click_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_click_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusPopulationPhaseDetailPageNumPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusPopulationPhaseDetailPageNumPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._page_num_panel = L1_2
  L1_2 = A0_2._page_num_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_page_num
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusPopulationPhaseDetailMissionPostPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusPopulationPhaseDetailMissionPostPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._post_panel = L1_2
  L1_2 = A0_2._post_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_post_mission
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSNSUserIconPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSNSUserIconPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._anchor_user_icon_panel = L1_2
  L1_2 = A0_2._anchor_user_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_anchor_user_icon
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._page_num_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._pop_phase
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._post_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._pop_phase
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_desc_and_anchor
  L1_2(L2_2)
end
L0_1._on_refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L1_1.PopPhase
  L2_2 = A0_2._pop_phase
  L1_2 = L1_2 >= L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_anchor_post_row
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_anchor
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= nil
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_phase_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 == nil
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusPhaseExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._pop_phase
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "HeliobusPopulationPhaseDetailDialog _setup_desc_or_anchor() : \228\184\141\229\173\152\229\156\168("
    L6_2 = A0_2._pop_phase
    L7_2 = ")\228\186\186\230\176\148\233\152\182\230\174\181"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  if L1_2 then
    L4_2 = L3_2.Heliobus_ToDoListTitle_After
    if L4_2 then
      goto lbl_49
    end
  end
  L4_2 = L3_2.Heliobus_ToDoListTitle_Before
  ::lbl_49::
  if L2_2 == nil then
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_phase_desc
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  else
    L5_2 = A0_2._anchor_user_icon_panel
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = L1_1.PlayerUserID
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_anchor_name
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L3_2.Heliobus_UpMissionDesc
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_anchor_desc
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = L3_1
    L6_2 = L5_2
    L5_2 = L5_2.TryGetMainMissionData
    L7_2 = L2_2.PostTypeParameter
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_anchor_finish
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2.IsFinish
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_anchor_post_type
    L9_2 = L5_2.TrackIconPath
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._setup_desc_and_anchor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusPostExcelTable
  L3_2 = L2_2
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = L3_2.PostUnlockPhase
    L5_2 = A0_2._pop_phase
    if L4_2 == L5_2 then
      L4_2 = L3_2.PostType
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.HeliobusPostType
      L5_2 = L5_2.MissionAnchor
      if L4_2 == L5_2 then
        L1_2 = L3_2
        break
      end
    end
  end
  return L1_2
end
L0_1._get_anchor_post_row = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._pop_phase
  L1_2 = L1_2 + 1
  A0_2._pop_phase = L1_2
  L1_2 = A0_2._pop_phase
  L2_2 = L2_1
  if L1_2 <= L2_2 then
    L1_2 = A0_2._pop_phase
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = 1
  ::lbl_12::
  A0_2._pop_phase = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
end
L0_1._on_click_next = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._pop_phase
  L1_2 = L1_2 - 1
  A0_2._pop_phase = L1_2
  L1_2 = A0_2._pop_phase
  if 1 <= L1_2 then
    L1_2 = A0_2._pop_phase
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = L2_1
  ::lbl_11::
  A0_2._pop_phase = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
end
L0_1._on_click_prev = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_unload = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
return L0_1
