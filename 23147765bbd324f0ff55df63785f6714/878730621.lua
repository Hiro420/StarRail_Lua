local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AvatarModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ExpeditionModule
L2_1 = "MemberChoose_FadeIn"
L3_1 = "MemberChoose_FadeOut"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "ExpeditionMemberSelectPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A3_2 == true
  A0_2._in_friend = L4_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.safe_set_active
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_select_avatar
  L4_2 = L3_2
  L3_2 = L3_2.register_selection_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L4_1.register_selection_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_select_friend
  L4_2 = L3_2
  L3_2 = L3_2.register_click_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L4_1.register_assist_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._close_handler = A2_2
end
L4_1.register_close_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._close_callback
  L3_2 = A0_2._close_handler
  L1_2(L2_2, L3_2)
end
L4_1._on_btn_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L4_1.hide = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_select_avatar
    L3_2 = L2_2
    L2_2 = L2_2.refresh_view
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
end
L4_1.show = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L6_2 = A0_2
  L5_2 = A0_2.safe_set_active
  L7_2 = true
  L5_2(L6_2, L7_2)
  A0_2._expedition_data = A1_2
  A0_2._selected_avatars = A2_2
  A0_2._friend_data = A3_2
  A0_2._in_friend = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._refresh_view
  L5_2(L6_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._in_friend
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_friend
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._in_friend
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._in_friend
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_select_friend
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._friend_data
    L4_2 = A0_2._expedition_data
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_select_avatar
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._selected_avatars
    L4_2 = A0_2._expedition_data
    L1_2(L2_2, L3_2, L4_2)
  end
end
L4_1._refresh_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._in_friend
  if L3_2 ~= A2_2 then
    A0_2._in_friend = A2_2
    L4_2 = A0_2
    L3_2 = A0_2._refresh_view
    L3_2(L4_2)
  else
    L3_2 = A0_2._in_friend
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.panel_select_friend
      L4_2 = L3_2
      L3_2 = L3_2.try_unselect
      L3_2(L4_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.panel_select_avatar
      L4_2 = L3_2
      L3_2 = L3_2.try_unselect_avatar
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L4_1.click_member = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._in_friend
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_select_friend
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  ::lbl_10::
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L4_1.get_first_selected_object = L5_1
return L4_1
