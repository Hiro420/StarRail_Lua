local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeInfoItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityFeverTimeInfoItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_show_detail = false
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_arrow
  L4_2 = A0_2._on_btn_arrow_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_arrow_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.text_id
  A0_2._text_id = L2_2
  L2_2 = A1_2.extra_effect_id
  if not L2_2 then
    L2_2 = 0
  end
  A0_2._extra_effect_id = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._text_id
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_arrow
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._extra_effect_id
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_click_area
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._extra_effect_id
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_down_arrow
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_up_arrow
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_arrow
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_btn_arrow_active = L1_1
function L1_1(A0_2)
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
  end
end
L0_1._on_btn_arrow_click = L1_1
return L0_1
