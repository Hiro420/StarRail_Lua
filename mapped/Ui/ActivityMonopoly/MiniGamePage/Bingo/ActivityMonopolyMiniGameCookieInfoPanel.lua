local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "MonopolyCookiePopUpTip"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityMonopolyMiniGameCookieInfoPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._index = A1_2
  A0_2._resource_id = A2_2
  L4_2 = L0_1.GameInfo
  L5_2 = L4_2
  L4_2 = L4_2.TryGetMonopolyGameResourceData
  L6_2 = A0_2._resource_id
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._resource_data = L4_2
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_front
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._setup_cookie_state = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._setup_tip_state = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.interactable
  return L1_2
end
L2_1.is_btn_root_interactable = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_handler
  L4_2 = A0_2._is_boom
  L5_2 = A0_2._index
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L2_1._on_btn_root = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._flip_cookie
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._flip_final_cookie
    L2_2(L3_2)
  end
end
L2_1.flip_cookie = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_btn_interactable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cookie_state
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L2_1.flip_cookie_without_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.flip_cookie_without_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_cookie_revert
  L1_2(L2_2)
end
L2_1._flip_cookie = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.flip_cookie_without_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_final_cookie_revert
  L1_2(L2_2)
end
L2_1._flip_final_cookie = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_cookie_revert = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_final_cookie_revert = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._game_over
  L1_2(L2_2)
end
L2_1.game_over = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._game_over = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_cookie_hint_active
    L2_2(L3_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_hint
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
  end
end
L2_1.set_cookie_hint_active = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_cookie_hint_active = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._set_cookie_hint_text = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_handler = A2_2
end
L2_1.register_btn_root_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_click_area
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_btn_interactable = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._flip_final_cookie_finish_callback = A1_2
  A0_2._flip_final_cookie_finish_callback_handler = A2_2
end
L2_1.register_flip_final_cookie_finish_callback = L3_1
return L2_1
