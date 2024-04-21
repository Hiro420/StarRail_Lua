local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDiceEventInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[1] = "SpriteOutput/UI/Rogue/DLC/Dice/DiceSufaceBg/PicRoguePlanetStateOnTriangleBlue.png"
L1_1[2] = "SpriteOutput/UI/Rogue/DLC/Dice/DiceSufaceBg/PicRoguePlanetStateOnTrianglePurple.png"
L1_1[3] = "SpriteOutput/UI/Rogue/DLC/Dice/DiceSufaceBg/PicRoguePlanetStateOnTriangleYellow.png"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_desc_node_active = true
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_result_icon
  L6_2 = A1_2.DiceSurfaceIcon
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2.IconNeedSetColor
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_result_icon
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetColor
    L5_2 = G
    L5_2 = L5_2.RogueNousUtils
    L5_2 = L5_2.get_color_by_surface_rarity
    L6_2 = A1_2.Rarity
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.bg_result_rarity
  L6_2 = A1_2.Rarity
  L6_2 = L1_1[L6_2]
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_result_rarity
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2.Rarity
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator_name_rarity
  L4_2 = L3_2
  L3_2 = L3_2.SetTrigger
  L5_2 = "Type"
  L6_2 = tostring
  L7_2 = A1_2.Rarity
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_result_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.DiceSurfaceName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.result_desc_underline_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2.ExtraEffect
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_result_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.DiceSurfaceDesc
  L6_2 = G
  L6_2 = L6_2.UITextUtils
  L6_2 = L6_2.GetSkillParams
  L7_2 = A1_2.DescParam
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  if A2_2 then
    L3_2 = "UIText_RogueDLC_DiceSurface_Active"
    if L3_2 then
      goto lbl_64
    end
  end
  L3_2 = "UIText_RogueDLC_DiceSurface_NotActive"
  ::lbl_64::
  L5_2 = A0_2
  L4_2 = A0_2._setup_tag_view
  L6_2 = true
  L7_2 = A2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.canvas_group_desc
  if A2_2 then
    L5_2 = 1.0
    if L5_2 then
      goto lbl_77
    end
  end
  L5_2 = 0.7
  ::lbl_77::
  L4_2.alpha = L5_2
  L5_2 = A0_2
  L4_2 = A0_2._set_active_desc_node
  L6_2 = A0_2._is_desc_node_active
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_custom_short_cut_hint_panel
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._init_ui_navigation
  L4_2(L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._reset_in_ctrl_actions
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_desc_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_short_cut_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._is_desc_node_active = A1_2
end
L0_1._set_active_desc_node = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tip_tag
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if not A1_2 then
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_active_tag
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_unactive_tag
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A2_2
  L4_2(L5_2, L6_2)
  if A2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_active_tag
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A3_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_unactive_tag
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_tag_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_active_desc_node
  L3_2 = A0_2._is_desc_node_active
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.AnimationAction
  L5_2 = A0_2._binder
  L5_2 = L5_2.animation_elation
  L6_2 = "DiceInfoPanel_FadeInElation"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.init_call_back
  L6_2 = A0_2
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.is_active
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.node_random_result_1
        L1_3 = L0_3
        L0_3 = L0_3.SafeSetActive
        L2_3 = A2_2
        L2_3 = L2_3 == 2
        L0_3(L1_3, L2_3)
        L0_3 = A0_2._binder
        L0_3 = L0_3.node_random_result_2
        L1_3 = L0_3
        L0_3 = L0_3.SafeSetActive
        L2_3 = A2_2
        L2_3 = L2_3 == 3
        L0_3(L1_3, L2_3)
        L0_3 = A0_2._binder
        L0_3 = L0_3.text_random_result_1
        L1_3 = L0_3
        L0_3 = L0_3.SafeSetTextID
        L2_3 = A1_2
        L0_3(L1_3, L2_3)
        L0_3 = A0_2._binder
        L0_3 = L0_3.text_random_result_2
        L1_3 = L0_3
        L0_3 = L0_3.SafeSetTextID
        L2_3 = A1_2
        L0_3(L1_3, L2_3)
      end
    end
  end
  L4_2(L5_2, L6_2, L7_2)
  return L3_2
end
L0_1.get_elation_random_animation_action = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_fold_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_in_ctrl_actions
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.result_desc_underline_panel
  L3_2 = L2_2
  L2_2 = L2_2.is_extra_info_available
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = "ActionGroup_BuffDetail_RT"
    L2_2(L3_2, L4_2)
  end
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_desc_outer_layout_group
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_desc_inner_layout_group
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect_result_desc
  L3_2 = L2_2
  L2_2 = L2_2.CanScroll
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = "ActionGroup_Scroll"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_short_cut_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = #L1_2
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = #L1_2
  if L2_2 == 0 then
    return
  end
  L2_2 = A0_2._short_cut_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.MazeShortCutHintPanel
    L5_2 = G
    L5_2 = L5_2.MazeShortCutHintPanelBinder
    L6_2 = L1_2
    L7_2 = nil
    L8_2 = false
    L9_2 = A0_2._binder
    L9_2 = L9_2.short_cut_panel_load_meta
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    A0_2._short_cut_panel = L2_2
    L2_2 = A0_2._short_cut_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_short_cut_panel
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._short_cut_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_short_cut_hint_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_custom_short_cut_hint_panel = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc_in_ctrl_move
  L1_2.ActionEnabled = true
end
L0_1._reset_in_ctrl_actions = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftTrigger
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.desc_in_ctrl_move
    L2_2.ActionEnabled = false
  end
end
L0_1._on_in_control_press = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftTrigger
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.desc_in_ctrl_move
    L2_2.ActionEnabled = true
  end
end
L0_1._on_in_control_released = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_fold_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
end
L0_1._on_in_control_input_switch = L2_1
return L0_1
