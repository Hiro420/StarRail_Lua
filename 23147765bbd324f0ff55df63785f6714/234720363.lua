local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicStatusPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicStatusPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 4
L2_1 = G
L2_1 = L2_1.RelicUtils
L2_1 = L2_1.get_bonus_level
L2_1 = L2_1()
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._sub_affix_status = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._relic = A1_2
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.get_main_affix_property
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.RelicUtils
  L4_2 = L4_2.get_sub_affix_properties
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A0_2._sub_affix_status = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.main_statu_detail_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_sub_status
  L6_2 = A0_2._sub_affix_status
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.show_sub_affix_bonus
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = false
  end
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._relic
  if L2_2 == nil then
    return
  end
  A0_2._show_sub_affix_bonus_record = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_sub_affix_bonus
  L4_2 = A0_2._sub_affix_status
  L2_2(L3_2, L4_2)
end
L0_1.show_sub_affix_bonus = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_statu_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_unequipped_view
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.sub_status_panel
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.safe_set_active
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.sub_status_panel
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_unequipped_view
    L5_2(L6_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.sub_status_panel
  L1_2 = L1_2[4]
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.setup_unequipped_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._relic
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_main_status
  L4_2 = A0_2._relic
  L4_2 = L4_2.Level
  L4_2 = L4_2 + A1_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = A0_2._relic
  L3_2 = L3_2.SubAffixPropertyTypeArray
  L3_2 = L3_2.Length
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._relic
  L3_2 = L3_2.Level
  L3_2 = L3_2 + A1_2
  L4_2 = L2_1
  L3_2 = L3_2 // L4_2
  L4_2 = A0_2._relic
  L4_2 = L4_2.Level
  L5_2 = L2_1
  L4_2 = L4_2 // L5_2
  L3_2 = L3_2 - L4_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_hint
  L6_2 = L3_2
  L7_2 = L2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.refresh = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.RelicUtils
  L2_2 = L2_2.get_main_affix_property
  L3_2 = A0_2._relic
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.main_statu_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_main_status = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_status_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 ~= 0
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_hint_text
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_statu_add_hint
  L6_2 = "UIText_AvatarRelic_PropertyAdd"
  L7_2 = math
  L7_2 = L7_2.min
  L8_2 = A1_2
  L9_2 = A2_2
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_hint_text
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_statu_upgrade_hint
  L6_2 = "UIText_AvatarRelic_PropertyUpgrade"
  L7_2 = A1_2 - A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_hint = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A1_2
  L4_2 = A1_2.SafeSetActive
  L6_2 = 0 < A3_2
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.SafeSetTextID
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._set_hint_text = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    if A1_2 ~= nil then
      L6_2 = A1_2[L5_2]
      if L6_2 ~= nil then
        L6_2 = A0_2._binder
        L6_2 = L6_2.sub_status_panel
        L6_2 = L6_2[L5_2]
        L7_2 = L6_2
        L6_2 = L6_2.safe_set_active
        L8_2 = true
        L6_2(L7_2, L8_2)
        L6_2 = A0_2._binder
        L6_2 = L6_2.sub_status_panel
        L6_2 = L6_2[L5_2]
        L7_2 = L6_2
        L6_2 = L6_2.setup_view
        L8_2 = A1_2[L5_2]
        L6_2(L7_2, L8_2)
    end
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.sub_status_panel
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.safe_set_active
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._setup_sub_status = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = false
  L3_2 = A0_2._show_sub_affix_bonus_record
  if L3_2 then
    L3_2 = 1
    L4_2 = 4
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      if A1_2 ~= nil then
        L7_2 = A1_2[L6_2]
        if L7_2 ~= nil then
          L7_2 = A1_2[L6_2]
          L7_2 = L7_2.BonusCnt
          if 0 < L7_2 then
            L2_2 = true
            break
          end
        end
      end
    end
  end
  L3_2 = 1
  L4_2 = 4
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    if A1_2 ~= nil then
      L7_2 = A1_2[L6_2]
      if L7_2 ~= nil then
        L7_2 = A0_2._binder
        L7_2 = L7_2.sub_status_panel
        L7_2 = L7_2[L6_2]
        L8_2 = L7_2
        L7_2 = L7_2.show_level_up_mark
        L9_2 = L2_2
        L10_2 = A1_2[L6_2]
        L10_2 = L10_2.BonusCnt
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end
L0_1._setup_sub_affix_bonus = L3_1
return L0_1
