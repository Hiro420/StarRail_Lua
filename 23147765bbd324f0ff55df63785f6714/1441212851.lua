local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMiracleItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_click
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_click
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_click
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_in_control_move_enabled
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_click
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_in_control_move_enabled
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_click
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_callback
    L2_3 = A0_2._select_callback_self
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_click
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_in_control_move_enabled
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.GetRogueMiracleDisplayByMiracleRow
  L3_2 = A1_2.RogueMiracleRow
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = A1_2.TotalCount
  L3_2 = 0 < L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.miracle_name_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_2.MiracleName
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.miracle_detail_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_2.MiracleDesc
  L7_2 = G
  L7_2 = L7_2.UITextUtils
  L7_2 = L7_2.GetSkillParams
  L8_2 = L2_2.DescParamList
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = L2_2.MiracleTag
  L4_2 = L2_2.MiracleTag
  L5_2 = L4_2
  L4_2 = L4_2.IsEmpty
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 ~= nil and L4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_miracle_tag
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if L4_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.miracle_tag_title
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L2_2.MiracleTag
    L5_2(L6_2, L7_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.miracle_img
  L8_2 = L2_2.MiracleFigureIconPath
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_img_color
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = A1_2.TotalCount
  L5_2 = 0 < L5_2
  L7_2 = A0_2
  L6_2 = A0_2.get_show_effect
  L8_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_num
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L5_2 or L9_2
  L9_2 = L5_2 or L6_2 ~= nil
  L7_2(L8_2, L9_2)
  if L5_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.txt_title_num
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetTextID
    L9_2 = "UIText_Rogue_Miracle_UseCount"
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_num
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetText
    L9_2 = A1_2.TotalCount
    L10_2 = A1_2.UseCount
    L9_2 = L9_2 - L10_2
    L7_2(L8_2, L9_2)
  end
  if L6_2 ~= nil then
    L7_2 = A0_2._binder
    L7_2 = L7_2.txt_title_num
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetTextID
    L9_2 = L6_2.CountDesc
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_num
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetText
    L9_2 = L6_2.Count
    L7_2(L8_2, L9_2)
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_endless_mark
  L8_2 = L7_2
  L7_2 = L7_2.setup_miracle_view
  L9_2 = L2_2.MiracleDisplayID
  L7_2(L8_2, L9_2)
end
L0_1.setup_detail_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2
  L2_2 = A1_2.GetEffectCountList
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L7_2 = L7_2.IsShow
    if L7_2 then
      L7_2 = L2_2[L6_2]
      return L7_2
    end
  end
end
L0_1.get_show_effect = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.GetRogueMiracleDisplayByMiracleID
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.miracle_name_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.MiracleName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.miracle_detail_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.MiracleDesc
  L6_2 = G
  L6_2 = L6_2.UITextUtils
  L6_2 = L6_2.GetSkillParams
  L7_2 = L2_2.DescParamList
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L2_2.MiracleTag
  L3_2 = L2_2.MiracleTag
  L4_2 = L3_2
  L3_2 = L3_2.IsEmpty
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 ~= nil and L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_miracle_tag
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.miracle_tag_title
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_2.MiracleTag
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.miracle_img
  L7_2 = L2_2.MiracleFigureIconPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_endless_mark
  L5_2 = L4_2
  L4_2 = L4_2.setup_miracle_view
  L6_2 = L2_2.MiracleDisplayID
  L4_2(L5_2, L6_2)
end
L0_1.setup_display_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_tran_desc
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_desc
  L2_2 = L1_2
  L1_2 = L1_2.AutoSetPosition
  L1_2(L2_2)
end
L0_1.rebuild_desc_layout = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._callback_listener = A1_2
  A0_2._click_callback = A2_2
  A0_2._index = A3_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._select_callback_self = A1_2
  A0_2._select_callback = A2_2
end
L0_1.register_select_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_click
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_interactable = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_desc
  return L1_2
end
L0_1.get_desc_scroll_rect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_click
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._callback_listener
  if L1_2 ~= nil then
    L1_2 = A0_2._click_callback
    if L1_2 ~= nil then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L1_2 = A0_2._click_callback
  L2_2 = A0_2._callback_listener
  L3_2 = A0_2._index
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.miracle_img
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#6F6F6F79"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.miracle_img
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#FFFFFFFF"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
end
L0_1._setup_img_color = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.layout_desc
  L2_2.enabled = A1_2
end
L0_1.enable_story_desc_layout = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_in_control_move
    L2_2.ActionEnabled = A1_2
  end
end
L0_1.set_in_control_move_enabled = L1_1
return L0_1
