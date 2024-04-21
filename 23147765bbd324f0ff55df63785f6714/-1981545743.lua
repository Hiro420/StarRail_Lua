local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentUnlockConditionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentUnlockConditionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueTalentDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = "RogueUnlockConfig_RogueUnlockDetail_10401"
function L3_1(A0_2)
  local L1_2
  A0_2._talent_data_item = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.active_button
  L4_2 = A0_2._on_active_button_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  A0_2._talent_data_item = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_unlock_hint_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_active_button
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._active_callback = A1_2
  A0_2._active_callback_self = A2_2
end
L0_1.set_talent_active_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._activate_talent_callback = A1_2
  A0_2._activate_talent_callback_self = A2_2
end
L0_1.set_custom_activate_talent_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.active_red_dot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.bind_reddot = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._talent_data_item
  L3_2 = L2_2
  L2_2 = L2_2.GetIconPath
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.talent_img
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.talent_tag
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L6_2 = A1_2
  L5_2 = A1_2.GetEffectTag
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.talent_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L6_2 = A1_2
  L5_2 = A1_2.GetEffectTitle
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.talent_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L6_2 = A1_2
  L5_2 = A1_2.GetEffectDesc
  L5_2 = L5_2(L6_2)
  L6_2 = G
  L6_2 = L6_2.UITextUtils
  L6_2 = L6_2.GetSkillParams
  L8_2 = A1_2
  L7_2 = A1_2.GetEffectDescParamList
  L7_2, L8_2 = L7_2(L8_2)
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tag
  L3_2(L4_2)
end
L0_1._setup_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A1_2
  L2_2 = A1_2.IsLocked
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.GetUnlockDataList
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.locked_mark
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if L4_2 then
    L5_2 = L3_2.Count
    if 0 < L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.locked_hint_text
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L3_2[0]
      L8_2 = L7_2
      L7_2 = L7_2.GetUnlockDesc
      L7_2, L8_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2)
    else
      L5_2 = A0_2._binder
      L5_2 = L5_2.locked_hint_text
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L2_1
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1._setup_unlock_hint_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.active_button
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L5_2 = A1_2
  L4_2 = A1_2.IsUnlocked
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = A1_2
  L2_2 = A1_2.IsUnlocked
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A1_2
  L2_2 = A1_2.GetActiveCost
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.Length
    if L3_2 ~= 0 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L3_2 = L2_2[0]
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.InventoryModule
  L4_2 = L4_2.GetItemRow
  L5_2 = L3_2.ItemID
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.active_cost_icon
  L8_2 = L4_2.ItemIconPath
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L3_2.ItemNum
  L6_2 = A0_2._binder
  L6_2 = L6_2.active_cost_num
  L7_2 = L6_2
  L6_2 = L6_2.SetCustomizedText
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = A1_2
  L6_2 = A1_2.IsUnlocked
  L6_2 = L6_2(L7_2)
  L7_2 = L1_1
  L8_2 = L7_2
  L7_2 = L7_2.GetItemCountByConfigID
  L9_2 = L3_2.ItemID
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.active_button
  L9_2 = L6_2 or L9_2
  L9_2 = L6_2 and L5_2 <= L7_2
  L8_2.interactable = L9_2
  if not L6_2 or L5_2 <= L7_2 then
    L8_2 = A0_2._binder
    L8_2 = L8_2.active_cost_num
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.Color
    L9_2 = L9_2.black
    L8_2.color = L9_2
  else
    L8_2 = A0_2._binder
    L8_2 = L8_2.active_cost_num
    L9_2 = G
    L9_2 = L9_2.UIColorUtils
    L9_2 = L9_2.GetColor
    L10_2 = "#ea3030"
    L9_2 = L9_2(L10_2)
    L8_2.color = L9_2
  end
end
L0_1._setup_active_button = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._talent_data_item
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._activate_talent_callback
  if not L1_2 then
    L1_2 = A0_2._talent_data_item
    L2_2 = L1_2
    L1_2 = L1_2.ActiveTalent
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._activate_talent_callback
    L3_2 = A0_2._activate_talent_callback_self
    L4_2 = A0_2._talent_data_item
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._active_callback
  L3_2 = A0_2._active_callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_active_button_click = L3_1
return L0_1
