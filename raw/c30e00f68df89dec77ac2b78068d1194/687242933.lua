local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "VirtualCursor"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.virtual_cursor
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.get_native
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.virtual_cursor
  L2_2 = L1_2
  L1_2 = L1_2.Active
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.virtual_cursor
  L2_2 = L1_2
  L1_2 = L1_2.Show
  L1_2(L2_2)
end
L0_1.show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.virtual_cursor
  L2_2 = L1_2
  L1_2 = L1_2.Hide
  L1_2(L2_2)
end
L0_1.hide = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A1_2
    if L1_3 ~= nil then
      L1_3 = A1_2
      L2_3 = A2_2
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.virtual_cursor
  L5_2 = L4_2
  L4_2 = L4_2.AddMoveListener
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.register_move_callback = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.virtual_cursor
  L1_2 = L1_2.Position
  return L1_2
end
L0_1.get_screen_position = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.virtual_cursor
  L2_2.HideWhenSelected = A1_2
end
L0_1.set_hide_when_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.virtual_cursor
  L3_2 = L2_2
  L2_2 = L2_2.SetStatus
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_status = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.virtual_cursor
  L3_2 = L2_2
  L2_2 = L2_2.SnapTo
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.snap_to = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UICamera
  L3_2 = L2_2
  L2_2 = L2_2.WorldToScreenPoint
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.virtual_cursor
  L4_2.Position = L3_2
end
L0_1.set_world_position = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.virtual_cursor
    L3_2 = L2_2
    L2_2 = L2_2.Active
    L2_2(L3_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.virtual_cursor
    L3_2 = L2_2
    L2_2 = L2_2.Deactive
    L2_2(L3_2)
  end
end
L0_1._on_owner_active_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.virtual_cursor
  L2_2 = L1_2
  L1_2 = L1_2.Deactive
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
return L0_1
