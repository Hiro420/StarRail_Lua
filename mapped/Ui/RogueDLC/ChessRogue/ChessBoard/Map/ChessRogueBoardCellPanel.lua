local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.AnimationAction"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.WaitSecondAction"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueAnimationTypeFactory"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBoardCellPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.CurPlayer = 1
L1_1.Normal = 2
L1_1.Gray = 3
L1_1.BossNormal = 4
L1_1.BossGray = 5
L1_1.SwarmBossNormal = 6
L1_1.SwarmBossGray = 7
L1_1.NousBossNormal = 8
L1_1.NousBossGray = 9
L2_1 = {}
L3_1 = L1_1.CurPlayer
L2_1[L3_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridUsePlayer.png"
L3_1 = L1_1.Normal
L2_1[L3_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridUse1.png"
L3_1 = L1_1.Gray
L2_1[L3_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridUse2.png"
L3_1 = L1_1.BossNormal
L2_1[L3_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridBoss1.png"
L3_1 = L1_1.BossGray
L2_1[L3_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridBoss2.png"
L3_1 = L1_1.SwarmBossNormal
L2_1[L3_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridInSectBoss1.png"
L3_1 = L1_1.SwarmBossGray
L2_1[L3_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridInSectBoss2.png"
L3_1 = L1_1.NousBossNormal
L2_1[L3_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridInSectBoss3.png"
L3_1 = L1_1.NousBossGray
L2_1[L3_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridInSectBoss4.png"
L3_1 = {}
L4_1 = L1_1.CurPlayer
L3_1[L4_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridMovePlayer.png"
L4_1 = L1_1.Normal
L3_1[L4_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridMove1.png"
L4_1 = L1_1.Gray
L3_1[L4_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridMove2.png"
L4_1 = L1_1.BossNormal
L3_1[L4_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridBoss1.png"
L4_1 = L1_1.BossGray
L3_1[L4_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridBoss2.png"
L4_1 = L1_1.SwarmBossNormal
L3_1[L4_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridInSectBoss1.png"
L4_1 = L1_1.SwarmBossGray
L3_1[L4_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridInSectBoss2.png"
L4_1 = L1_1.NousBossNormal
L3_1[L4_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridInSectBoss3.png"
L4_1 = L1_1.NousBossGray
L3_1[L4_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridInSectBoss4.png"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ChessRogueBoardAnimationType
L5_1 = {}
L6_1 = L4_1.Normal
L6_1 = #L6_1
L5_1[L6_1] = 0
L6_1 = L4_1.Remembrance
L6_1 = #L6_1
L5_1[L6_1] = 1
L6_1 = L4_1.Abundance
L6_1 = #L6_1
L5_1[L6_1] = 2
L6_1 = L4_1.TheHunt
L6_1 = #L6_1
L5_1[L6_1] = 3
L6_1 = L4_1.Preservation
L6_1 = #L6_1
L5_1[L6_1] = 4
L6_1 = L4_1.DestructionBreak
L6_1 = #L6_1
L5_1[L6_1] = 5
L6_1 = L4_1.DestructionChange
L6_1 = #L6_1
L5_1[L6_1] = 5
L6_1 = L4_1.Propagation
L6_1 = #L6_1
L5_1[L6_1] = 6
L6_1 = L4_1.Nihility
L6_1 = #L6_1
L5_1[L6_1] = 7
L6_1 = L4_1.Elation
L6_1 = #L6_1
L5_1[L6_1] = 8
L6_1 = L4_1.Portal
L6_1 = #L6_1
L5_1[L6_1] = 9
L6_1 = L4_1.Erudition
L6_1 = #L6_1
L5_1[L6_1] = 10
L6_1 = L4_1.EruditionBreak
L6_1 = #L6_1
L5_1[L6_1] = 10
L6_1 = L4_1.EruditionChange
L6_1 = #L6_1
L5_1[L6_1] = 10
L6_1 = L4_1.EruditionFadeOut
L6_1 = #L6_1
L5_1[L6_1] = 10
L6_1 = {}
L7_1 = L4_1.Remembrance
L7_1 = #L7_1
L6_1[L7_1] = 1
L7_1 = L4_1.Abundance
L7_1 = #L7_1
L6_1[L7_1] = 2
L7_1 = L4_1.TheHunt
L7_1 = #L7_1
L6_1[L7_1] = 3
L7_1 = L4_1.Preservation
L7_1 = #L7_1
L6_1[L7_1] = 4
L7_1 = L4_1.Erudition
L7_1 = #L7_1
L6_1[L7_1] = 5
L7_1 = L4_1.EruditionFadeOut
L7_1 = #L7_1
L6_1[L7_1] = 5
L7_1 = {}
L8_1 = L4_1.Normal
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Normal"
L8_1 = L4_1.Remembrance
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Remembrance"
L8_1 = L4_1.Abundance
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Abundance"
L8_1 = L4_1.TheHunt
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_TheHunt"
L8_1 = L4_1.Preservation
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Preservation"
L8_1 = L4_1.DestructionBreak
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Destruction_Break"
L8_1 = L4_1.Propagation
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Propagation"
L8_1 = L4_1.Nihility
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Nihility_Break"
L8_1 = L4_1.Elation
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Elation"
L8_1 = L4_1.DestructionChange
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Destruction"
L8_1 = L4_1.Portal
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Portal"
L8_1 = L4_1.Erudition
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Erudition_Mark"
L8_1 = L4_1.EruditionBreak
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Erudition_Break"
L8_1 = L4_1.EruditionChange
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Erudition_Change"
L8_1 = L4_1.EruditionFadeOut
L8_1 = #L8_1
L7_1[L8_1] = "BtnChessman_Eff_Erudition_MarkFadeOut"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._long_press_item_gamepad_input
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._long_press_item
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.ClickChessRogueBoardCell
    L2_3 = A0_2._cell_data_item
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._cell_data_item = A1_2
  A0_2._is_show_empty = A2_2
  if A1_2 == nil then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2.show_node_content
  L6_2 = not A2_2
  L4_2(L5_2, L6_2)
  if not A2_2 then
    L4_2 = nil
    if A3_2 ~= nil then
      L6_2 = A3_2
      L5_2 = A3_2.GetBeforeCellDataItem
      L7_2 = A1_2.CellID
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L5_2
    end
    if L4_2 ~= nil then
      L6_2 = A0_2
      L5_2 = A0_2._setup_block_type_view
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2._setup_mark_type_view
      L8_2 = L4_2
      L7_2 = L4_2.GetMarkTypeRow
      L7_2, L8_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2)
      L6_2 = A0_2
      L5_2 = A0_2.setup_cell_special_type
      L7_2 = L4_2.CellSpecialType
      L5_2(L6_2, L7_2)
    else
      L6_2 = A0_2
      L5_2 = A0_2._setup_block_type_view
      L7_2 = A1_2
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2._setup_mark_type_view
      L8_2 = A1_2
      L7_2 = A1_2.GetMarkTypeRow
      L7_2, L8_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2)
      L6_2 = A0_2
      L5_2 = A0_2.setup_cell_special_type
      L7_2 = A1_2.CellSpecialType
      L5_2(L6_2, L7_2)
    end
  else
    L5_2 = A0_2
    L4_2 = A0_2.setup_cell_special_type
    L4_2(L5_2)
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.TutorialSupportModule
  L5_2 = L4_2
  L4_2 = L4_2.SetNodeDynamicKey
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L6_2 = L6_2.gameObject
  L7_2 = A1_2.CellID
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L8_1
function L8_1(A0_2, A1_2)
  A0_2._long_press_button_mutex = A1_2
end
L0_1.set_long_press_button_mutex = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = not A1_2
  A0_2._is_show_empty = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_img
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tag
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_node_content = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_block_type
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_mark_type
  L2_2(L3_2)
  if A1_2 == nil or A1_2 == false then
    L3_2 = A0_2
    L2_2 = A0_2.refresh_special_type
    L2_2(L3_2)
  end
end
L0_1.refresh_content = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cell_data_item
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_block_type_view
  L3_2 = A0_2._cell_data_item
  L1_2(L2_2, L3_2)
end
L0_1.refresh_block_type = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cell_data_item
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_mark_type_view
  L3_2 = A0_2._cell_data_item
  L4_2 = L3_2
  L3_2 = L3_2.GetMarkTypeRow
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.refresh_mark_type = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cell_data_item
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_cell_special_type
  L3_2 = A0_2._cell_data_item
  L3_2 = L3_2.CellSpecialType
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.refresh_special_type = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_reset
  L3_2 = "BtnChessman_Eff_Reset"
  L1_2(L2_2, L3_2)
end
L0_1.reset_animation = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.BlockTypeChessBoardIcon
  if L2_2 ~= nil then
    L2_2 = A1_2.BlockTypeChessBoardIcon
    if L2_2 ~= "" then
      L3_2 = A0_2
      L2_2 = A0_2._async_load_sprite_to
      L4_2 = A0_2._binder
      L4_2 = L4_2.img_type
      L5_2 = A1_2.BlockTypeChessBoardIcon
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A1_2.BlockTypeChessBoardColor
      L3_2 = L2_2 ~= nil and L2_2 ~= ""
      if L3_2 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.img_type
        L5_2 = G
        L5_2 = L5_2.UIColorUtils
        L5_2 = L5_2.GetColor
        L6_2 = L2_2
        L5_2 = L5_2(L6_2)
        L4_2.color = L5_2
      end
    end
  end
end
L0_1._setup_block_type_view = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2 ~= nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tag_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tag
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A1_2.MarkTypeChessBoardIcon
    if L3_2 ~= nil then
      L3_2 = A1_2.MarkTypeChessBoardIcon
      if L3_2 ~= "" then
        L4_2 = A0_2
        L3_2 = A0_2._async_load_sprite_to
        L5_2 = A0_2._binder
        L5_2 = L5_2.img_tag
        L6_2 = A1_2.MarkTypeChessBoardIcon
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end
L0_1._setup_mark_type_view = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.save_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn
    L4_2 = L4_2.gameObject
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_btn_checked = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._is_break_status_fixed = true
end
L0_1.set_node_break_status_fixed = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_break_status_fixed
  L1_2 = L1_2 == nil
  return L1_2
end
L0_1.can_change_break_status = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.can_change_break_status
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_state
    L3_2 = L2_2
    L2_2 = L2_2.SetInteger
    L4_2 = "BreakStatus"
    L5_2 = 1
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_state
    L3_2 = L2_2
    L2_2 = L2_2.SetInteger
    L4_2 = "BreakStatus"
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_state
  L3_2 = L2_2
  L2_2 = L2_2.SetBool
  L4_2 = "BreakHint"
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_node_break = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.can_change_break_status
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_state
  L2_2 = L1_2
  L1_2 = L1_2.SetInteger
  L3_2 = "BreakStatus"
  L4_2 = 2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_state
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "BreakHint"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_state
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "PreBreak"
  L4_2 = 2
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_state
  L2_2 = L1_2
  L1_2 = L1_2.Update
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1.setup_node_pre_break = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.can_change_break_status
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_state
  L2_2 = L1_2
  L1_2 = L1_2.SetInteger
  L3_2 = "BreakStatus"
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_state
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "BreakHint"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.play_node_break = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._can_select = A1_2
  if A1_2 then
    if A2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator_state
      L4_2 = L3_2
      L3_2 = L3_2.SetInteger
      L5_2 = "StatePanel"
      L6_2 = 2
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator_state
      L4_2 = L3_2
      L3_2 = L3_2.SetInteger
      L5_2 = "StatePanel"
      L6_2 = 1
      L3_2(L4_2, L5_2, L6_2)
    end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator_state
    L4_2 = L3_2
    L3_2 = L3_2.SetInteger
    L5_2 = "StatePanel"
    L6_2 = 0
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.setup_node_canselect = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._cell_data_item
  if L1_2 == nil then
    L1_2 = "#ffffff"
    return L1_2
  else
    L1_2 = A0_2._cell_data_item
    L1_2 = L1_2.BlockTypeChessBoardColor
    return L1_2
  end
end
L0_1._get_icon_color_string = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L2_2 = 0.6
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = 1.0
  ::lbl_7::
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_tag
  L4_2 = G
  L4_2 = L4_2.UIColorUtils
  L4_2 = L4_2.GetColorWithAlpha
  L5_2 = "#ffffff"
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.color = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.canvas_img_type
  L3_2.alpha = L2_2
end
L0_1.setup_node_reject = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._cell_data_item
  return L1_2
end
L0_1.get_cell_data_item = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._do_setup_bg
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_modifier_bg = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._do_setup_bg
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_bg = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A3_2 then
    L4_2 = L2_1
    if L4_2 then
      goto lbl_7
    end
  end
  L4_2 = L3_1
  ::lbl_7::
  L5_2 = nil
  if A1_2 then
    L6_2 = L1_1.CurPlayer
    L5_2 = L4_2[L6_2]
  else
    L6_2 = A0_2._cell_data_item
    L6_2 = L6_2 ~= nil
    L7_2 = A0_2._cell_data_item
    L7_2 = L7_2 ~= nil
    L8_2 = A0_2._cell_data_item
    L8_2 = L8_2 ~= nil
    if A2_2 then
      if L6_2 then
        L9_2 = L1_1.BossNormal
        L5_2 = L4_2[L9_2]
      elseif L7_2 then
        L9_2 = L1_1.SwarmBossNormal
        L5_2 = L4_2[L9_2]
      elseif L8_2 then
        L9_2 = L1_1.NousBossNormal
        L5_2 = L4_2[L9_2]
      else
        L9_2 = L1_1.Normal
        L5_2 = L4_2[L9_2]
      end
    elseif L6_2 then
      L9_2 = L1_1.BossGray
      L5_2 = L4_2[L9_2]
    elseif L7_2 then
      L9_2 = L1_1.SwarmBossGray
      L5_2 = L4_2[L9_2]
    elseif L8_2 then
      L9_2 = L1_1.NousBossGray
      L5_2 = L4_2[L9_2]
    else
      L9_2 = L1_1.Gray
      L5_2 = L4_2[L9_2]
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_bg
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
end
L0_1._do_setup_bg = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_history_dot
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._cell_data_item
    if L2_2 then
      L2_2 = A0_2._cell_data_item
      L2_2 = L2_2.BlockTypeChessBoardIcon
    end
    if L2_2 ~= nil and L2_2 ~= "" then
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_history_type
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    end
    L3_2 = A0_2._cell_data_item
    if L3_2 then
      L3_2 = A0_2._cell_data_item
      L4_2 = L3_2
      L3_2 = L3_2.GetMarkTypeRow
      L3_2 = L3_2(L4_2)
    end
    L4_2 = L3_2 or L4_2
    if L3_2 then
      L4_2 = L3_2.MarkTypeChessBoardIcon
    end
    L5_2 = L4_2 ~= nil and L4_2 ~= ""
    if L5_2 then
      L7_2 = A0_2
      L6_2 = A0_2._async_load_sprite_to
      L8_2 = A0_2._binder
      L8_2 = L8_2.img_history_tag
      L9_2 = L4_2
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_history_type
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_history_tag
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_history_type
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_history_tag
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.show_history_dot = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_history_dot
  return L1_2
end
L0_1.get_history_dot_transform = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.ChessRogueAnimationTypeFactory
  L3_2 = L3_2.get_animation_type_for_cell_special_type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2.play_to_aeon_effect_end
  L6_2 = L3_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_cell_special_type = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._get_aeon_animation
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L4_1.Normal
  L4_2 = #L4_2
  if A1_2 == L4_2 then
    L4_2 = L3_2.isPlaying
    if L4_2 and A2_2 then
      L5_2 = A0_2
      L4_2 = A0_2._set_none_special_type
      L4_2(L5_2)
    end
    L5_2 = L3_2
    L4_2 = L3_2.PlayQueued
    L6_2 = L7_1[A1_2]
    L4_2(L5_2, L6_2)
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._try_load_aeon_effect
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = L3_2.isPlaying
  if L4_2 and A2_2 then
    L5_2 = A0_2
    L4_2 = A0_2._safe_find_aeon_effect_node
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L6_2 = L4_2
      L5_2 = L4_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2._set_special_type_canvas_active
      L7_2 = A1_2
      L8_2 = true
      L5_2(L6_2, L7_2, L8_2)
    end
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIAnimationUtils
    L4_2 = L4_2.PlayToEnd
    L5_2 = L3_2
    L6_2 = L7_1[A1_2]
    L4_2(L5_2, L6_2)
  end
end
L0_1.play_to_aeon_effect_end = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_special_type_canvas_active
  L3_2 = L4_1.Remembrance
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_special_type_canvas_active
  L3_2 = L4_1.Abundance
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_special_type_canvas_active
  L3_2 = L4_1.TheHunt
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_special_type_canvas_active
  L3_2 = L4_1.Preservation
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_special_type_canvas_active
  L3_2 = L4_1.Erudition
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._set_none_special_type = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._safe_find_aeon_effect_canvas
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    if A2_2 then
      L4_2 = 1
      if L4_2 then
        goto lbl_12
      end
    end
    L4_2 = 0
    ::lbl_12::
    L3_2.alpha = L4_2
  end
end
L0_1._set_special_type_canvas_active = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.AnimationAction
  L5_2 = A0_2
  L4_2 = A0_2._get_aeon_animation
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L7_1[A1_2]
  return L2_2(L3_2, L4_2, L5_2)
end
L0_1.get_aeon_animation_action = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._try_load_aeon_effect
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L4_2 = A0_2
  L3_2 = A0_2._get_aeon_animation
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L7_1[A1_2]
  L2_2(L3_2, L4_2)
end
L0_1.play_aeon_animation_from_begin = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L4_1.Normal
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    return
  end
  L2_2 = L5_1[A1_2]
  L3_2 = A0_2._binder
  L3_2 = L3_2.loader_aeon_effect
  L3_2 = L3_2[L2_2]
  if L3_2 ~= nil then
    L4_2 = L3_2.transform
    if L4_2 ~= nil then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
  L4_2 = L3_2.transform
  L4_2 = L4_2.childCount
  if L4_2 == 0 then
    L5_2 = A0_2
    L4_2 = A0_2.instantiate_object
    L6_2 = L3_2.Prefab
    L7_2 = L3_2.transform
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIUtils
    L5_2 = L5_2.RemoveGameObjectCloneName
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = G
    L5_2 = L5_2.ComponentExtensions
    L5_2 = L5_2.SafeFind
    L6_2 = L4_2.transform
    L7_2 = "Eff"
    L8_2 = false
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 ~= nil then
      L6_2 = A0_2._aeon_eff_node
      if L6_2 == nil then
        L6_2 = {}
        A0_2._aeon_eff_node = L6_2
      end
      L6_2 = A0_2._aeon_eff_node
      L6_2[L2_2] = L5_2
    end
  end
end
L0_1._try_load_aeon_effect = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L4_1.Normal
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A0_2._aeon_eff_node
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L5_1[A1_2]
  L3_2 = A0_2._aeon_eff_node
  L3_2 = L3_2[L2_2]
  return L3_2
end
L0_1._safe_find_aeon_effect_node = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L4_1.Normal
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group_aeon_effect
  if L2_2 == nil then
    L2_2 = A0_2._binder
    L3_2 = L2_2
    L2_2 = L2_2.init_canvas_group_table
    L2_2(L3_2)
  end
  L2_2 = L5_1[A1_2]
  L3_2 = A0_2._binder
  L3_2 = L3_2.canvas_group_aeon_effect
  L3_2 = L3_2[L2_2]
  return L3_2
end
L0_1._safe_find_aeon_effect_canvas = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L6_1[A1_2]
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation_table
    L3_2 = L3_2[L2_2]
    return L3_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation_root
    return L3_2
  end
end
L0_1._get_aeon_animation = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_tag
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_tag
      L1_2 = L1_2.gameObject
      L1_2 = L1_2.activeInHierarchy
      if L1_2 ~= false then
        goto lbl_16
      end
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_16::
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AnimationAction
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_tag
  L4_2 = "BtnChessman_TagFadeOut"
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1.try_get_tag_fade_out_action = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayFromBegin
      L2_2 = A0_2._binder
      L2_2 = L2_2.animation_tag
      L3_2 = "BtnChessman_TagFadeOut"
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.play_tag_fade_out = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AnimationAction
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_tag
  L4_2 = "BtnChessman_TagFadeIn"
  L5_2 = A0_2
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.is_active
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.refresh_mark_type
        L0_3(L1_3)
      end
    end
  end
  return L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1.get_tag_fade_in_action = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayFromBegin
      L2_2 = A0_2._binder
      L2_2 = L2_2.animation_tag
      L3_2 = "BtnChessman_TagFadeIn"
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.play_tag_fade_in = L8_1
function L8_1(A0_2, A1_2)
  A0_2._is_detail_enable = A1_2
end
L0_1.set_detail_enable = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_detail_enable
  L1_2 = L1_2 == nil
  return L1_2
end
L0_1.can_show_detail = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_long_press_status
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1.set_long_press_hint_normal = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_long_press_status
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1.set_long_press_hint_forbid_select = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_long_press_status
  L3_2 = 2
  L1_2(L2_2, L3_2)
end
L0_1.set_long_press_hint_break = L8_1
function L8_1(A0_2, A1_2)
  A0_2._long_press_hint_status = A1_2
end
L0_1.set_long_press_status = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.can_show_detail
  L1_2 = L1_2(L2_2)
  if L1_2 == false then
    return
  end
  L1_2 = A0_2._cell_data_item
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.HasTutorialBlockMask
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._long_press_button_mutex
  if L1_2 ~= nil then
    L1_2 = A0_2._long_press_button_mutex
    L2_2 = L1_2
    L1_2 = L1_2.Check
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = G
      L0_3 = L0_3.UIManager
      L0_3 = L0_3.load_and_async_show
      L1_3 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueBoardCellDetailDialog"
      L2_3 = A0_2._cell_data_item
      L3_3 = A0_2._long_press_hint_status
      L0_3(L1_3, L2_3, L3_3)
    end
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueBoardCellDetailDialog"
    L3_2 = A0_2._cell_data_item
    L4_2 = A0_2._long_press_hint_status
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._long_press_item = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._long_press_item
    L1_2(L2_2)
  end
end
L0_1._long_press_item_gamepad_input = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_btn_interactable = L8_1
return L0_1
