local L0_1, L1_1, L2_1, L3_1
L0_1 = "UIText_Activity_Museum_Round"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MuseumEntranceButtonPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
L2_1 = 999
function L3_1(A0_2)
  local L1_2
  A0_2._is_enable = true
end
L1_1.ctor = L3_1
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
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_callback
    L2_3 = A0_2._select_listener
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L1_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_lock
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_mission_count
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_round_info
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_round_info
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L1_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_enable
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsInFakeDisableState
    L1_2 = not L1_2
  end
  return L1_2
end
L1_1.is_btn_enable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._is_enable = A1_2
end
L1_1.set_enable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.IsInFakeDisableState = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_arrow_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L1_1.set_lock = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mission_count
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_mission_count
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = 0 < A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_mission_count
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = tostring
    L5_2 = A1_2
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1.set_mission_count = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_round_info
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_round_info
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_day_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L0_1
    L5_2 = math
    L5_2 = L5_2.min
    L6_2 = A1_2.TurnCount
    L7_2 = L2_1
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L1_1.set_round_info = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._listener = A2_2
end
L1_1.set_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_listener = A2_2
end
L1_1.set_on_select_callback = L3_1
function L3_1(A0_2, A1_2)
  A0_2._disable_hint_text_id = A1_2
end
L1_1.set_disable_hint_text_id = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L1_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = A1_2
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L1_1.bind_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_enable
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.IsInFakeDisableState
  if L1_2 then
    L1_2 = A0_2._disable_hint_text_id
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = A0_2._disable_hint_text_id
      L1_2(L2_2, L3_2)
    end
    return
  end
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    L2_2 = A0_2._listener
    L1_2(L2_2)
  end
end
L1_1._on_btn_root = L3_1
return L1_1
