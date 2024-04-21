local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaInvitation.GachaInvitationDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaInvitation.GachaInvitationAvatarItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaInvitation.GachaInvitationAvatarItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaInvitation.GachaInvitationConfirmDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaInvitationDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.GachaModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.GachaInvitationDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_can_interactive = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._btn_list
  if L1_2 then
    L1_2 = A0_2._btn_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._btn_list
      L1_2 = L1_2[1]
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._on_btn_gamepad_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._gacha_type = A1_2
  A0_2._ceiling_max_num = 0
  A0_2._ceiling_num = 0
  A0_2._invitation_enable = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GachaCeilingConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._gacha_type
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.CeilingNum
    A0_2._ceiling_max_num = L3_2
    L3_2 = L2_2.CeilingItemList
    A0_2._ceiling_item_list = L3_2
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetGachaCeilingData
  L5_2 = A0_2._gacha_type
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L3_2.CeilingNum
    A0_2._ceiling_num = L4_2
  end
  L4_2 = A0_2._ceiling_num
  if L4_2 then
    L4_2 = A0_2._ceiling_max_num
    if L4_2 then
      L4_2 = A0_2._ceiling_num
      L5_2 = A0_2._ceiling_max_num
      if L4_2 >= L5_2 then
        A0_2._invitation_enable = true
      end
    end
  end
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._prev_selected_panel
  if L2_2 then
    L2_2 = A0_2._prev_selected_panel
    L3_2 = L2_2
    L2_2 = L2_2.on_unselect
    L2_2(L3_2)
  end
  L3_2 = A1_2
  L2_2 = A1_2.on_select
  L2_2(L3_2)
  L2_2 = A1_2.avatar_id
  A0_2._selected_avatar_id = L2_2
  A0_2._prev_selected_panel = A1_2
  L2_2 = A0_2._invitation_enable
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.recieve_root
    L2_2 = L2_2.activeSelf
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.recieve_root
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.in_progress_root
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.btn_detail
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2._on_avatar_select
    L2_2(L3_2)
  end
end
L0_1.on_sub_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._ceiling_num
  L2_2 = A0_2._ceiling_max_num
  if L1_2 >= L2_2 then
    A0_2._invitation_enable = true
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_item_list
  L1_2(L2_2)
  L1_2 = A0_2._invitation_enable
  if L1_2 then
    L1_2 = pairs
    L2_2 = A0_2._item_panels
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L7_2 = L5_2
      L6_2 = L5_2.refresh
      L6_2(L7_2)
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2._set_progress_num
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._init_ui_navigation
      L1_2(L2_2)
    else
      L1_2 = A0_2._item_panels
      L1_2 = L1_2[1]
      L2_2 = L1_2
      L1_2 = L1_2.trigger_click
      L1_2(L2_2)
    end
  end
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ExchangeGachaCeiling
  L4_2 = A0_2._on_exchange_gacha_ceiling
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._ceiling_item_list
  if L1_2 == nil then
    return
  end
  L1_2 = {}
  A0_2._item_panels = L1_2
  L1_2 = {}
  A0_2._btn_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_list_root
  L1_2 = L1_2.transform
  L1_2 = L1_2.childCount
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = A0_2._ceiling_item_list
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = L1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._ceiling_item_list
    L7_2 = L7_2.Length
    if L6_2 >= L7_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.avatar_list_root
      L7_2 = L7_2.transform
      L8_2 = L7_2
      L7_2 = L7_2.GetChild
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
    else
      L7_2 = nil
      if L6_2 < L1_2 then
        L8_2 = A0_2._binder
        L8_2 = L8_2.avatar_list_root
        L9_2 = L8_2
        L8_2 = L8_2.GetChild
        L10_2 = L6_2
        L8_2 = L8_2(L9_2, L10_2)
        L7_2 = L8_2
      else
        L9_2 = A0_2
        L8_2 = A0_2.instantiate_object
        L10_2 = A0_2._binder
        L10_2 = L10_2.prefab_avatar_item
        L10_2 = L10_2.Prefab
        L11_2 = A0_2._binder
        L11_2 = L11_2.prefab_avatar_item
        L11_2 = L11_2.transform
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        L7_2 = L8_2
      end
      L8_2 = A0_2._ceiling_item_list
      L8_2 = L8_2[L6_2]
      L10_2 = A0_2
      L9_2 = A0_2.create_panel
      L11_2 = G
      L11_2 = L11_2.GachaInvitationAvatarItemPanel
      L12_2 = G
      L12_2 = L12_2.GachaInvitationAvatarItemPanelBinder
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L11_2 = L9_2
      L10_2 = L9_2.bind
      L12_2 = L7_2
      L10_2(L11_2, L12_2)
      L11_2 = L9_2
      L10_2 = L9_2.setup_view
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
      L11_2 = L9_2
      L10_2 = L9_2.set_blank
      L12_2 = L6_2 + 1
      L12_2 = L12_2 % 2
      L12_2 = L12_2 == 0
      L10_2(L11_2, L12_2)
      L11_2 = L9_2
      L10_2 = L9_2.set_btn_callback
      L12_2 = A0_2
      L13_2 = A0_2.on_sub_btn_click
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = L9_2._binder
      L10_2 = L10_2.btn_root
      L11_2 = L10_2
      L10_2 = L10_2.ClearAnimationState
      L10_2(L11_2)
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = A0_2._item_panels
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = A0_2._btn_list
      L12_2 = L9_2._binder
      L12_2 = L12_2.btn_root
      L10_2(L11_2, L12_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.setup_navigation
  L5_2 = A0_2._btn_list
  L6_2 = NavigationType
  L6_2 = L6_2.Horizontal
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._set_item_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._selected_avatar_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._selected_avatar_id
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_avatar_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_2.ItemName
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.CeilingCharacterInfoExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._selected_avatar_id
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_avatar_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.CeilingDesc
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.avatar_story
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.DamageTypeExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L2_2.DamageType
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.DamageTypeIconPath
  L6_2 = A0_2
  L5_2 = A0_2.async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_avatar_damage_type
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._on_avatar_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_invitation
  L4_2 = A0_2._on_invitation
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad
  L4_2 = A0_2._on_btn_gamepad_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_can_interactive = true
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.recieve_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.in_progress_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._invitation_enable
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bottom_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._invitation_enable
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._invitation_enable
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._set_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.current_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._ceiling_num
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.total_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._ceiling_max_num
  L1_2(L2_2, L3_2)
end
L0_1._set_progress_num = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetGachaCeilingData
  L3_2 = A0_2._gacha_type
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = nil
  if L1_2 then
    L2_2 = L1_2.CeilingAvatars
  end
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._selected_avatar_id
    L8_2 = L2_2[L6_2]
    L8_2 = L8_2.AvatarId
    if L7_2 == L8_2 then
      L7_2 = L2_2[L6_2]
      L7_2 = L7_2.RepeatedCnt
      A0_2._selected_repeated_num = L7_2
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._have_selected_avatar = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._have_selected_avatar
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Gacha.GachaInvitation.GachaInvitationConfirmDialog"
    L3_2 = A0_2
    L4_2 = A0_2._on_invitation_confirm
    L5_2 = A0_2._selected_repeated_num
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Gacha.GachaInvitation.GachaInvitationConfirmDialog"
    L3_2 = A0_2
    L4_2 = A0_2._on_invitation_confirm
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_invitation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.ExchangeGachaCeiling
  L3_2 = A0_2._gacha_type
  L4_2 = A0_2._selected_avatar_id
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_invitation_confirm = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Gacha.GachaObtainDialog"
  L4_2 = A1_2
  L5_2 = nil
  L6_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_exit_callback
  L5_2 = A0_2._obtain_dialog_exit_callback
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_exchange_gacha_ceiling = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Gacha.GachaDetail.GachaAvatarDetailPage"
  L3_2 = A0_2._selected_avatar_id
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_detail = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetGachaCeiling
  L3_2 = A0_2._gacha_type
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._obtain_dialog_exit_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_can_interactive
  if L1_2 then
    L1_2 = A0_2._prev_selected_panel
    if L1_2 then
      L1_2 = A0_2._prev_selected_panel
      L2_2 = L1_2
      L1_2 = L1_2.on_unselect
      L1_2(L2_2)
    end
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_exit = L2_1
return L0_1
