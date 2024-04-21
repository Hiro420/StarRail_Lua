local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.Widget.TeamDataInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamDataInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_edit
  L4_2 = A0_2._on_btn_edit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetTeamName
  L4_2 = A0_2._on_player_set_team_name
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._avatar_panel_list = L1_2
  A0_2._is_show_bg_index_mark = false
  L2_2 = A0_2
  L1_2 = A0_2._setup_incontrol_tips
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_incontrol_tips
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_incontrol_tips
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._team_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._setup_callback = A1_2
  A0_2._setup_callback_self = A2_2
end
L0_1.register_panel_setup_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_edit
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_edit_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_edit_key_map
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_edit_click
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.enable_edit_team_name = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_activate
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_activate_hint = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.IsInFakeDisableState = A1_2
end
L0_1.set_is_fake_disable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_arrow
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_arrow = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_show_bg_index_mark = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg_index_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_show_bg_index_mark
  L2_2(L3_2, L4_2)
end
L0_1.show_bg_index_mark = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_team_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_members
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._team_data
  L1_2 = L1_2.Name
  L2_2 = A0_2._team_data
  L2_2 = L2_2.MainLineIndex
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_team_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "Team_Default_Name_0%s"
    L7_2 = L2_2 + 1
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_team_name
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = A0_2._team_data
    L5_2 = L5_2.Name
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._is_show_bg_index_mark
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_team_index
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = "0"
    L6_2 = L2_2 + 1
    L5_2 = L5_2 .. L6_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._refresh_team_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.prefab_avatar_list
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._team_data
    L7_2 = L6_2
    L6_2 = L6_2.GetMemberData
    L8_2 = L5_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = A0_2
    L7_2 = A0_2._set_panel_active_by_index
    L9_2 = L5_2
    L10_2 = L6_2 ~= nil
    L7_2(L8_2, L9_2, L10_2)
    if L6_2 ~= nil then
      L8_2 = A0_2
      L7_2 = A0_2._get_avatar_panel
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L6_2.AvatarData
      L10_2 = L7_2
      L9_2 = L7_2.setup_view
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
      L9_2 = G
      L9_2 = L9_2.Utils
      L9_2 = L9_2.invoke_callback
      L10_2 = A0_2._setup_callback
      L11_2 = A0_2._setup_callback_self
      L12_2 = L7_2
      L13_2 = L8_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
end
L0_1._refresh_members = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_avatar_list
  L3_2 = L3_2[A1_2]
  L5_2 = L3_2
  L4_2 = L3_2.SafeSetActive
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1._set_panel_active_by_index = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._avatar_panel_list
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    return L2_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_avatar_list
  L3_2 = L3_2[A1_2]
  L5_2 = A0_2
  L4_2 = A0_2.instantiate_object
  L6_2 = L3_2.Prefab
  L7_2 = L3_2.transform
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.AvatarItemIconLitePanel
  L8_2 = G
  L8_2 = L8_2.AvatarItemIconLitePanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.set_is_show_support_mark
  L8_2 = true
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.bind
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.set_show_hp
  L8_2 = false
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.set_interactable
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._avatar_panel_list
  L6_2[A1_2] = L5_2
  return L5_2
end
L0_1._get_avatar_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_team_info
  L1_2(L2_2)
end
L0_1._on_player_set_team_name = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FeatureSwitchModule
  L2_2 = L1_2
  L1_2 = L1_2.IsFeatureClosed
  L3_2 = CS
  L3_2 = L3_2.KJMOMPDBPKH
  L3_2 = L3_2.JFFKKAIPHIJ
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "RetCodeError_9"
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Team.CreateTeamNameDialog"
    L3_2 = A0_2._team_data
    L3_2 = L3_2.MainLineIndex
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_edit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._team_data
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_root = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_tip_edit
  L2_2.IsShowTipBySelected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_tip_apply
  L2_2.IsShowTipBySelected = A1_2
end
L0_1._setup_incontrol_tips = L1_1
return L0_1
