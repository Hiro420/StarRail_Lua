local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.Buff.FantasticStoryTrialAvatarIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.Buff.FantasticStoryAvatarIconListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryAvatarIconListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._avatar_icon_panels = L1_2
  L1_2 = {}
  A0_2._avatar_btns = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.FantasticStoryActivityUtils
  L2_2 = L2_2.TryGetTrialAvatarsByParagraphID
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  A0_2._trial_avatar_table = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_avatar_icon_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_navigation
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 1
  L2_2 = A0_2._trial_avatar_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.instantiate_object
    L7_2 = A0_2._binder
    L7_2 = L7_2.prefab_load_meta_avatar
    L7_2 = L7_2.Prefab
    L8_2 = A0_2._binder
    L8_2 = L8_2.prefab_load_meta_avatar
    L8_2 = L8_2.transform
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.FantasticStoryTrialAvatarIconPanel
    L9_2 = G
    L9_2 = L9_2.FantasticStoryTrialAvatarIconPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_icon
    L9_2 = A0_2._trial_avatar_table
    L9_2 = L9_2[L4_2]
    L9_2 = L9_2.Row
    L9_2 = L9_2.AvatarSideIconPath
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_trial_mark
    L9_2 = true
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_callback
    L9_2 = A0_2
    L10_2 = A0_2._on_avatar_icon_click
    L11_2 = L4_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._avatar_icon_panels
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._avatar_btns
    L9_2 = L6_2._binder
    L9_2 = L9_2.btn_root
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_avatar_icon_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.Avatar.AvatarMainPage"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = nil
  L6_2 = 1
  L7_2 = nil
  L8_2 = A0_2._trial_avatar_table
  L8_2 = L8_2[A1_2]
  L9_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_avatar_data_list
  L5_2 = A0_2._trial_avatar_table
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.async_show
  L3_2(L4_2)
end
L0_1._on_avatar_icon_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.setup_navigation
  L2_2 = A0_2._avatar_btns
  L3_2 = NavigationType
  L3_2 = L3_2.Horizontal
  L1_2(L2_2, L3_2)
end
L0_1._setup_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tip
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  L1_2.IsShowTip = L2_2
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tip
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  L1_2.IsShowTip = L2_2
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tip
  L1_2.IsShowTip = false
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tip
  L1_2.IsShowTip = true
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_tip
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L3_2 = A1_2 == L3_2
  L2_2.IsShowTip = L3_2
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active_in_hierarchy
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.is_in_special_zoom
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = CS
        L2_2 = L2_2.InControl
        L2_2 = L2_2.InputControlType
        L2_2 = L2_2.RightStickButton
        L2_2 = #L2_2
        if A1_2 == L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2.get_first_selected_object
          L2_2 = L2_2(L3_2)
          L4_2 = A0_2
          L3_2 = A0_2.set_special_zoom_navigation_target
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._on_in_control_click = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._avatar_btns
  L1_2 = L1_2[1]
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
