local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TutorialSupportModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.ClockParkAttributeType
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ClockParkCardTipsTypeEnum
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.ClockParkCardRarity
L5_1 = G
L5_1 = L5_1.ActivityClockParkUtils
L5_1 = L5_1.get_attribute_change_from_effect_result
L6_1 = "GameCardChangeAni"
L7_1 = "GamePlayPageEventItemMain_FadeIn"
L8_1 = "GamePlayPageEventItemMain_FadeOut"
L9_1 = "ActionGroupTextmapID_ActionGroup_Activity_ClockPark_In"
L10_1 = "ActionGroupTextmapID_ActionGroup_Activity_ClockPark_Out"
L11_1 = G
L11_1 = L11_1.Class
L12_1 = "ActivityClockParkGamePlayCardItemPanel"
L13_1 = G
L13_1 = L13_1.BasePanel
L11_1 = L11_1(L12_1, L13_1)
function L12_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._slot_table = L1_2
  A0_2._is_show_gamepad_action = false
end
L11_1.ctor = L12_1
function L12_1(A0_2)
  local L1_2
  A0_2._card_item = nil
  A0_2._index = nil
  A0_2._click_callback_func = nil
  A0_2._click_callback_self = nil
end
L11_1._on_dispose = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.EventTriggerListener
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_event_trigger_begin_drag
    L0_3(L1_3)
  end
  L1_2.OnBeginDragTrigger = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_event_trigger_end_drag
    L0_3(L1_3)
  end
  L1_2.OnEndDragTrigger = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.show_slot_navi_hint
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L11_1._on_load = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  A0_2._card_item = A1_2
  A0_2._index = A3_2
  A0_2._click_callback_func = A2_2
  A0_2._click_callback_self = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._setup_card_img
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_card_rarity
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_card_desc
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_effect
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_card_tips
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_slot
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_tutorial
  L5_2(L6_2)
  L5_2 = A0_2._card_item
  L5_2 = A0_2._card_item
  L6_2 = L5_2
  L5_2 = L5_2.HasAnyDice
  L5_2 = L5_2 ~= nil and L5_2
  A0_2._has_dice = L5_2
end
L11_1.setup_view = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A2_2 == nil then
    L3_2 = A0_2._slot_table
    A2_2 = L3_2[1]
  end
  L3_2 = pairs
  L4_2 = A0_2._slot_table
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.panel_slot_list
    L9_2 = L8_2
    L8_2 = L8_2.get_panel_by_index
    L10_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L10_2 = L8_2
      L9_2 = L8_2.set_show_highlight
      L11_2 = A1_2 or L11_2
      L11_2 = A1_2 and A2_2 == L7_2
      L9_2(L10_2, L11_2)
    end
  end
end
L11_1.set_show_drag_dice_hover = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_eff_trouble
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L11_1.show_trouble_effect = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._card_item
  L1_2 = L1_2.SlotInfo
  L2_2 = L1_2
  L1_2 = L1_2.HasAnyDice
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._card_item
    L1_2 = L1_2.SlotInfo
    L2_2 = L1_2
    L1_2 = L1_2.GetAllDiceTotalValue
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._card_item
    L3_2 = L2_2
    L2_2 = L2_2.GetAvailableActionRow
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_bg_1
      L6_2 = L2_2.ImgPath1
      L3_2(L4_2, L5_2, L6_2)
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_bg_2
      L6_2 = L2_2.ImgPath2
      L3_2(L4_2, L5_2, L6_2)
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_bg_3
      L6_2 = L2_2.ImgPath3
      L3_2(L4_2, L5_2, L6_2)
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_foreground
      L6_2 = L2_2.ForeImgPath
      L3_2(L4_2, L5_2, L6_2)
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_foreground
    L4_2 = A0_2._card_item
    L4_2 = L4_2.CardForeImgPath
    L1_2(L2_2, L3_2, L4_2)
  end
end
L11_1._setup_card_img = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._card_item
  L1_2 = L1_2.Rarity
  L2_2 = L4_1.AllNegative
  if L1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_material_switch
    L3_2 = L2_2
    L2_2 = L2_2.SwitchMaterial
    L4_2 = 0
    L2_2(L3_2, L4_2)
  else
    L2_2 = L4_1.Normal
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.mono_material_switch
      L3_2 = L2_2
      L2_2 = L2_2.SwitchMaterial
      L4_2 = 1
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.mono_material_switch
      L3_2 = L2_2
      L2_2 = L2_2.SwitchMaterial
      L4_2 = 2
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rarity_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L4_1.Normal
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rarity_all_positive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L4_1.AllPositive
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rarity_all_negative
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L4_1.AllNegative
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rarity_partial_positive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L4_1.PartialPositiveOrNone
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_eff_debuff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L4_1.PartialNegativeOrNone
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L11_1._setup_card_rarity = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._card_item
  L2_2 = L1_2
  L1_2 = L1_2.HasAnyDice
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._card_item
    L1_2 = L1_2.SlotInfo
    L2_2 = L1_2
    L1_2 = L1_2.GetAllDiceTotalValue
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._card_item
    L3_2 = L2_2
    L2_2 = L2_2.GetAvailableActionRow
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_2.CardDesc
      L3_2(L4_2, L5_2)
    end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._card_item
    L3_2 = L3_2.CardDesc
    L1_2(L2_2, L3_2)
  end
end
L11_1._setup_card_desc = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._card_item
  if L1_2 == nil then
    L1_2 = 0
    L2_2 = 0
    L3_2 = 0
    return L1_2, L2_2, L3_2
  end
  L1_2 = A0_2._card_item
  L1_2 = L1_2.EffectResult
  L2_2 = A0_2._card_item
  L2_2 = L2_2.SuccessEffectResult
  L3_2 = L5_1
  L4_2 = L1_2
  L5_2 = L2_1.A
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L5_1
  L5_2 = L2_2
  L6_2 = L2_1.A
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 + L4_2
  L4_2 = L5_1
  L5_2 = L1_2
  L6_2 = L2_1.B
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L5_1
  L6_2 = L2_2
  L7_2 = L2_1.B
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 + L5_2
  L5_2 = L5_1
  L6_2 = L1_2
  L7_2 = L2_1.C
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_1
  L7_2 = L2_2
  L8_2 = L2_1.C
  L6_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2 + L6_2
  return L3_2, L4_2, L5_2
end
L11_1._get_attribute_change_value = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_effect
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._card_item
  L4_2 = A0_2._card_item
  L4_2 = L4_2.EffectResult
  L5_2 = A0_2._card_item
  L5_2 = L5_2.SuccessEffectResult
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L11_1._refresh_effect = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._card_item
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ClockParkCardTipsTypeExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2._card_item
    L3_2 = L3_2.CardTipsType
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_tips_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_2.CardTips_Detail
      L6_2 = A0_2._card_item
      L6_2 = L6_2.CardTipsParam
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L11_1._setup_card_tips = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._card_item
  L1_2 = L1_2.Rarity
  L2_2 = L4_1.PartialPositiveOrNone
  L1_2 = G
  L1_2 = L1_2.ActivityClockParkUtils
  L1_2 = L1_2.has_positive_effect
  L2_2 = A0_2._card_item
  L1_2 = L1_2 == L2_2 and L1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._card_item
  L3_2 = L3_2.SlotInfo
  L3_2 = L3_2.SlotItemList
  L2_2 = L2_2(L3_2)
  A0_2._slot_table = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_slot_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._slot_table
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = A0_2._slot_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_slot_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.show_card_tips
      L10_2 = A0_2._card_item
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.show_effect_loop
      L10_2 = L1_2 or L10_2
      if L1_2 then
        L10_2 = L6_2.IsEmpty
        L10_2 = not L10_2
      end
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.set_show_highlight
      L10_2 = false
      L8_2(L9_2, L10_2)
    end
  end
end
L11_1._setup_slot = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._slot_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_slot_list
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.show_effect_loop
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  end
end
L11_1._close_effect_loop = L12_1
function L12_1(A0_2)
  local L1_2
end
L11_1.reset_card_anim_state = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._card_item
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameState
  L2_2 = L1_2
  L1_2 = L1_2.EnableDicePlacement
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayToBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation
    L4_2 = L6_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayToEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation
    L4_2 = L6_1
    L2_2(L3_2, L4_2)
  end
end
L11_1._setup_card_anim_state = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L4_2 = A0_2._card_item
  L4_2 = L4_2.CardID
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_top_bar
  L3_2 = L3_2.gameObject
  L4_2 = A0_2._card_item
  L4_2 = L4_2.CardID
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff
  L3_2 = L3_2.gameObject
  L4_2 = A0_2._card_item
  L4_2 = L4_2.CardID
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_card_img
  L3_2 = L3_2.gameObject
  L4_2 = A0_2._card_item
  L4_2 = L4_2.CardID
  L1_2(L2_2, L3_2, L4_2)
end
L11_1._setup_tutorial = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback_func
  L3_2 = A0_2._click_callback_self
  L4_2 = A0_2._index
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L11_1._on_btn_root = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L8_2 = pairs
  L9_2 = A0_2._slot_table
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = A0_2._binder
    L13_2 = L13_2.panel_slot_list
    L14_2 = L13_2
    L13_2 = L13_2.get_panel_by_index
    L15_2 = L11_2
    L13_2 = L13_2(L14_2, L15_2)
    if L13_2 ~= nil then
      L15_2 = L13_2
      L14_2 = L13_2.register_dice_op_callback
      L16_2 = A1_2
      L17_2 = A2_2
      L18_2 = A3_2
      L19_2 = A4_2
      L20_2 = A5_2
      L21_2 = A6_2
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L15_2 = L13_2
      L14_2 = L13_2.register_empty_slot_click_callback
      L16_2 = A1_2
      L17_2 = A7_2
      L14_2(L15_2, L16_2, L17_2)
      L15_2 = L13_2
      L14_2 = L13_2.register_slot_select_callback
      L16_2 = A0_2
      L17_2 = A0_2._on_slot_select
      L14_2(L15_2, L16_2, L17_2)
    end
  end
end
L11_1.register_dice_op_callback = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback_func
  L3_2 = A0_2._click_callback_self
  L4_2 = A0_2._index
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._dragging = true
end
L11_1._on_event_trigger_begin_drag = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback_func
  L3_2 = A0_2._click_callback_self
  L4_2 = A0_2._index
  L5_2 = false
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._dragging = false
end
L11_1._on_event_trigger_end_drag = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A0_2._slot_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_slot_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.is_mouse_hover
      L10_2 = A1_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = true
        L9_2 = L6_2
        return L8_2, L9_2
      end
    end
  end
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.RectTransformUtility
  L2_2 = L2_2.ScreenPointToLocalPointInRectangle
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_card
  L4_2 = A1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_UICamera
  L6_2 = nil
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "is_mouse_hover: \232\142\183\229\143\150\229\157\144\230\160\135\229\164\177\232\180\165"
    L4_2(L5_2)
    L4_2 = false
    return L4_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_card
  L4_2 = L4_2.rect
  L5_2 = L4_2
  L4_2 = L4_2.Contains
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = A0_2._card_item
    L4_2 = L4_2.SlotInfo
    L5_2 = L4_2
    L4_2 = L4_2.GetEmptySlotIndex
    L4_2 = L4_2(L5_2)
    if L4_2 < 0 then
      L4_2 = 0
    end
    L5_2 = true
    L6_2 = A0_2._card_item
    L6_2 = L6_2.SlotInfo
    L6_2 = L6_2.SlotItemList
    L6_2 = L6_2[L4_2]
    return L5_2, L6_2
  end
  L4_2 = false
  return L4_2
end
L11_1.is_mouse_hover = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._has_dice
  if not L1_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AnimationAction
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation
  L4_2 = L6_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.ImmediateAction
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_callback
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_material_switch
    L1_3 = L0_3
    L0_3 = L0_3.RecoverMaterial
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._close_effect_loop
    L0_3(L1_3)
  end
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  return L3_2
end
L11_1.get_finish_anim_action = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ImmediateAction
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_callback
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.animation
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = L8_1
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = L1_2
  L2_2[1] = L3_2
  return L2_2
end
L11_1.get_fade_out_anim_action = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  if A1_2 == 0 then
    L3_2 = A0_2
    L2_2 = A0_2._show_fade_in
    L2_2(L3_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayToBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation
  L4_2 = L7_1
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterSeconds
  L3_2 = A1_2
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._show_fade_in
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L11_1.show_fade_in_animation = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.Log
    L2_2 = "[ClockPark] _show_fade_in"
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_card_anim_state
    L1_2(L2_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation
    L3_2 = L7_1
    L1_2(L2_2, L3_2)
  end
end
L11_1._show_fade_in = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_slot_list
  L2_2 = L1_2
  L1_2 = L1_2.get_panel_by_index
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.get_selectable_cmpt
    return L2_2(L3_2)
  end
end
L11_1.get_first_selectable_cmpt = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._slot_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_slot_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L11_2 = L7_2
      L10_2 = L7_2.get_selectable_cmpt
      L10_2, L11_2 = L10_2(L11_2)
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  return L1_2
end
L11_1.get_selectable_cmpt_list = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2.show_slot_navi_hint
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L11_1._on_slot_select = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_slot_navi_hint
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L11_1._on_in_control_input_switch = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_gamepad_dice_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_incontrol_move
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetEnabled
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    if A2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_gampad_dice_hint
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L9_1
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_gampad_dice_hint
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L10_1
      L3_2(L4_2, L5_2)
    end
  end
end
L11_1.show_slot_navi_hint = L12_1
return L11_1
