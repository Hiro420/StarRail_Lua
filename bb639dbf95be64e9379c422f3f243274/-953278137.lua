local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.TeamMemberPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.AvatarUI3DPage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamMemberPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TeamModule
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._panel_avatar_ui3d = nil
  A0_2._team_data = nil
  L1_2 = {}
  A0_2._avatar_datas = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._avatar_ui3d = L1_2
  A0_2._max_team_member = 0
  A0_2._click_callback = nil
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panels_member_status
  L1_2 = #L1_2
  A0_2._max_team_member = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._register_member_edit
  L1_2(L2_2)
  A0_2._init_pos = false
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_member_status
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.register_release
    L8_2 = A0_2
    L9_2 = A0_2._on_edit_btn_release
    L10_2 = L4_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1._register_member_edit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_member_status
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.setup_un_choose_status
  L2_2(L3_2)
end
L0_1.setup_un_choose_status = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._team_data = A1_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.panels_member_status
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.setup_team_data
    L9_2 = A0_2._team_data
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.refresh
  L2_2(L3_2)
end
L0_1.switch_team = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_avatar_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_normal_view
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.set_click_callback = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._avatar_datas
  return L1_2
end
L0_1.get_avatar_datas = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panels_member_status
  L1_2 = L1_2[1]
  L1_2 = L1_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_normal_3d_avatar
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_member_status
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.setup_normal_view
    L8_2 = A0_2._avatar_datas
    L8_2 = L8_2[L4_2]
    L9_2 = L4_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._init_pos
    if not L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.refresh_pos
      L6_2(L7_2)
    end
  end
  A0_2._init_pos = true
end
L0_1._setup_normal_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.setup_team_show
  L3_2 = A0_2._avatar_datas
  L1_2(L2_2, L3_2)
end
L0_1._setup_normal_3d_avatar = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L2_2 = L2_2._button_mutex
  if L2_2 then
    L2_2 = A0_2._owner
    L2_2 = L2_2._button_mutex
    L3_2 = L2_2
    L2_2 = L2_2.Check
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2._click_callback
      if L0_3 ~= nil then
        L0_3 = A0_2._click_callback
        L1_3 = A0_2._callback_self
        L2_3 = A0_2._team_data
        L3_3 = A1_2
        L0_3(L1_3, L2_3, L3_3)
      end
    end
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_edit_btn_release = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._avatar_datas = L1_2
  L1_2 = A0_2._team_data
  if L1_2 == nil then
    return
  end
  L1_2 = 0
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._team_data
    L6_2 = L5_2
    L5_2 = L5_2.GetMemberData
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = A0_2._avatar_datas
      L7_2 = L4_2 + 1
      L8_2 = G
      L8_2 = L8_2.AvatarUtils
      L8_2 = L8_2.get_avatar_data_by_member_data
      L9_2 = L5_2
      L8_2 = L8_2(L9_2)
      L6_2[L7_2] = L8_2
    end
  end
end
L0_1._refresh_avatar_datas = L2_1
return L0_1
