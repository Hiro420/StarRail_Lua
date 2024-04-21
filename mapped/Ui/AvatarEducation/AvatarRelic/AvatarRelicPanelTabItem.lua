local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarRelic.AvatarRelicPanelTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarRelicPanelTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_TitleType_Slash"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._avatar_data = A3_2
  L5_2 = A0_2
  L4_2 = A0_2.fetch_ui3d
  L4_2 = L4_2(L5_2)
  A0_2._avatar_ui3d = L4_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarDressRelicFinish
  L4_2 = A0_2._on_dress_or_takeoff_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarTakeOffRelicFinish
  L4_2 = A0_2._on_dress_or_takeoff_end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.relic_container
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._avatar_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_reddot
  L2_2(L3_2)
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L3_2 = L2_2
    L2_2 = L2_2.is_bound
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._custom_refresh
      L2_2(L3_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2.set_async_callback
    L4_2 = A0_2
    L5_2 = A0_2._custom_refresh
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._state
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L1_2 = A0_2._is_active
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._refresh
      L3_2 = false
      L4_2 = false
      L5_2 = false
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L0_1._custom_refresh = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2._state
  L5_2 = A0_2.SelectState
  L5_2 = L5_2.Selected
  if L4_2 == L5_2 then
    L4_2 = A0_2._is_active
    if L4_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L5_2 = A0_2
  L4_2 = A0_2._set_page_info
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.relic_container
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._avatar_data
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.relic_set_detail
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._avatar_data
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_uninstall
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._avatar_data
  L6_2 = L6_2.IsDisplayOnly
  L6_2 = G
  L6_2 = L6_2.RelicUtils
  L6_2 = L6_2.is_dress_empty
  L7_2 = A0_2._avatar_data
  L6_2 = L6_2(L7_2)
  L6_2 = not L6_2 and L6_2
  L4_2(L5_2, L6_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.Row
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarBaseTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.AvatarBaseType
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.BaseTypeIconSmall
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_avatar_type
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L2_2.BaseTypeText
  L5_2 = A0_2._binder
  L5_2 = L5_2.sub_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L1_1
  L8_2 = G
  L8_2 = L8_2.TextmapStatic
  L8_2 = L8_2.GetText
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  L9_2 = A0_2._avatar_data
  L9_2 = L9_2.AvatarName
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1._set_page_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_avatar_main_page_tab
    L3_2 = G
    L3_2 = L3_2.AvatarMainPageSubType
    L3_2 = L3_2.Relic
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._is_active = true
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L3_2 = true
  L4_2 = false
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._is_active = A1_2
  if not A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L4_2 = true
  L5_2 = true
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_owner_active_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._avatar_data
  if L1_2 ~= nil then
    L1_2 = A0_2._avatar_data
    L1_2 = L1_2.IsTrialPlayer
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "AvatarRelic"
      L4_2 = A0_2._avatar_data
      L4_2 = L4_2.ID
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.go_reddot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  else
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.unbind_reddot
    L3_2 = A0_2._binder
    L3_2 = L3_2.go_reddot
    L1_2(L2_2, L3_2)
  end
end
L0_1._bind_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_active
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L3_2 = true
  L4_2 = true
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_dress_or_takeoff_end = L2_1
return L0_1
