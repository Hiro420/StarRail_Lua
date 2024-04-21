local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameProgramming.MiniGameProgrammingCommandNodePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MiniGameProgrammingCommandNodePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.Prop
L1_1 = L1_1.CommandRobotPuzzleDirection
L2_1 = "MiniGameInputing"
L3_1 = "MiniGameCommandWaiting"
L4_1 = {}
L4_1.Empty = 1
L4_1.Normal = 2
L4_1.Over = 3
L4_1.Running = 4
L4_1.LastInput = 5
L4_1.Waiting = 6
MiniGameProgrammingNodeState = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_view_active_by_scale
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.do_after_init = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._node_state = A1_2
  L2_2 = L1_1.Up
  A0_2._direction = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._enter_current_state
  L2_2(L3_2)
end
L0_1.init_node_with_state = L4_1
function L4_1(A0_2, A1_2)
  A0_2._direction = A1_2
end
L0_1.set_direction = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._node_state
  if L2_2 == A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._exit_current_state
  L2_2(L3_2)
  A0_2._node_state = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._enter_current_state
  L2_2(L3_2)
end
L0_1.set_node_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._node_state
  L2_2 = MiniGameProgrammingNodeState
  L2_2 = L2_2.Empty
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.empty_node
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._node_state
    L2_2 = MiniGameProgrammingNodeState
    L2_2 = L2_2.Normal
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.normal_node
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetLightWeightActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._refresh_direction_by_current_state
      L3_2 = false
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._node_state
      L2_2 = MiniGameProgrammingNodeState
      L2_2 = L2_2.LastInput
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.normal_node
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetLightWeightActive
        L3_2 = false
        L1_2(L2_2, L3_2)
        L2_2 = A0_2
        L1_2 = A0_2._refresh_direction_by_current_state
        L3_2 = false
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._node_state
        L2_2 = MiniGameProgrammingNodeState
        L2_2 = L2_2.Over
        if L1_2 == L2_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.over_node
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetLightWeightActive
          L3_2 = false
          L1_2(L2_2, L3_2)
          L2_2 = A0_2
          L1_2 = A0_2._refresh_direction_by_current_state
          L3_2 = false
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2._node_state
          L2_2 = MiniGameProgrammingNodeState
          L2_2 = L2_2.Running
          if L1_2 == L2_2 then
            L1_2 = A0_2._binder
            L1_2 = L1_2.running_node
            L2_2 = L1_2
            L1_2 = L1_2.SafeSetLightWeightActive
            L3_2 = false
            L1_2(L2_2, L3_2)
            L2_2 = A0_2
            L1_2 = A0_2._refresh_direction_by_current_state
            L3_2 = false
            L1_2(L2_2, L3_2)
          else
            L1_2 = A0_2._node_state
            L2_2 = MiniGameProgrammingNodeState
            L2_2 = L2_2.Waiting
            if L1_2 == L2_2 then
              L1_2 = A0_2._binder
              L1_2 = L1_2.waiting_node
              L2_2 = L1_2
              L1_2 = L1_2.SafeSetLightWeightActive
              L3_2 = false
              L1_2(L2_2, L3_2)
            end
          end
        end
      end
    end
  end
end
L0_1._exit_current_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._node_state
  L2_2 = MiniGameProgrammingNodeState
  L2_2 = L2_2.Empty
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.empty_node
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._node_state
    L2_2 = MiniGameProgrammingNodeState
    L2_2 = L2_2.Normal
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.normal_node
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetLightWeightActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._refresh_direction_by_current_state
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayFromBegin
      L2_2 = A0_2._binder
      L2_2 = L2_2.state_normal_animation
      L3_2 = L2_1
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._node_state
      L2_2 = MiniGameProgrammingNodeState
      L2_2 = L2_2.LastInput
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.normal_node
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetLightWeightActive
        L3_2 = true
        L1_2(L2_2, L3_2)
        L2_2 = A0_2
        L1_2 = A0_2._refresh_direction_by_current_state
        L3_2 = true
        L1_2(L2_2, L3_2)
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.UIAnimationUtils
        L1_2 = L1_2.PlayFromBegin
        L2_2 = A0_2._binder
        L2_2 = L2_2.state_normal_animation
        L3_2 = L2_1
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._node_state
        L2_2 = MiniGameProgrammingNodeState
        L2_2 = L2_2.Over
        if L1_2 == L2_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.over_node
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetLightWeightActive
          L3_2 = true
          L1_2(L2_2, L3_2)
          L2_2 = A0_2
          L1_2 = A0_2._refresh_direction_by_current_state
          L3_2 = true
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2._node_state
          L2_2 = MiniGameProgrammingNodeState
          L2_2 = L2_2.Running
          if L1_2 == L2_2 then
            L1_2 = A0_2._binder
            L1_2 = L1_2.running_node
            L2_2 = L1_2
            L1_2 = L1_2.SafeSetLightWeightActive
            L3_2 = true
            L1_2(L2_2, L3_2)
            L2_2 = A0_2
            L1_2 = A0_2._refresh_direction_by_current_state
            L3_2 = true
            L1_2(L2_2, L3_2)
          else
            L1_2 = A0_2._node_state
            L2_2 = MiniGameProgrammingNodeState
            L2_2 = L2_2.Waiting
            if L1_2 == L2_2 then
              L1_2 = A0_2._binder
              L1_2 = L1_2.waiting_node
              L2_2 = L1_2
              L1_2 = L1_2.SafeSetLightWeightActive
              L3_2 = true
              L1_2(L2_2, L3_2)
              L1_2 = CS
              L1_2 = L1_2.RPG
              L1_2 = L1_2.Client
              L1_2 = L1_2.UIAnimationUtils
              L1_2 = L1_2.PlayFromBegin
              L2_2 = A0_2._binder
              L2_2 = L2_2.state_waiting_animation
              L3_2 = L3_1
              L1_2(L2_2, L3_2)
            end
          end
        end
      end
    end
  end
end
L0_1._enter_current_state = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._node_state
  L3_2 = MiniGameProgrammingNodeState
  L3_2 = L3_2.Normal
  if L2_2 ~= L3_2 then
    L2_2 = A0_2._node_state
    L3_2 = MiniGameProgrammingNodeState
    L3_2 = L3_2.LastInput
    if L2_2 ~= L3_2 then
      goto lbl_18
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_direction
  L4_2 = A0_2._direction
  L5_2 = A0_2._binder
  L5_2 = L5_2.normal_direction_icons
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  goto lbl_41
  ::lbl_18::
  L2_2 = A0_2._node_state
  L3_2 = MiniGameProgrammingNodeState
  L3_2 = L3_2.Running
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_direction
    L4_2 = A0_2._direction
    L5_2 = A0_2._binder
    L5_2 = L5_2.running_direction_icons
    L6_2 = A1_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2._node_state
    L3_2 = MiniGameProgrammingNodeState
    L3_2 = L3_2.Over
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._refresh_direction
      L4_2 = A0_2._direction
      L5_2 = A0_2._binder
      L5_2 = L5_2.over_direction_icons
      L6_2 = A1_2
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
  ::lbl_41::
end
L0_1._refresh_direction_by_current_state = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = #A1_2
  L4_2 = L4_2 + 1
  L4_2 = A2_2[L4_2]
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetLightWeightActive
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end
L0_1._refresh_direction = L4_1
return L0_1
