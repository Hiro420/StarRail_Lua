local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialFullPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeartDialFullPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeartDialModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._dialogue_entity = A1_2
  L2_2 = A0_2._dialogue_entity
  L2_2 = L2_2.RuntimeID
  A0_2._dialogueNpcRuntimeID = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_disable
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetFullConditionDescTextID
  L3_2 = A0_2._dialogueNpcRuntimeID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_full_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_full_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_full_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetFullConditionMainMissionID
  L3_2 = A0_2._dialogueNpcRuntimeID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= 0 then
    L2_2 = L2_1
    L3_2 = L2_2
    L2_2 = L2_2.SetTrackingMission
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.GotoByType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GotoType
    L3_2 = L3_2.Mission
    L3_2 = #L3_2
    L4_2 = {}
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MainMissionType
    L5_2 = L5_2.None
    L5_2 = #L5_2
    L6_2 = L1_2
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_UIManager
      L4_2 = L3_2
      L3_2 = L3_2.GetPageByName
      L5_2 = "MissionPage"
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 ~= nil then
        L5_2 = L3_2
        L4_2 = L3_2.SetEnterCallback
        function L6_2()
          local L0_3, L1_3
          L0_3 = A0_2._owner
          L1_3 = L0_3
          L0_3 = L0_3.exit
          L0_3(L1_3)
        end
        L4_2(L5_2, L6_2)
      end
      return
    end
  end
end
L0_1._on_btn_confirm = L3_1
return L0_1
