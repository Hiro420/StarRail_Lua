local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarSkillDetailInfoDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarSkillDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarSkillDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.AvatarSkillListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.AvatarSkillListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarSkillListDialogPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarMainSkillRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarMainSkillRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarSubSkillRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarSubSkillRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarExtraDescListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarExtraDescListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkillDetailInfoDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.None = 0
L1_1.MainSkillRow = 1
L1_1.SubSkillRow = 2
L1_1.ExtraDesc = 3
L2_1 = "Skill03"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AvatarSkillDetailInfoDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._avatar_data = A1_2
  A0_2._selected_id = A2_2
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2)
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
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_first_skill_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._skill_btn_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_appointed_selected_object
  L3_2 = A0_2._selected_id
  L1_2 = L1_2(L2_2, L3_2)
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    if L2_2 ~= nil then
      L3_2 = L2_2.gameObject
      return L3_2
    end
  end
end
L0_1.get_first_skill_object = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._close_callback_self = A2_2
end
L0_1.register_close_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarSkillListDialogPanel
  L4_2 = G
  L4_2 = L4_2.AvatarSkillListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._skill_btn_list_panel = L1_2
  L1_2 = A0_2._skill_btn_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_btn_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_skill_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._skill_btn_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._on_skill_icon_click
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_skill_list_by_id
  L3_2 = A0_2._selected_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._skill_data = L1_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_skill_extra_desc_table
  L2_2 = A0_2._avatar_data
  L3_2 = A0_2._skill_data
  L3_2 = L3_2[1]
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._extra_desc_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_tag
  L1_2(L2_2)
  L1_2 = A0_2._skill_btn_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.clear_button_status
  L1_2(L2_2)
  L1_2 = A0_2._skill_btn_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_icon_checked
  L3_2 = A0_2._selected_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._extra_desc_table
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = 1
    if L1_2 then
      goto lbl_30
    end
  end
  L1_2 = 0
  ::lbl_30::
  L2_2 = A0_2._skill_data
  L2_2 = #L2_2
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_skill
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_skill
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_skill_type
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._skill_row
  L3_2 = L3_2.SkillTypeDesc
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigManager
  L1_2 = L1_2.GameCoreUIConfig
  L1_2 = L1_2.SkillTypeColor
  L2_2 = L1_2
  L1_2 = L1_2.TryGetValue
  L3_2 = A0_2._skill_row
  L3_2 = L3_2.SkillTypeDesc
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_skill_type_bg
    L4_2.color = L3_2
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = A0_2._skill_row
    L4_2 = L4_2.SkillTypeDesc
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "GameCoreUISetting.json\228\184\173\230\178\161\230\156\137\233\133\141\231\189\174\230\138\128\232\131\189\231\177\187\229\158\139%s\231\154\132\233\162\156\232\137\178"
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.refresh_tag = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L1_1.None
  if A2_2 == 0 then
    L3_2 = L1_1.MainSkillRow
  else
    L4_2 = A0_2._skill_data
    L4_2 = #L4_2
    if A2_2 == L4_2 then
      L3_2 = L1_1.ExtraDesc
    else
      L3_2 = L1_1.SubSkillRow
    end
  end
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L6_2 = L1_1.MainSkillRow
    if L3_2 == L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.AvatarMainSkillRowPanel
      L9_2 = G
      L9_2 = L9_2.AvatarMainSkillRowPanelBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    else
      L6_2 = L1_1.SubSkillRow
      if L3_2 == L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2.create_panel
        L8_2 = G
        L8_2 = L8_2.AvatarSubSkillRowPanel
        L9_2 = G
        L9_2 = L9_2.AvatarSubSkillRowPanelBinder
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L5_2 = L6_2
      else
        L7_2 = A0_2
        L6_2 = A0_2.create_panel
        L8_2 = G
        L8_2 = L8_2.AvatarExtraDescListPanel
        L9_2 = G
        L9_2 = L9_2.AvatarExtraDescListPanelBinder
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L5_2 = L6_2
      end
    end
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L6_2 = L1_1.ExtraDesc
  if L3_2 == L6_2 then
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._skill_data
    L8_2 = L8_2[1]
    L9_2 = A0_2._extra_desc_table
    L6_2(L7_2, L8_2, L9_2)
  else
    L6_2 = A0_2._skill_data
    L7_2 = A2_2 + 1
    L6_2 = L6_2[L7_2]
    L8_2 = L5_2
    L7_2 = L5_2.setup_view
    L9_2 = L6_2
    L10_2 = A0_2._avatar_data
    L7_2(L8_2, L9_2, L10_2)
  end
  return L4_2
end
L0_1._on_skill_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._selected_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_skill_icon_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.SkillTreeData
  L3_2 = L2_2
  L2_2 = L2_2.GetSkillPointLevel
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarSkillExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._skill_row = L3_2
  L4_2 = L3_2.AttackType
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.Row
  L5_2 = L5_2.SkillList
  L6_2 = {}
  L7_2 = 0
  L8_2 = L5_2.Length
  L8_2 = L8_2 - 1
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = A0_2._avatar_data
    L11_2 = L11_2.SkillTreeData
    L12_2 = L11_2
    L11_2 = L11_2.GetSkillPointLevel
    L13_2 = L5_2[L10_2]
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.GameCore
    L12_2 = L12_2.AvatarSkillExcelTable
    L12_2 = L12_2.GetData
    L13_2 = L5_2[L10_2]
    L14_2 = L11_2
    L12_2 = L12_2(L13_2, L14_2)
    L13_2 = L12_2.AttackType
    if L13_2 == L4_2 then
      L13_2 = L12_2.HideInUI
      if not L13_2 then
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L6_2
        L15_2 = L12_2
        L13_2(L14_2, L15_2)
      end
    end
  end
  return L6_2
end
L0_1._get_skill_list_by_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._close_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._close_callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._close_callback
      L2_2 = A0_2._close_callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIShowSkillDetail
  L3_2 = A0_2._selected_id
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L3_1
return L0_1
