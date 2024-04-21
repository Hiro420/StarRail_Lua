local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.TeamMemberStatusPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamMemberStatusPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._avatar_ui3d = L1_2
  A0_2._assist_active_cache = false
  A0_2._team_data = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._team_data = A1_2
end
L0_1.setup_team_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._avatar_ui3d
    if L0_3 then
      A0_2._is_select = true
      L0_3 = A0_2._team_data
      if L0_3 then
        L0_3 = A0_2._team_data
        L1_3 = L0_3
        L0_3 = L0_3.GetMemberData
        L2_3 = A0_2._index
        L2_3 = L2_3 - 1
        L0_3 = L0_3(L1_3, L2_3)
      end
      if L0_3 then
        L1_3 = A0_2._avatar_ui3d
        L2_3 = L1_3
        L1_3 = L1_3.setup_avatar_selected_eff
        L3_3 = A0_2._index
        L4_3 = A0_2._avatar_data
        L1_3(L2_3, L3_3, L4_3)
      end
    end
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._avatar_ui3d
      if L0_3 then
        A0_2._is_select = false
        L0_3 = A0_2._avatar_ui3d
        L1_3 = L0_3
        L0_3 = L0_3.remove_avatar_selected_eff
        L2_3 = A0_2._index
        L3_3 = A0_2._avatar_data
        L0_3(L1_3, L2_3, L3_3)
      end
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = A0_2._avatar_ui3d
    if L2_2 then
      L2_2 = A0_2._avatar_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.remove_avatar_selected_eff
      L4_2 = A0_2._index
      L5_2 = A0_2._avatar_data
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2 ~= nil
  if L3_2 then
    L4_2 = A0_2._avatar_data
    if L4_2 ~= nil then
      L4_2 = A0_2._avatar_data
      L4_2 = L4_2.IsAssistAvatar
      if L4_2 then
        L4_2 = A1_2.IsAssistAvatar
        if not L4_2 then
          L4_2 = A0_2._avatar_ui3d
          L5_2 = L4_2
          L4_2 = L4_2.setup_avatar_change_eff
          L6_2 = A2_2
          L7_2 = A1_2
          L4_2(L5_2, L6_2, L7_2)
          L4_2 = A0_2._is_select
          if L4_2 then
            L4_2 = A0_2._avatar_ui3d
            L5_2 = L4_2
            L4_2 = L4_2.setup_avatar_selected_eff
            L6_2 = A2_2
            L7_2 = A1_2
            L4_2(L5_2, L6_2, L7_2)
          end
        end
      end
    end
  end
  A0_2._avatar_data = A1_2
  A0_2._index = A2_2
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = A1_2.IsAssistAvatar
  end
  A0_2._disable_drag = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_member_info
  L5_2 = L4_2
  L4_2 = L4_2.safe_set_active
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_status
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_member_info
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_empty_status
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_un_choose_status
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_click_character
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_click_add
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn
  L4_2.enabled = true
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn
  L5_2 = L4_2
  L4_2 = L4_2.ClearAnimationState
  L4_2(L5_2)
end
L0_1.setup_normal_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_info
  L2_2 = L1_2
  L1_2 = L1_2.setup_position
  L3_2 = A0_2._avatar_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.get_position_by_team_index
  L5_2 = A0_2._index
  L6_2 = A0_2._avatar_data
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1.refresh_pos = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_un_choose_status
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_status
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2.enabled = false
end
L0_1.setup_un_choose_status = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = {}
  L4_2.callbackSelf = A1_2
  L4_2.callback = A2_2
  L4_2.callbackParam = A3_2
  L6_2 = A0_2
  L5_2 = A0_2._bind_btn_callback
  L7_2 = A0_2._binder
  L7_2 = L7_2.btn
  L8_2 = A0_2._click_item
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1.register_release = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2._bind_long_click
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A2_2
    L1_3 = A1_2
    L2_3 = A3_2
    L0_3(L1_3, L2_3)
  end
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.register_long_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.callback
  L3_2 = A1_2.callbackSelf
  L4_2 = A1_2.callbackParam
  L2_2(L3_2, L4_2)
end
L0_1._click_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._disable_drag
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Input
  L2_2 = L2_2.mousePosition
  L2_2 = L2_2.x
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Input
  L3_2 = L3_2.mousePosition
  L3_2 = L3_2.y
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.RectTransformUtility
  L2_2 = L2_2.ScreenPointToLocalPointInRectangle
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L4_2 = L1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_UICamera
  L6_2 = nil
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "Failed to get coordinates!"
    L4_2(L5_2)
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L4_2 = L4_2.sizeDelta
  L5_2 = L3_2.x
  L6_2 = L4_2.x
  L6_2 = -L6_2
  L6_2 = L6_2 * 0.5
  if L5_2 >= L6_2 then
    L5_2 = L3_2.x
    L6_2 = L4_2.x
    L6_2 = L6_2 * 0.75
    if L5_2 <= L6_2 then
      L5_2 = true
      return L5_2
    end
  end
  L5_2 = false
  return L5_2
end
L0_1.is_mouse_in_range = L1_1
return L0_1
