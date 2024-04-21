local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfUnlockInfoItemPanel"
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
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  A0_2._main_mission_id = A1_2
end
L0_1.setup_mission_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = A0_2._main_mission_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._main_mission_data = L1_2
  L1_2 = A0_2._main_mission_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._main_mission_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_lock_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._main_mission_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_mission_type
  L4_2 = A0_2._main_mission_data
  L4_2 = L4_2.TrackIconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_mission_status
  L1_2(L2_2)
end
L0_1.setup_view = L3_1
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
L0_1.setup_mission_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "GotoUnlockMission"
  L5_2 = A0_2._main_mission_id
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._main_mission_data
  L1_2 = L1_2.IsStart
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = 700
    L3_2 = {}
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MainMissionType
    L4_2 = L4_2.None
    L4_2 = #L4_2
    L5_2 = A0_2._main_mission_id
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._main_mission_data
    L1_2 = L1_2.IsTakenAndNotstarted
    if L1_2 then
      L1_2 = A0_2._main_mission_data
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.MissionModule
      L3_2 = L2_2
      L2_2 = L2_2.CheckMissionBeginConditionWithPromise
      L4_2 = L1_2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = L2_2
      L2_2 = L2_2.ThenLuaActionOneParam
      function L4_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        L1_3 = A0_2._main_mission_data
        L2_3 = L1_2
        if L1_3 == L2_3 then
          L1_3 = G
          L1_3 = L1_3.NotifyManager
          L1_3 = L1_3.notify
          L2_3 = G
          L2_3 = L2_3.CS
          L2_3 = L2_3.NotifyType
          L2_3 = L2_3.UIPileToastMessageString
          L3_3 = G
          L3_3 = L3_3.MissionUtils
          L3_3 = L3_3.get_begin_text_by_mission_condition
          L4_3 = A0_3
          L3_3, L4_3 = L3_3(L4_3)
          L1_3(L2_3, L3_3, L4_3)
        end
      end
      L2_2(L3_2, L4_2)
    else
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = L2_1
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_root = L3_1
return L0_1
