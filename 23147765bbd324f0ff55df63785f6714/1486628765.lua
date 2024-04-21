local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Mission.OnMissionForeseeDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OnMissionForeseeDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MainMissionTypeConfigExcelTable
L2_1 = "GuideNextLevelTipsPage_FadeIn"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.OnMissionForeseeDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._can_close = false
  A0_2._mission_id = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._mission_id = A1_2
  L3_2 = A0_2._mission_id
  if L3_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.MissionModule
    L4_2 = L3_2
    L3_2 = L3_2.GetMainMissionRow
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._mission_row = L3_2
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.MissionModule
    L4_2 = L3_2
    L3_2 = L3_2.GetMainMissionRow
    L5_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._former_mission_row = L3_2
  end
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._mission_id
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._mission_row
    L3_2 = L3_2.Name
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_type
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L1_1.GetData
    L4_2 = A0_2._mission_row
    L4_2 = L4_2.Type
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.TypeName
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_condition_view
    L1_2(L2_2)
  else
    L1_2 = A0_2._former_mission_row
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_name
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_LastMission_Title"
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_condition
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_LastMission_Tips"
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_type
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L1_1.GetData
      L4_2 = A0_2._former_mission_row
      L4_2 = L4_2.Type
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2.TypeName
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._set_close
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
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mission_row
  L1_2 = L1_2.BeginParam
  L1_2 = L1_2[0]
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MissionBeginType
  L2_2 = L2_2.WorldLevel
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_condition
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Mission_Advance4"
    L4_2 = A0_2._mission_row
    L4_2 = L4_2.BeginParam
    L4_2 = L4_2[0]
    L4_2 = L4_2.Value
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_condition
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Mission_Advance2"
    L4_2 = A0_2._mission_row
    L4_2 = L4_2.BeginParam
    L4_2 = L4_2[0]
    L4_2 = L4_2.Value
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_condition_view = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._can_close = true
end
L0_1._set_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.Action1
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_exit
    L2_2(L3_2)
  end
end
L0_1._on_in_control_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._can_close
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_exit = L3_1
return L0_1
