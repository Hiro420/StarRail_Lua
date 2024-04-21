local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Buff.FeverTimeSkillInfoItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FeverTimeSkillInfoItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.None = 0
L1_1.Buff1 = 1
L1_1.Buff2 = 2
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_show_detail = false
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_arrow
  L4_2 = A0_2._on_btn_arrow_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_under_line
  L4_2 = A0_2._on_btn_under_line_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tip
  L1_2.IsShowTipBySelected = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_tip
    L0_3.IsShowTipBySelected = true
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.mono_tip
      L0_3.IsShowTipBySelected = false
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_down_arrow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_up_arrow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_show_detail = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_down_arrow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_up_arrow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.clear_show_detail_state = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._btn_root_click_callback_obj = A1_2
  A0_2._btn_root_click_callback_func = A2_2
end
L0_1.reg_btn_root_click_call_back = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._cur_index = A1_2
  A0_2._list_View = A5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.canvas_group_under_line
  L6_2.blocksRaycasts = false
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.ActivityFeverTimeUnderlineExcelTable
  L6_2 = L6_2.GetData
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L7_2 = L6_2.ExtraEffectID
    if L7_2 then
      goto lbl_19
    end
  end
  L7_2 = 0
  ::lbl_19::
  A0_2._extra_effect_id = L7_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_bg_phase1
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L1_1.Buff1
  L9_2 = A4_2 == L9_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_bg_phase2
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L1_1.Buff2
  L9_2 = A4_2 == L9_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.btn_arrow
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = A0_2._extra_effect_id
  L9_2 = 0 < L9_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._extra_effect_id
  if L7_2 == 0 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_detail_panel
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = false
    L7_2(L8_2, L9_2)
  else
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_detail_panel
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = A0_2._is_show_detail
    L7_2(L8_2, L9_2)
  end
  L7_2 = G
  L7_2 = L7_2.BuffUtils
  L7_2 = L7_2.GetMazeBuffData
  L8_2 = A2_2
  L9_2 = 1
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.text_skill_name
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetTextID
  L10_2 = L7_2.BuffName
  L8_2(L9_2, L10_2)
  if L7_2 then
    L9_2 = A0_2
    L8_2 = A0_2._async_load_sprite_to
    L10_2 = A0_2._binder
    L10_2 = L10_2.image_skill_icon
    L11_2 = L7_2.BuffIcon
    L8_2(L9_2, L10_2, L11_2)
    if A3_2 then
      L8_2 = A0_2._binder
      L8_2 = L8_2.text_skill_desc
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetTextID
      L10_2 = L7_2.BuffSimpleDesc
      L11_2 = G
      L11_2 = L11_2.UITextUtils
      L11_2 = L11_2.GetSkillParams
      L12_2 = L7_2.ParamList
      L11_2, L12_2 = L11_2(L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2)
    else
      L8_2 = A0_2._binder
      L8_2 = L8_2.text_skill_desc
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetTextID
      L10_2 = L7_2.BuffDesc
      L11_2 = G
      L11_2 = L11_2.UITextUtils
      L11_2 = L11_2.GetSkillParams
      L12_2 = L7_2.ParamList
      L11_2, L12_2 = L11_2(L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._extra_effect_id
  if 0 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_under_line
    L2_2.blocksRaycasts = A1_2
  end
end
L0_1.setup_checked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_equip_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_equip_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._btn_root_click_callback_func
  if L1_2 then
    L1_2 = A0_2._btn_root_click_callback_func
    L2_2 = A0_2._btn_root_click_callback_obj
    L3_2 = A0_2._cur_index
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_root_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._extra_effect_id
  if 0 < L1_2 then
    L1_2 = A0_2._is_show_detail
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_down_arrow
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_up_arrow
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_detail_panel
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._is_show_detail
      L1_2 = not L1_2
      A0_2._is_show_detail = L1_2
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_detail_panel
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_down_arrow
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_up_arrow
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.GameCore
      L1_2 = L1_2.ExtraEffectExcelTable
      L1_2 = L1_2.GetData
      L2_2 = A0_2._extra_effect_id
      L1_2 = L1_2(L2_2)
      if L1_2 ~= nil then
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_detail_title
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = L1_2.ExtraEffectName
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_detail_desc
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = L1_2.ExtraEffectDesc
        L2_2(L3_2, L4_2)
      end
      L2_2 = A0_2._is_show_detail
      L2_2 = not L2_2
      A0_2._is_show_detail = L2_2
    end
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.UI
    L1_2 = L1_2.LayoutRebuilder
    L1_2 = L1_2.ForceRebuildLayoutImmediate
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L1_2(L2_2)
    L1_2 = A0_2._list_View
    L2_2 = L1_2
    L1_2 = L1_2.OnItemSizeChanged
    L3_2 = A0_2._cur_index
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_arrow_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_arrow_click
  L1_2(L2_2)
end
L0_1._on_btn_under_line_click = L2_1
return L0_1
