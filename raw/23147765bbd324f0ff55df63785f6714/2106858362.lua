local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.ActionDay.HeliobusActionDayResultNewMissionPostPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.ActionDay.HeliobusActionDayResultNewMissionPostPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.ActionDay.HeliobusActionDayResultExpBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.ActionDay.HeliobusActionDayResultExpBarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.ActionDay.HeliobusActionDayResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusActionDayResultDialog"
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
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Activity_Heliobus_SNS_NoGatherButton_Day"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.ArrayValue
L3_1 = "HeliobusSNSPostResultDialog_FadeIn"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "Activity_Heliobus_Entrance_MappingInfoID"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.UintValue
L5_1 = {}
L5_1.MainMissionTypePostFinish = 1
L5_1.MissionTypePostFinishWithPopPhaseUp = 2
L5_1.MissionTypePostFinishWithoutPopPhaseUpOrNoNewMission = 3
L5_1.AllFinish = 4
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusActionDayResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_base_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_click_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go_to
  L4_2 = A0_2._on_open_map_info
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_go_to
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusActionDayResultExpBarPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusActionDayResultExpBarPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._exp_panel = L1_2
  L1_2 = A0_2._exp_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_exp_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusActionDayResultNewMissionPostPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusActionDayResultNewMissionPostPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._new_mission_panel = L1_2
  L1_2 = A0_2._new_mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_new_mission_post_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bonus
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_mission_post_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._enable_exit = false
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.PopPhase
  A0_2._pop_phase = L1_2
  L1_2 = L1_1.HeliobusSNSAccountBeforeData
  L1_2 = L1_2.PopPhase
  A0_2._pop_before_phase = L1_2
  L1_2 = L1_1.Fans
  A0_2._fans = L1_2
  L1_2 = L1_1.HeliobusSNSAccountBeforeData
  L1_2 = L1_2.Fans
  A0_2._fans_before = L1_2
  L1_2 = L1_1.Incomes
  A0_2._incomes = L1_2
  L1_2 = L1_1.HeliobusSNSAccountBeforeData
  L1_2 = L1_2.Incomes
  A0_2._incomes_before = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetPostCount
  L1_2 = L1_2(L2_2)
  A0_2._posts = L1_2
  L1_2 = L1_1.HeliobusSNSAccountBeforeData
  L1_2 = L1_2.Posts
  A0_2._posts_before = L1_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_post_by_mission_id
  L2_2 = L1_1.LastPostMissionInProgress
  L2_2 = L2_2.ID
  L1_2 = L1_2(L2_2)
  A0_2._last_mission_post = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsAllMissionFinish
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L5_1.AllFinish
    A0_2._status = L1_2
    return
  end
  L1_2 = A0_2._pop_phase
  L2_2 = A0_2._pop_before_phase
  if L1_2 > L2_2 then
    L1_2 = L5_1.MissionTypePostFinishWithPopPhaseUp
    A0_2._status = L1_2
  else
    L1_2 = A0_2._last_mission_post
    L1_2 = L1_2.PostType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.HeliobusPostType
    L2_2 = L2_2.MissionMain
    if L1_2 ~= L2_2 then
      L1_2 = A0_2._last_mission_post
      L1_2 = L1_2.PostType
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.HeliobusPostType
      L2_2 = L2_2.MissionAnchor
      if L1_2 ~= L2_2 then
        goto lbl_79
      end
    end
    L1_2 = G
    L1_2 = L1_2.HeliobusSNSUtils
    L1_2 = L1_2.get_unlock_post_table_by_main_mission_id
    L2_2 = L1_1.LastPostMissionInProgress
    L2_2 = L2_2.ID
    L3_2 = true
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = #L1_2
    if L2_2 == 0 then
      L2_2 = L5_1.MissionTypePostFinishWithoutPopPhaseUpOrNoNewMission
      A0_2._status = L2_2
    else
      L2_2 = L5_1.MainMissionTypePostFinish
      A0_2._status = L2_2
      goto lbl_81
      ::lbl_79::
      L1_2 = L5_1.MissionTypePostFinishWithoutPopPhaseUpOrNoNewMission
      A0_2._status = L1_2
    end
  end
  ::lbl_81::
end
L0_1._init_base_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L1_2 = L1_2 - 1.0
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_start_anim_end
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L2_2
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L3_1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_begin_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_forbid_gather_btn
  L2_2(L3_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._on_start_anim_end = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_fans
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._fans
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bonus
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status
  L1_2(L2_2)
end
L0_1._setup_begin_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._incomes
  L2_2 = A0_2._incomes_before
  L1_2 = L1_2 - L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_bonus_incomes
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._fans
  L3_2 = A0_2._fans_before
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_bonus_fans
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_next_pop_phase_need_fans
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSUtils
  L3_2 = L3_2.get_post_bonus_skill
  L4_2 = A0_2._last_mission_post
  L4_2 = L4_2.Row
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_skill
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2 ~= nil
  L4_2(L5_2, L6_2)
end
L0_1._setup_bonus = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusPhaseExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._pop_phase
  L2_2 = L2_2 + 1
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_pop_next_phase_fans
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_pop_next_phase_fans
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Heliobus_MainPage_StillNeedFanNums"
    L5_2 = L1_2.PhaseFans
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._pop_phase
    L3_2 = A0_2._pop_before_phase
    L2_2 = L2_2 - L3_2
    L3_2 = G
    L3_2 = L3_2.HeliobusSNSUtils
    L3_2 = L3_2.get_pop_phase_fan_percent
    L4_2 = A0_2._pop_phase
    L5_2 = A0_2._fans
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._exp_panel
    L5_2 = L4_2
    L4_2 = L4_2.set_value_with_tween
    L6_2 = L3_2
    L7_2 = L2_2
    L4_2(L5_2, L6_2, L7_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_pop_next_phase_fans
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._exp_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_value
    L4_2 = 1
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_next_pop_phase_need_fans = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._status
  L2_2 = L5_1.MainMissionTypePostFinish
  if L1_2 == L2_2 then
    L1_2 = A0_2._new_mission_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L1_2(L2_2)
  else
    L1_2 = A0_2._status
    L2_2 = L5_1.MissionTypePostFinishWithoutPopPhaseUpOrNoNewMission
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_hint
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_bg
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_btn_panel
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      A0_2._enable_exit = true
    else
      L1_2 = A0_2._status
      L2_2 = L5_1.AllFinish
      if L1_2 == L2_2 then
        L1_2 = A0_2._new_mission_panel
        L2_2 = L1_2
        L1_2 = L1_2.setup_all_finish_view
        L1_2(L2_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.btn_go_to
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = false
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._setup_status = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_map_entry_id_by_map_info_id
  L2_2 = L4_1
  L1_2 = L1_2(L2_2)
  if L1_2 ~= 0 then
    L3_2 = A0_2
    L2_2 = A0_2._on_close_all_ui
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.HeliobusSNSUtils
    L2_2 = L2_2.open_map_by_map_info_id
    L3_2 = L4_1
    L2_2(L3_2)
  end
end
L0_1._on_open_map_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = L2_1.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1[L4_2]
    L5_2 = L5_2.UintValue
    L6_2 = L1_1.ActionDay
    L6_2 = L6_2 - 1
    if L5_2 == L6_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.btn_go_to
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = false
      L6_2(L7_2, L8_2)
      break
    end
  end
end
L0_1._check_forbid_gather_btn = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._status
  L2_2 = L5_1.MainMissionTypePostFinish
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._status
    L2_2 = L5_1.AllFinish
    if L1_2 ~= L2_2 then
      goto lbl_36
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bonus
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_mission_post_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._enable_exit = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  goto lbl_55
  ::lbl_36::
  L1_2 = A0_2._status
  L2_2 = L5_1.MissionTypePostFinishWithPopPhaseUp
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Heliobus.SNS.PopulationPhase.HeliobusPopulationPhaseUpgradeDialog"
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.LuaTable
    L3_2 = L2_2
    L2_2 = L2_2.set_exit_callback
    L4_2 = A0_2._on_close_all_ui
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  end
  ::lbl_55::
end
L0_1._on_click_bg = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_exit
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_close_all_ui
    L1_2(L2_2)
  end
end
L0_1._on_click_close = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_group
    L1_2.alpha = 1
  end
end
L0_1._on_return_to_top = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.BackToFirstPage
  L1_2(L2_2)
end
L0_1._on_close_all_ui = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_unload = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L6_1
return L0_1
