local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.AssistSwitchPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIColorUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AssistSwitchPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch_to_support
  L4_2 = A0_2._on_btn_assist_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch_to_role
  L4_2 = A0_2._on_btn_assist_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._team_data
  if L2_2 ~= nil then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.RemoveAssistAvatar
    L2_2(L3_2)
  end
  A0_2._team_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.switch_team = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.set_assist_member_edit_page_exit_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._team_data
  L2_2 = L1_2
  L1_2 = L1_2.GetAssistMember
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_switch_to_support
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_switch_to_role
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_node = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._team_data
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._check_team_valid
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_TeamEdit_LimitHint"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L1_1.HaveAssist
  if L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.RemoveAssistAvatar
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.FriendUtils
    L1_2 = L1_2.show_assist_page
    L2_2 = A0_2._team_data
    L3_2 = A0_2._callback
    L4_2 = A0_2._callback_self
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_btn_assist_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._get_member_data
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = L5_2.IsAlive
      if L6_2 then
        L6_2 = true
        return L6_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._check_team_valid = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._team_data
  L3_2 = L2_2
  L2_2 = L2_2.GetMemberData
  L4_2 = A1_2 - 1
  return L2_2(L3_2, L4_2)
end
L0_1._get_member_data = L2_1
return L0_1
