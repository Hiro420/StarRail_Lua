local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityUnlockMissionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityUnlockMissionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = "UIText_SilverWolf_ActivityPanel_MissionNotTake"
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2.__name
  A0_2._report_panel_name = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2.pre_mission_list = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  A0_2.main_mission_id = A1_2
end
L0_1.setup_mission_id = L3_1
function L3_1(A0_2, A1_2)
  A0_2._report_panel_name = A1_2
end
L0_1.setup_report_panel_name = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.MainMissionDataPromised
  L3_2 = A0_2.main_mission_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L1_1
    L1_3 = L0_3
    L0_3 = L0_3.TryGetMainMissionData
    L2_3 = A0_2.main_mission_id
    L0_3 = L0_3(L1_3, L2_3)
    A0_2._main_mission_data = L0_3
    L0_3 = A0_2._main_mission_data
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.txt_title
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetTextID
    L2_3 = A0_2._main_mission_data
    L2_3 = L2_3.Row
    L2_3 = L2_3.Name
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.txt_lock_title
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetTextID
    L2_3 = A0_2._main_mission_data
    L2_3 = L2_3.Row
    L2_3 = L2_3.Name
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._async_load_sprite_to
    L2_3 = A0_2._binder
    L2_3 = L2_3.img_mission_type
    L3_3 = A0_2._main_mission_data
    L3_3 = L3_3.TrackIconPath
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_mission_status
    L0_3(L1_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.btn_root
    L1_3 = L0_3
    L0_3 = L0_3.ClearAnimationState
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.interactable
  return L1_2
end
L0_1.get_btn_root_interactable = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_navigation_btn
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_navigation_btn_gameobject = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_navigation_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._main_mission_data
  L1_2 = L1_2.IsStart
  L1_2 = A0_2._main_mission_data
  L1_2 = L1_2.IsFinish
  L1_2 = not L1_2 and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_inprogress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._main_mission_data
  L4_2 = L4_2.IsStart
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A0_2._main_mission_data
  L4_2 = L4_2.IsFinish
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._main_mission_data
  L4_2 = L4_2.IsFinish
  L2_2(L3_2, L4_2)
end
L0_1._setup_mission_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._main_mission_data
  L1_2 = L1_2.IsStart
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SDKLuaReportAdapter
    L1_2 = L1_2.ReportUIButtonClick
    L2_2 = A0_2._owner
    L2_2 = L2_2.__name
    L3_2 = A0_2._report_panel_name
    L4_2 = "ProcessMission_"
    L5_2 = A0_2.main_mission_id
    L4_2 = L4_2 .. L5_2
    L5_2 = A0_2._owner
    L5_2 = L5_2.guid
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = G
    L1_2 = L1_2.MissionUtils
    L1_2 = L1_2.common_jump_to_mission_by_main_mission
    L2_2 = A0_2._main_mission_data
    L1_2(L2_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SDKLuaReportAdapter
    L1_2 = L1_2.ReportUIButtonClick
    L2_2 = A0_2._owner
    L2_2 = L2_2.__name
    L3_2 = A0_2._report_panel_name
    L4_2 = "LockMission_"
    L5_2 = A0_2.main_mission_id
    L4_2 = L4_2 .. L5_2
    L5_2 = A0_2._owner
    L5_2 = L5_2.guid
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L2_2 = A0_2
    L1_2 = A0_2.try_jump_to_pre_mission
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return
    else
      L1_2 = G
      L1_2 = L1_2.MissionUtils
      L1_2 = L1_2.jump_to_main_mission
      L2_2 = G
      L2_2 = L2_2.TextmapStatic
      L2_2 = L2_2.GetText
      L3_2 = "UIText_ActivityCommon_Panel_MainMissionTrackTip"
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_btn_root = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.pre_mission_list
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = ipairs
  L2_2 = A0_2.pre_mission_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.TryGetMainMissionData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.IsStart
      if L7_2 then
        L7_2 = G
        L7_2 = L7_2.new
        L8_2 = "Ui.Mission.MissionPage"
        L7_2 = L7_2(L8_2)
        L9_2 = L7_2
        L8_2 = L7_2.register_command_in_setup_view
        function L10_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3
          L0_3 = G
          L0_3 = L0_3.UIManager
          L0_3 = L0_3.load_and_async_show
          L1_3 = "Ui.Common.Toast.PileToastCenterDialog"
          L2_3 = G
          L2_3 = L2_3.TextmapStatic
          L2_3 = L2_3.GetText
          L3_3 = "UIText_ActivityCommon_Panel_PreMissionTrackTip"
          L4_3 = L6_2.NameStr
          L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3)
          L0_3(L1_3, L2_3, L3_3, L4_3)
        end
        L8_2(L9_2, L10_2)
        L9_2 = L7_2
        L8_2 = L7_2.init
        L10_2 = L6_2.MainMissionType
        L10_2 = #L10_2
        L11_2 = L6_2.ID
        L8_2(L9_2, L10_2, L11_2)
        L9_2 = L7_2
        L8_2 = L7_2.show
        L8_2(L9_2)
        L8_2 = true
        return L8_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L0_1.try_jump_to_pre_mission = L3_1
function L3_1(A0_2, A1_2)
  A0_2.pre_mission_list = A1_2
end
L0_1.register_pre_mission_list = L3_1
return L0_1
