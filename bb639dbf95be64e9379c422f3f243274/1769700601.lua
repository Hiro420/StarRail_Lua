local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainPostImagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainPostImagePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonPhoneStatusPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonPhoneStatusPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.ActionDay.Performance.HeliobusActionDayResultPerformanceCommentItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.ActionDay.Performance.HeliobusActionDayResultPerformanceCommentItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonGhostSpineBgPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonGhostSpineBgPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.LookAtPhonePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.ActionDay.Performance.HeliobusActionDayResultPerformanceDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusActionDayResultPerformanceDialog"
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
L3_1 = "Activity_Heliobus_PerformanceCommentList"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.ArrayValue
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "Activity_Heliobus_PerformanceTendencyProbability"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.FloatValue
L4_1 = 32
L5_1 = 7
L6_1 = 3
L7_1 = 2.2
L8_1 = 1.5
L9_1 = 13
L10_1 = 6
L11_1 = 7
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusActionDayResultPerformanceDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L12_1
function L12_1(A0_2)
  local L1_2
end
L0_1.init = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._init_base_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skip
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_skip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonPhoneStatusPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonPhoneStatusPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._phone_status_panel = L1_2
  L1_2 = A0_2._phone_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_phone_status_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonGhostSpineBgPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonGhostSpineBgPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._ghost_spine_panel = L1_2
  L1_2 = A0_2._ghost_spine_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_spine_skeleton
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._img_panel_table = L1_2
  L1_2 = 1
  L2_2 = L10_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeliobusSNSMainPostImagePanel
    L8_2 = G
    L8_2 = L8_2.HeliobusSNSMainPostImagePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L9_2 = "node_img_post_"
    L10_2 = L4_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._img_panel_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_play_comment_table
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._generate_random_play_order
  L1_2(L2_2)
  L1_2 = {}
  A0_2._comment_panel_table = L1_2
  L1_2 = 1
  L2_2 = L9_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeliobusActionDayResultPerformanceCommentItem
    L8_2 = G
    L8_2 = L8_2.HeliobusActionDayResultPerformanceCommentItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L9_2 = "node_comment_"
    L10_2 = L4_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._comment_panel_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  A0_2._enable_exit = false
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_play_anim_end
  L4_2 = L5_1
  L5_2 = L7_1
  L4_2 = L4_2 + L5_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._auto_close_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._enable_exit_time_up
  L4_2 = L6_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._enable_exit_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_prev_time_up
  L4_2 = L7_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._prev_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_play_single_comment_time_up
  L4_2 = 0.5
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._play_single_comment_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_ghost_time_up
  L4_2 = L8_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._ghost_timer = L1_2
end
L0_1._on_load = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_last_my_post
  L1_2 = L1_2()
  A0_2._post = L1_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_post_by_mission_id
  L2_2 = L1_1.LastPostMissionInProgress
  L2_2 = L2_2.ID
  L1_2 = L1_2(L2_2)
  A0_2._last_mission_post = L1_2
  L1_2 = L1_1.Fans
  A0_2._fans = L1_2
  L1_2 = A0_2._fans
  L2_2 = G
  L2_2 = L2_2.HeliobusSNSUtils
  L2_2 = L2_2.get_post_bonus_fan
  L3_2 = A0_2._last_mission_post
  L3_2 = L3_2.Row
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 - L2_2
  A0_2._fans_before = L1_2
  L1_2 = A0_2._fans_before
  if L1_2 < 0 then
    L1_2 = 0
    if L1_2 then
      goto lbl_31
    end
  end
  L1_2 = A0_2._fans_before
  ::lbl_31::
  A0_2._fans_before = L1_2
  L1_2 = L1_1.Incomes
  A0_2._incomes = L1_2
  L1_2 = A0_2._incomes
  L2_2 = G
  L2_2 = L2_2.HeliobusSNSUtils
  L2_2 = L2_2.get_post_bonus_income
  L3_2 = A0_2._last_mission_post
  L3_2 = L3_2.Row
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 - L2_2
  A0_2._incomes_before = L1_2
  L1_2 = L1_1.PopPhase
  A0_2._pop_phase = L1_2
end
L0_1._init_base_data = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._post_comment_table = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_dict
  L2_2 = A0_2._post
  L2_2 = L2_2.CommentDataDict
  L1_2 = L1_2(L2_2)
  A0_2._post_comment_table = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.shuffle_table
  L2_2 = A0_2._post_comment_table
  L1_2 = L1_2(L2_2)
  A0_2._post_comment_table = L1_2
  L1_2 = {}
  A0_2._common_comment_id_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_common_comment_table
  L1_2(L2_2)
  L1_2 = {}
  A0_2._all_comment_table_id = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_all_comment_table
  L1_2(L2_2)
end
L0_1._init_play_comment_table = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._all_comment_table_id = L1_2
  L1_2 = 1
  L2_2 = L4_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIRandomUtils
    L5_2 = L5_2.RangeFloat
    L6_2 = 0
    L7_2 = 1
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L3_1
    if L5_2 < L6_2 then
      L6_2 = A0_2._post_comment_table
      L6_2 = #L6_2
      if 0 < L6_2 then
        L6_2 = table
        L6_2 = L6_2.remove
        L7_2 = A0_2._post_comment_table
        L8_2 = 1
        L6_2 = L6_2(L7_2, L8_2)
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._all_comment_table_id
        L9_2 = L6_2.ID
        L7_2(L8_2, L9_2)
    end
    else
      L6_2 = A0_2._common_comment_id_table
      L6_2 = #L6_2
      if L6_2 == 0 then
        L7_2 = A0_2
        L6_2 = A0_2._generate_common_comment_table
        L6_2(L7_2)
      end
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = A0_2._common_comment_id_table
      L8_2 = 1
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._all_comment_table_id
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._generate_all_comment_table = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._common_comment_id_table = L1_2
  L1_2 = 0
  L2_2 = L2_1.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1[L4_2]
    L5_2 = L5_2.UintValue
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._common_comment_id_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.shuffle_table
  L2_2 = A0_2._common_comment_id_table
  L1_2 = L1_2(L2_2)
  A0_2._common_comment_id_table = L1_2
end
L0_1._generate_common_comment_table = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._play_order_table = L1_2
  L1_2 = 1
  L2_2 = L9_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._play_order_table
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.shuffle_table
  L2_2 = A0_2._play_order_table
  L1_2 = L1_2(L2_2)
  A0_2._play_order_table = L1_2
end
L0_1._generate_random_play_order = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  A0_2._enable_exit = true
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._on_play_anim_end = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._enable_exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._enable_exit = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_skip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._enable_exit_time_up = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._auto_close_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._auto_close_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._enable_exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._enable_exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_user
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_post
  L1_2(L2_2)
  L1_2 = A0_2._phone_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_begin_comment
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_begin_fans
  L1_2(L2_2)
  L1_2 = A0_2._prev_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._prev_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._ghost_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._ghost_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMissionToastDialogShowed
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "HeliobusQuickPostPerformancePage_FadeIn"
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._prev_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_fans
  L1_2(L2_2)
end
L0_1._on_prev_time_up = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._play_order_table
  L1_2 = #L1_2
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._generate_random_play_order
    L1_2(L2_2)
  end
  L1_2 = A0_2._all_comment_table_id
  L1_2 = #L1_2
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._generate_all_comment_table
    L1_2(L2_2)
  end
  L1_2 = table
  L1_2 = L1_2.remove
  L2_2 = A0_2._play_order_table
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = table
  L2_2 = L2_2.remove
  L3_2 = A0_2._all_comment_table_id
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._comment_panel_table
  L3_2 = L3_2[L1_2]
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIRandomUtils
  L3_2 = L3_2.RangeFloat
  L4_2 = 0.2
  L5_2 = 0.5
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._play_single_comment_timer
  L5_2 = L4_2
  L4_2 = L4_2.set_total_time
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._play_single_comment_timer
  L5_2 = L4_2
  L4_2 = L4_2.reset
  L4_2(L5_2)
  L4_2 = A0_2._play_single_comment_timer
  L5_2 = L4_2
  L4_2 = L4_2.start
  L4_2(L5_2)
end
L0_1._on_play_single_comment_time_up = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ghost_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._ghost_spine_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._on_ghost_time_up = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusUserExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L1_1.PlayerUserID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusMainEntranceSNSInfoCarouselItem : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
    L4_2 = L1_1.PlayerUserID
    L5_2 = ")\231\154\132SNS\231\148\168\230\136\183"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_user_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.HeliobusUserName
  L2_2(L3_2, L4_2)
end
L0_1._setup_user = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_post_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._post
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_post_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._post
  L3_2 = L3_2.Content
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._img_panel_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._img_panel_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = A0_2._post
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._img_panel_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.set_stick_show
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusTemplateExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._post
  L2_2 = L2_2.TemplateID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_tendency
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSUtils
  L4_2 = L4_2.get_tendency_text_id
  L5_2 = L1_2.TemplateTendency
  L5_2 = #L5_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_post = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = L9_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.remove
    L6_2 = A0_2._play_order_table
    L7_2 = 1
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = table
    L6_2 = L6_2.remove
    L7_2 = A0_2._all_comment_table_id
    L8_2 = 1
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2._comment_panel_table
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_begin_comment = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_scroll_controller_fans
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L3_2 = L11_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_scroll_controller_fans
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2._fans_before
  L4_2 = A0_2._fans_before
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_begin_fans = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_scroll_controller_fans
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2._fans_before
  L4_2 = A0_2._fans
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusPhaseExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._pop_phase
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusActionDayResultPerformanceDialog _setup_fans() : \228\184\141\229\173\152\229\156\168("
    L4_2 = A0_2._pop_phase
    L5_2 = ")\228\186\186\230\176\148\233\152\182\230\174\181"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
end
L0_1._setup_fans = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._enable_exit
  if L1_2 then
    L1_2 = A0_2._auto_close_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    L1_2 = A0_2._play_single_comment_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Heliobus.SNS.ActionDay.HeliobusActionDayResultDialog"
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_click_close = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMissionToastDialogClosed
  L1_2(L2_2)
end
L0_1._on_unload = L12_1
function L12_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L12_1
return L0_1
