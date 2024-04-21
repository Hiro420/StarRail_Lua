local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.LightCone.LightConeDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeContainerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeContainerPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarLightConePanelTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/LightConeFigures/DecoLightCone/FrameLightConeEmpty01.png"
L2_1 = G
L2_1 = L2_1.TextExtensions
L3_1 = 20
L4_1 = 0.4
L5_1 = 3
L6_1 = "UIText_TitleType_Slash"
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._avatar_data = A3_2
  L4_2 = A0_2._avatar_data
  L5_2 = L4_2
  L4_2 = L4_2.GetEquipment
  L4_2 = L4_2(L5_2)
  A0_2._equip_data = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.fetch_ui3d
  L4_2 = L4_2(L5_2)
  A0_2._avatar_ui3d = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarDetailTabExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L5_1
  L4_2 = L4_2(L5_2)
  A0_2._tab_data = L4_2
end
L0_1.ctor = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.RightStickLeft
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_right_stick_left
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.RightStickRight
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_right_stick_right
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_in_control_press = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if 0.8 < A1_2 then
    L2_2 = A0_2._avatar_ui3d
    L2_2 = L2_2.lightcone_panel
    L3_2 = L2_2
    L2_2 = L2_2.swipe_lightcone
    L4_2 = L3_1
    L4_2 = A1_2 * L4_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_right_stick_left = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if 0.8 < A1_2 then
    L2_2 = A0_2._avatar_ui3d
    L2_2 = L2_2.lightcone_panel
    L3_2 = L2_2
    L2_2 = L2_2.swipe_lightcone
    L4_2 = -A1_2
    L5_2 = L3_1
    L4_2 = L4_2 * L5_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_right_stick_right = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = false
  return L2_2
end
L0_1._is_can_to_zoom = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._avatar_data = A1_2
  L2_2 = A0_2._avatar_data
  L3_2 = L2_2
  L2_2 = L2_2.GetEquipment
  L2_2 = L2_2(L3_2)
  A0_2._equip_data = L2_2
  L2_2 = A0_2._avatar_data
  if L2_2 ~= nil then
    L2_2 = A0_2._avatar_data
    L2_2 = L2_2.IsDisplayOnly
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._bind_reddot
      L2_2(L3_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._unbind_reddot
      L2_2(L3_2)
    end
  end
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
L0_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._state
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
    L1_2 = A0_2._avatar_ui3d
    if L1_2 then
      L1_2 = A0_2._avatar_ui3d
      L2_2 = L1_2
      L1_2 = L1_2.show_avatar_main_page_tab
      L3_2 = G
      L3_2 = L3_2.AvatarMainPageSubType
      L3_2 = L3_2.LightCone
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._avatar_ui3d
      L1_2 = L1_2.lightcone_panel
      L2_2 = L1_2
      L1_2 = L1_2.show_lightcone
      L3_2 = A0_2._avatar_data
      L4_2 = L3_2
      L3_2 = L3_2.GetEquipment
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._custom_refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.light_cone_detail_panel
  L1_2 = L1_2._binder
  L1_2 = L1_2.node_statistic_tab
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_zoom
  L4_2 = A0_2._on_btn_click_zoom
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._avatar_data
  if L1_2 ~= nil then
    L1_2 = A0_2._avatar_data
    L1_2 = L1_2.IsDisplayOnly
    if not L1_2 then
      L1_2 = A0_2._avatar_ui3d
      L1_2 = L1_2.lightcone_panel
      L2_2 = L1_2
      L1_2 = L1_2.set_empty_texture_path
      L3_2 = nil
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._avatar_ui3d
      L1_2 = L1_2.lightcone_panel
      L2_2 = L1_2
      L1_2 = L1_2.set_empty_texture_path
      L3_2 = L1_1
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._avatar_data
    L2_2 = L1_2
    L1_2 = L1_2.GetEquipment
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.light_cone_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L5_2 = A0_2._avatar_data
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.light_cone_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.enable_promotion_preview
    L4_2 = A0_2._avatar_data
    L4_2 = L4_2.IsDisplayOnly
    L4_2 = not L4_2 and L1_2 ~= nil
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_zoom
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2 ~= nil
    L2_2(L3_2, L4_2)
    if L1_2 == nil then
      L3_2 = A0_2
      L2_2 = A0_2._bind_btn_callback
      L4_2 = A0_2._binder
      L4_2 = L4_2.btn_empty
      L5_2 = A0_2._btn_replace_onclick
      L2_2(L3_2, L4_2, L5_2)
    end
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AvatarBaseTypeExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2._avatar_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.AvatarBaseType
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_avatar_type_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L6_1
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L2_2.BaseTypeText
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2._avatar_data
    L7_2 = L7_2.AvatarName
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2._avatar_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.AvatarBaseType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.AvatarBaseTypeExcelTable
    L5_2 = L4_2.GetData
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.BaseTypeIconSmall
    L7_2 = A0_2
    L6_2 = A0_2._async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_avatar_type
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsDisplayOnly
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.LightCone.LightConeReplacePage"
  L3_2 = A0_2._equip_data
  L4_2 = A0_2._avatar_data
  L5_2 = A0_2._avatar_ui3d
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._btn_replace_onclick = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.Swipe
  L4_2 = A0_2._swipe_callback
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SimpleTap
  L4_2 = A0_2._simple_tap_callback
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._bind_easy_touch_event = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._avatar_ui3d
    L2_2 = L2_2.lightcone_panel
    L3_2 = L2_2
    L2_2 = L2_2.swipe_lightcone
    L4_2 = A1_2.deltaPosition
    L4_2 = L4_2.x
    L4_2 = -L4_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._swipe_callback = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._avatar_ui3d
    L2_2 = L2_2.lightcone_panel
    L3_2 = L2_2
    L2_2 = L2_2.simple_tap_lightcone
    L4_2 = A0_2._on_simple_tap_lightcone
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._simple_tap_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsDisplayOnly
  if L1_2 then
    return
  end
  L1_2 = A0_2._equip_data
  if L1_2 ~= nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.LightCone.LightConeReplacePage"
  L3_2 = A0_2._equip_data
  L4_2 = A0_2._avatar_data
  L5_2 = A0_2._avatar_ui3d
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_simple_tap_lightcone = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._equip_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._avatar_ui3d
  L1_2 = L1_2.lightcone_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide_lightcone
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.LightCone.Zoom.LightConeZoomInPage"
  L3_2 = A0_2._equip_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_click_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_data
  if L1_2 then
    L1_2 = L2_1.SafeSetTextID
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tab_name_normal
    L3_2 = A0_2._tab_data
    L3_2 = L3_2.TabName
    L1_2(L2_2, L3_2)
    L1_2 = L2_1.SafeSetTextID
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tab_name_selected
    L3_2 = A0_2._tab_data
    L3_2 = L3_2.TabName
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_tab_normal
    L4_2 = A0_2._tab_data
    L4_2 = L4_2.IconPath
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_tab_selected
    L4_2 = A0_2._tab_data
    L4_2 = L4_2.IconPath
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._avatar_data
    L1_2 = L1_2.IsDisplayOnly
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._bind_reddot
      L1_2(L2_2)
    end
  end
end
L0_1._on_added = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "EquipmentTag"
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.go_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_reddot
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.unbind_reddot
  L3_2 = A0_2._binder
  L3_2 = L3_2.go_reddot
  L1_2(L2_2, L3_2)
end
L0_1._unbind_reddot = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_avatar_main_page_tab
    L3_2 = G
    L3_2 = L3_2.AvatarMainPageSubType
    L3_2 = L3_2.LightCone
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._avatar_ui3d
    L1_2 = L1_2.lightcone_panel
    L2_2 = L1_2
    L1_2 = L1_2.show_lightcone
    L3_2 = A0_2._avatar_data
    L4_2 = L3_2
    L3_2 = L3_2.GetEquipment
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_easy_touch_event
    L1_2(L2_2)
  end
end
L0_1._on_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L1_2 = L1_2.lightcone_panel
    L2_2 = L1_2
    L1_2 = L1_2.hide_lightcone
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._remove_easy_touch_handlers
    L1_2(L2_2)
  end
end
L0_1._on_unselect = L7_1
return L0_1
