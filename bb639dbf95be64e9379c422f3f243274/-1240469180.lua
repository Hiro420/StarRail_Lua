local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PhotoGraphModule
L1_1 = require
L2_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L1_1(L2_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "CameraLensPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_switch_ani_callback
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_for_photograph_mode
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._switch_callback_handler = nil
  A0_2._switch_callback_listener = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.get_cur_photograph_mode
  L1_2 = L1_2()
  L2_2 = G
  L2_2 = L2_2.PhotoGraphUtils
  L2_2 = L2_2.is_identify_mode
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.aim_container
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1._init_for_photograph_mode = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if A1_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.ani_root
    L5_2 = L4_2
    L4_2 = L4_2.Play
    L6_2 = "CameraLensPanelSwitch_1stPerson"
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.ani_root
    L5_2 = L4_2
    L4_2 = L4_2.Play
    L6_2 = "CameraLensPanelSwitch_3rdPerson"
    L4_2(L5_2, L6_2)
  end
  A0_2._is_switch_first_perspective = A1_2
  A0_2._switch_callback_handler = A2_2
  A0_2._switch_callback_listener = A3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.ani_mask
  L5_2 = L4_2
  L4_2 = L4_2.Play
  L6_2 = "CameraLensPanelSwitch_Mask_1"
  L4_2(L5_2, L6_2)
end
L1_1.switch_perspective = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_event_mask
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "CameraLensPanelSwitch_Mask_2"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._switch_callback_handler
    if L0_3 then
      L0_3 = A0_2._switch_callback_handler
      L1_3 = A0_2._switch_callback_listener
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_event_mask
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "CameraLensPanelSwitch_Mask_1"
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._is_switch_first_perspective
    if L0_3 then
      L0_3 = G
      L0_3 = L0_3.NotifyManager
      L0_3 = L0_3.notify
      L1_3 = G
      L1_3 = L1_3.CS
      L1_3 = L1_3.NotifyType
      L1_3 = L1_3.StartPhotoGraph
      L2_3 = CS
      L2_3 = L2_3.RPG
      L2_3 = L2_3.GameCore
      L2_3 = L2_3.PhotoGraphModeType
      L2_3 = L2_3.CommonShotFirstPerson
      L0_3(L1_3, L2_3)
    else
      L0_3 = G
      L0_3 = L0_3.NotifyManager
      L0_3 = L0_3.notify
      L1_3 = G
      L1_3 = L1_3.CS
      L1_3 = L1_3.NotifyType
      L1_3 = L1_3.StartPhotoGraph
      L2_3 = CS
      L2_3 = L2_3.RPG
      L2_3 = L2_3.GameCore
      L2_3 = L2_3.PhotoGraphModeType
      L2_3 = L2_3.CommonShotThirdPerson
      L0_3(L1_3, L2_3)
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.ani_mask
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = "CameraLensPanelSwitch_Mask_2"
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._init_switch_ani_callback = L2_1
return L1_1
