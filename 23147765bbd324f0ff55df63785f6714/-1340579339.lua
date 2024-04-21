local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChronicleCanTakeTipItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click_btn
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.destroy_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
end
L0_1.destroy_prefab = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.gameObject
    L2_2 = L2_2.activeSelf
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.root
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.gameObject
    L2_2 = L2_2.activeSelf
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.root
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.set_show = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  L1_2 = L1_2.anchoredPosition
  return L1_2
end
L0_1.get_pos = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector2
  L5_2 = A1_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.anchoredPosition = L4_2
end
L0_1.set_pos = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_arrow
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = 0
  L5_2 = 0
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.localEulerAngles = L3_2
end
L0_1.set_rot = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._path_data
  return L1_2
end
L0_1.get_path_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._path_panel
  return L1_2
end
L0_1.get_path_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._path_data = A1_2
  A0_2._path_panel = A2_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._callback_self
    if L1_2 then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._path_data
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_btn = L1_1
return L0_1
