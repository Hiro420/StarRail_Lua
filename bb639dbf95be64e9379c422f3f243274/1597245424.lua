local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.Components.ActivityMonopolyRollDiceEventOptionPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "MonopolyRollTargetItem_Active"
L2_1 = "MonopolyRollTargetItem_Default"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityMonopolyRollDiceEventOptionPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._option_data = A1_2
  A0_2._min_dice_num = A2_2
  A0_2._max_dice_num = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_text
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.setup_bubble_state
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_active
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = L1_1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  A0_2._anim_length = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._add_count_down_timer
  L6_2 = A0_2._on_timer_finish
  L7_2 = A0_2._anim_length
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._anim_timer = L4_2
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_handler
  L4_2 = A0_2._option_data
  L4_2 = L4_2.Type
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MonopolyOptionType
  L5_2 = L5_2.Negative
  L4_2 = L4_2 == L5_2
  L5_2 = A0_2._option_data
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L3_1._on_timer_finish = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_score_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_option_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bubble_text
  L1_2(L2_2)
  L1_2 = A0_2._option_data
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonopolyOptionType
  L2_2 = L2_2.Hidden
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L3_1._setup_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._min_dice_num
  L2_2 = A0_2._max_dice_num
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_score
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityMonopoly_Event_DiceScore_IntervalValue"
    L4_2 = A0_2._min_dice_num
    L5_2 = A0_2._max_dice_num
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_score
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._min_dice_num
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_score_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMonopoly_Event_DiceScore_Title"
  L1_2(L2_2, L3_2)
end
L3_1._setup_score_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._option_data
  L3_2 = L3_2.OptionContent
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._option_data
  L1_2 = L1_2.IsHideEffect
  if L1_2 then
    L1_2 = L0_1.EventInfo
    L2_2 = L1_2
    L1_2 = L1_2.IsOptionTriggered
    L3_2 = A0_2._option_data
    L3_2 = L3_2.ID
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_desc
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_ActivityMonopoly_Event_HideEffect"
      L1_2(L2_2, L3_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._set_option_effect_content
    L1_2(L2_2)
  end
end
L3_1._setup_option_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._option_data
  L2_2 = L2_2.EffectContentText
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._option_data
    L2_2 = L1_2
    L1_2 = L1_2.IsOptionGainAssetTax
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_desc
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = A0_2._option_data
      L3_2 = L3_2.EffectContentText
      L4_2 = A0_2._option_data
      L4_2 = L4_2.TextDisplayParam1
      L5_2 = A0_2._option_data
      L5_2 = L5_2.TextDisplayParam2
      L6_2 = A0_2._option_data
      L6_2 = L6_2.TextDisplayParam1
      L7_2 = L0_1.AssetInfo
      L8_2 = L7_2
      L7_2 = L7_2.GetCurActionProfit
      L7_2 = L7_2(L8_2)
      L6_2 = L6_2 * L7_2
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_desc
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = A0_2._option_data
      L3_2 = L3_2.EffectContentText
      L4_2 = A0_2._option_data
      L4_2 = L4_2.TextDisplayParam1
      L5_2 = A0_2._option_data
      L5_2 = L5_2.TextDisplayParam2
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L3_1._set_option_effect_content = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._option_data
  L1_2 = L1_2.OptionBubbleTalk
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextID
  L2_2 = L2_2.empty
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_bubble
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._option_data
    L3_2 = L3_2.OptionBubbleTalk
    L1_2(L2_2, L3_2)
  end
end
L3_1._setup_bubble_text = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bubble
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1.setup_bubble_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._option_data
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonopolyOptionType
  L2_2 = L2_2.Hidden
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_option_effect_content
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.trigger_mark_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_active
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L3_1.setup_view_after_result = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_active
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_active
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.trigger_mark_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_bubble_state
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1.reset_state = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_handler = A2_2
end
L3_1.register_anim_finish_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._min_dice_num
  L2_2 = A1_2 >= L2_2
  return L2_2
end
L3_1.is_roll_result_in_range = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._option_data
  L1_2 = L1_2.ID
  return L1_2
end
L3_1.get_option_id = L4_1
return L3_1
