local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerGuestPhotoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "DrinkMakerTrustHeartAni_01"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_click
    L0_3(L1_3)
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
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._guest_data = A1_2
  A0_2._callback = A2_2
  A0_2._callback_listener = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_guest_status
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_faith
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "DrinkMakerGuestFinishReward"
  L7_2 = A0_2._guest_data
  L7_2 = L7_2.GuestID
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_reddot
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  A0_2._wait_unlock_anim_play = A1_2
end
L0_1.set_wait_unlock_anim_play = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._wait_unlock_anim_play = false
  L2_2 = A0_2
  L1_2 = A0_2._setup_faith
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_trust
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1.play_trust_anim = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L3_2 = L2_2
    L2_2 = L2_2.SetAsLastSibling
    L2_2(L3_2)
  end
end
L0_1.set_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_listener
  L4_2 = A0_2._guest_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._guest_data
  L2_2 = L1_2
  L1_2 = L1_2.IsFinish
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._guest_data
  L2_2 = L2_2.IsLock
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_finish
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_trust
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_guest
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_guest_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._guest_data
  L1_2 = L1_2.GuestRow
  L1_2 = L1_2.MaxFaith
  L2_2 = A0_2._guest_data
  L2_2 = L2_2.Faith
  L3_2 = A0_2._wait_unlock_anim_play
  if L3_2 then
    L3_2 = math
    L3_2 = L3_2.max
    L4_2 = 0
    L5_2 = L2_2 - 1
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  if L1_2 == 0 then
    L3_2 = 0
    if L3_2 then
      goto lbl_21
    end
  end
  L3_2 = L2_2 / L1_2
  ::lbl_21::
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_trust_progress
  L4_2.fillAmount = L3_2
end
L0_1._setup_faith = L2_1
return L0_1
