local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueSelectBuffDescPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueSelectBuffDescPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueBonusSelectBuffPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._bonus_id = 0
  A0_2._callback_func = nil
  A0_2._index = nil
  A0_2._rogue_bonus_row = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_click
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_trigger_btn_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_desc_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg_bonus
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._rogue_buff_data = nil
  A0_2._callback_func = nil
end
L0_1._on_dispose = L1_1
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
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_click
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_click
      return L1_2
    end
  end
end
L0_1.get_navi_btn = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_click
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._bonus_id = A1_2
  A0_2._index = A3_2
  L4_2 = A0_2._bonus_id
  if L4_2 ~= nil then
    L4_2 = A0_2._bonus_id
    if L4_2 ~= 0 then
      goto lbl_14
    end
  end
  L4_2 = A0_2._binder
  L5_2 = L4_2
  L4_2 = L4_2.set_active
  L6_2 = false
  L4_2(L5_2, L6_2)
  do return end
  ::lbl_14::
  L4_2 = A0_2._binder
  L5_2 = L4_2
  L4_2 = L4_2.set_active
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RogueBonusExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._bonus_id
  L4_2 = L4_2(L5_2)
  A0_2._rogue_bonus_row = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_buff
  L4_2(L5_2)
  A0_2._callback_func = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_click
  L7_2 = L0_1.on_click
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tag
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._rogue_bonus_row
  L3_2 = L3_2.BonusTag
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = A0_2._rogue_bonus_row
  L4_2 = L4_2.BonusIcon
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._rogue_bonus_row
  L3_2 = L3_2.BonusTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = 1
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_desc
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_buff = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueSelectBuffDescPanel
    L8_2 = G
    L8_2 = L8_2.RogueSelectBuffDescPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._rogue_bonus_row
  if L5_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.setup_desc_text
    L7_2 = A0_2._rogue_bonus_row
    L7_2 = L7_2.BonusDesc
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.setup_btn_enable
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L3_2.CachedRectTransform
  L5_2(L6_2)
  L6_2 = A1_2
  L5_2 = A1_2.OnItemSizeChanged
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_desc_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.on_click
  L3_2 = A0_2._index
  L1_2(L2_2, L3_2)
end
L0_1._on_trigger_btn_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._callback_func
  if nil ~= L2_2 then
    L2_2 = A0_2._callback_func
    L3_2 = A1_2
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_click
  L4_2 = L4_2.gameObject
  L2_2(L3_2, L4_2)
end
L0_1.on_click = L1_1
return L0_1
