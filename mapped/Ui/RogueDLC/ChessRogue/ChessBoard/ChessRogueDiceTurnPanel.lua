local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.Maze.MazeShortCutHintPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeShortCutHintPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDiceTurnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "ShowGrid"
L2_1 = "DiceTurnPanel_FadeIn"
L3_1 = "DiceTurnPanel_FadeOut"
L4_1 = {}
L4_1[1] = "DiceTurnPanel_FadeIn_Type1"
L4_1[2] = "DiceTurnPanel_FadeIn_Type2"
L4_1[3] = "DiceTurnPanel_FadeIn_Type3"
L5_1 = {}
L5_1[1] = "DiceTurnPanel_FadeIn_Type1_S"
L5_1[2] = "DiceTurnPanel_FadeIn_Type2_S"
L5_1[3] = "DiceTurnPanel_FadeIn_Type3_S"
L6_1 = "9041"
L7_1 = "UIText_RogueDLC_ReLink_Roll_Hint"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.Client
L8_1 = L8_1.GlobalVars
L8_1 = L8_1.s_ModuleManager
L8_1 = L8_1.ChessRogueModule
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._short_cut_panel = nil
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = L0_1._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_map
  L4_2 = L0_1._on_btn_map
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = L0_1._on_btn_intro
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L0_1._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_dice_quick_throw
  L4_2 = A0_2._on_btn_dice_quick_throw
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cheat
  L4_2 = L0_1._on_btn_cheat
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reroll
  L4_2 = L0_1._on_btn_reroll
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueDLC1Dot3DiceCheatRoll
  L4_2 = L0_1._on_start_cheat_roll
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueDLC1Dot3DiceTurnPanelRefresh
  L4_2 = L0_1._on_chess_rotate_complete
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ConfirmChessRogueRollDice
  L4_2 = L0_1._on_confirm_roll_dice
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L8_1.ChessRogueData
  L1_2 = L1_2.AeonInfo
  A0_2._aeon_info = L1_2
  L1_2 = L8_1.ChessRogueData
  L1_2 = L1_2.DiceInfo
  A0_2._dice_info = L1_2
  L1_2 = A0_2._dice_info
  L1_2 = L1_2.CurDiceStatus
  L2_2 = CS
  L2_2 = L2_2.KOGKMOFKDKH
  L2_2 = L2_2.CIHEJCCCKEG
  L1_2 = L1_2 == L2_2
  A0_2._is_result_confirmed = L1_2
end
L0_1._on_load = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_dice_quick_throw
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ChessRogueUtils
  L4_2 = L4_2.IsGuideTwoFinished
  L4_2, L5_2, L6_2, L7_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_dice_quick_throw
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L4_2 = L4_2.ChessRogueDiceQuickThrow
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._dice_info
  L3_2 = L2_2
  L2_2 = L2_2.GetCurDiceSurfaceDisplayDataItem
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_dice_show_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._show_result_view
  L5_2 = A0_2._dice_info
  L6_2 = L2_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_custom_short_cut_hint_panel
  L3_2(L4_2)
end
L0_1.setup_view = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._setup_dice_icon
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_dice_icon
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_dice_rarity
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A1_2.Rarity
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_dice_show_view = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A2_2 ~= nil then
    L4_2 = A2_2.ExtraEffect
    L4_2 = L4_2 ~= nil
    A0_2._show_extra_effect_hint = L4_2
    L5_2 = A0_2
    L4_2 = A0_2._setup_dice_icon
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_result_icon
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_result_rarity
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A2_2.Rarity
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_result_rarity
    L5_2 = L4_2
    L4_2 = L4_2.setup_name_color
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_result_name
    L7_2 = A2_2.Rarity
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_result_name
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A2_2.DiceSurfaceName
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.result_desc_underline_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A2_2.ExtraEffect
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_result_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A2_2.DiceSurfaceDesc
    L7_2 = G
    L7_2 = L7_2.UITextUtils
    L7_2 = L7_2.GetSkillParams
    L8_2 = A2_2.DescParam
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = A0_2
    L4_2 = A0_2._play_result_animation
    L6_2 = A2_2.Rarity
    L7_2 = A3_2
    L4_2(L5_2, L6_2, L7_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._play_fade_in_animation
    L4_2(L5_2)
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.ChessRogueModule
  L5_2 = L4_2
  L4_2 = L4_2.GetCurSubMode
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.RogueSubMode
  L5_2 = L5_2.ChessRogueNous
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.RogueNousUtils
  L5_2 = L5_2.IsInGuideOne
  L5_2 = L4_2 == L5_2 and L5_2
  L6_2 = A1_2.IsCheatRollUnlocked
  if L6_2 then
    L6_2 = not L5_2
  end
  L7_2 = A1_2.CheatRollLeftNum
  L7_2 = 0 < L7_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.btn_cheat
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.btn_cheat
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetInteractable
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.btn_cheat
  L9_2 = A0_2._is_result_confirmed
  L8_2.IsInFakeDisableState = L9_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_btn_cheat_key_map_info
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.text_cheat_num
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetText
  L10_2 = A1_2.CheatRollLeftNum
  L8_2(L9_2, L10_2)
  L8_2 = L8_1.ChessRogueData
  L8_2 = L8_2.AreaInfo
  L8_2 = L8_2.CurAreaID
  L9_2 = G
  L9_2 = L9_2.ChessRogueUtils
  L9_2 = L9_2.is_area_the_guide_area_1
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L9_2 = G
  L9_2 = L9_2.ChessRogueUtils
  L9_2 = L9_2.is_area_the_guide_area_2
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L9_2 = not L9_2 and L9_2
  L10_2 = A1_2.CanReRoll
  L11_2 = A0_2._binder
  L11_2 = L11_2.btn_reroll
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetActive
  L13_2 = L9_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.btn_reroll
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetInteractable
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.btn_reroll
  L12_2 = A0_2._is_result_confirmed
  L11_2.IsInFakeDisableState = L12_2
  L11_2 = A0_2._binder
  L11_2 = L11_2.node_btn_reroll_key_map_info
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetActive
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.text_reroll_num
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetText
  L13_2 = A1_2.ReRollLeftNum
  L11_2(L12_2, L13_2)
  L11_2 = A1_2.IsCheatRollUnlocked
  if L11_2 then
    L11_2 = A1_2.CheatRollLeftNum
    if 0 < L11_2 then
      L11_2 = G
      L11_2 = L11_2.NotifyManager
      L11_2 = L11_2.notify
      L12_2 = G
      L12_2 = L12_2.CS
      L12_2 = L12_2.NotifyType
      L12_2 = L12_2.TutorialTaskUnlock
      L13_2 = L6_1
      L11_2(L12_2, L13_2)
    end
  end
end
L0_1._show_result_view = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A1_2
  L6_2 = A2_2.DiceSurfaceIcon
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A2_2.IconNeedSetColor
  if L3_2 then
    L4_2 = A1_2
    L3_2 = A1_2.SafeSetColor
    L5_2 = G
    L5_2 = L5_2.RogueNousUtils
    L5_2 = L5_2.get_color_by_surface_rarity
    L6_2 = A2_2.Rarity
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._setup_dice_icon = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetMainWorld
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GameWorldStatic
  L4_2 = L4_2.TriggerCustomStringEvent
  L5_2 = L3_2
  L6_2 = nil
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._trigger_custom_string = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_dice_status
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.KOGKMOFKDKH
  L2_2 = L2_2.CIHEJCCCKEG
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_dice_confirmed = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueData
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.DiceInfo
  L2_2 = L2_2.CurDiceStatus
  return L2_2
end
L0_1._get_dice_status = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.ChessRogueDiceQuickThrow
  if L3_2 and A2_2 then
    L3_2 = L5_1[A1_2]
    if L3_2 then
      goto lbl_15
    end
  end
  L3_2 = L4_1[A1_2]
  ::lbl_15::
  if L3_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._play_animation
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._play_fade_in_animation
    L4_2(L5_2)
  end
end
L0_1._play_result_animation = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._play_animation
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1._play_fade_in_animation = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._play_animation
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1._play_fade_out_animation = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_root
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L2_2(L3_2, L4_2)
end
L0_1._play_animation = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._play_fade_out_animation
  L1_2(L2_2)
end
L0_1._on_start_cheat_roll = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_chess_rotate_complete = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._trigger_custom_string
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._on_confirm_roll_dice = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueData
  if L1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueDiceSurfaceRuleDialog"
  L2_2(L3_2)
end
L0_1._on_btn_intro = L9_1
function L9_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.show_rogue_map_page
  L1_2()
end
L0_1._on_btn_map = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_result_confirmed
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.Notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L7_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._dice_info
  L1_2 = L1_2.CheatRollLeftNum
  if L1_2 == 0 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueDiceSurfaceCheatDialog"
  L1_2(L2_2)
end
L0_1._on_btn_cheat = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_result_confirmed
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.Notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L7_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._dice_info
  L1_2 = L1_2.CanReRoll
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.RogueDLC1Dot3DiceReRoll
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._play_fade_out_animation
    L1_2(L2_2)
  end
end
L0_1._on_btn_reroll = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_dice_confirmed
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.ConfirmChessRogueRollDice
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.PBIBDHBOIGI
    L3_2 = L3_2.HNBBPFOBAML
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_NetworkManager
    L2_2 = L1_2
    L1_2 = L1_2.BHAHNPPGFIH
    L1_2(L2_2)
    L1_2 = A0_2._owner
    if L1_2 ~= nil then
      L1_2 = A0_2._owner
      L2_2 = L1_2
      L1_2 = L1_2.init_pre_move_action_queue
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_confirm = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.IsGuideTwoFinished
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L2_2 = L2_2.ChessRogueDiceQuickThrow
    L2_2 = not L2_2
    L1_2.ChessRogueDiceQuickThrow = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_dice_quick_throw
    L2_2 = L1_2
    L1_2 = L1_2.SetChecked
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L3_2 = L3_2.ChessRogueDiceQuickThrow
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_dice_quick_throw = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = A0_2._show_extra_effect_hint
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
  L3_2 = L3_2.node_result_desc_layout_group
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
L0_1._setup_custom_short_cut_hint_panel = L9_1
return L0_1
