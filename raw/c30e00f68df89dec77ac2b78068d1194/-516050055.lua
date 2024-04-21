local L0_1, L1_1, L2_1, L3_1
L0_1 = "PhoneMessageMissionItem_FadeIn"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MessageMissionItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L0_1
    L2_2(L3_2, L4_2)
  end
end
L1_1._on_owner_active_change = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._visible_func = A1_2
  A0_2._visible_handler = A2_2
end
L1_1.set_visible_function = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._mission_id = A1_2
  A0_2._index = A2_2
  A0_2._is_new = A3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.root_canvas
  L4_2.alpha = 0
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_status
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.MissionModule
  L5_2 = L4_2
  L4_2 = L4_2.MainMissionDataPromised
  L6_2 = A0_2._mission_id
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2
  L4_2 = L4_2.ThenLuaAction
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.txt_name
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.txt_status
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_view
    L0_3(L1_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.root_canvas
    L0_3.alpha = 1
  end
  L4_2(L5_2, L6_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = A0_2._mission_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._mission_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MainMissionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._mission_id
  L1_2 = L1_2(L2_2)
  A0_2._mission_row = L1_2
  L1_2 = A0_2._mission_row
  L1_2 = L1_2.Type
  L2_2 = A0_2._mission_data
  L2_2 = A0_2._mission_data
  L2_2 = L2_2 ~= nil and L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._mission_row
  L5_2 = L5_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_status
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  if L2_2 then
    L5_2 = "UIText_PhoneMessage_MissionFinished"
    if L5_2 then
      goto lbl_44
    end
  end
  L5_2 = "UIText_PhoneMessage_MissionTaked"
  ::lbl_44::
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_trunk
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionType
  L5_2 = L5_2.Main
  L5_2 = L1_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_branch
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionType
  L5_2 = L5_2.Branch
  L5_2 = L1_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_companion
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionType
  L5_2 = L5_2.Companion
  L5_2 = L1_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_gap
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionType
  L5_2 = L5_2.Gap
  L5_2 = L1_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_doing
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.control_tip
  L4_2 = not L2_2
  L3_2.IsShowTip = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_trunk_finished
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionType
  L5_2 = L5_2.Main
  L5_2 = L1_2 == L5_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_branch_finished
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionType
  L5_2 = L5_2.Branch
  L5_2 = L1_2 == L5_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_companion_finished
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionType
  L5_2 = L5_2.Companion
  L5_2 = L1_2 == L5_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_gap_finished
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionType
  L5_2 = L5_2.Gap
  L5_2 = L1_2 == L5_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._is_new
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L3_2(L4_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromEnd
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = L0_1
    L3_2(L4_2, L5_2)
  end
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._should_block_click
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_scale_zero
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._mission_data
      if L1_2 ~= nil then
        L1_2 = A0_2._mission_data
        L1_2 = L1_2.IsShow
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
          L5_2 = A0_2._mission_id
          L3_2[1] = L4_2
          L3_2[2] = L5_2
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L1_1._on_btn_go = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._visible_func
    L3_2 = A0_2._visible_handler
    L4_2 = A0_2._index
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L1_2 = not L1_2
  end
  return L1_2
end
L1_1._should_block_click = L2_1
return L1_1
