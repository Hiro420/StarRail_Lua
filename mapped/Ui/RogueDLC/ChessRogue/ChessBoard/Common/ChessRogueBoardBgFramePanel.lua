local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueBoardBgFramePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBoardBgFramePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_info_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._bind_btn_callback
    L8_2 = L5_2
    L9_2 = A0_2._on_btn_info_click
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._load_boss_pattern
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_board_bg
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bg_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = A1_2 == L5_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.show_bg = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_title
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromBegin
    L4_2 = L2_2
    L5_2 = "DiceBoxPanelTipsFadeIn"
    L3_2(L4_2, L5_2)
  end
end
L0_1.play_title_fade_in = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_title
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayToEnd
    L4_2 = L2_2
    L5_2 = "DiceBoxPanelTipsFadeIn"
    L3_2(L4_2, L5_2)
  end
end
L0_1.play_title_fade_to_end = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_info_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.set_btn_info_active = L1_1
function L1_1(A0_2, A1_2)
  A0_2._btn_info_guide_group_id = A1_2
end
L0_1.set_btn_info_guide_group_id = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._btn_info_guide_group_id
  if L1_2 ~= nil then
    L1_2 = A0_2._btn_info_guide_group_id
    if L1_2 ~= 0 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ShowTutorialGuide
  L3_2 = {}
  L4_2 = A0_2._btn_info_guide_group_id
  L3_2[0] = L4_2
  L3_2[1] = true
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_info_click = L1_1
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.RogueSubMode
L2_1 = L2_1.ChessRogue
L1_1[L2_1] = "SpriteOutput/UI/Rogue/DLC/Dice/BgRogueDlcChessmanGridShading1.png"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.RogueSubMode
L2_1 = L2_1.ChessRogueNous
L1_1[L2_1] = "SpriteOutput/UI/Rogue/DLC/RogueNous/BgRogueNousDlcChessmanGridShading1.png"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurSubMode
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1[L1_2]
  L3_2 = pairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_bg_table
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._load_sprite_to
    L10_2 = L7_2
    L11_2 = L2_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1._load_board_bg = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_bg_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.transform
    L7_2 = L7_2.anchoredPosition
    L8_2 = L6_2.transform
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.Vector2
    L10_2 = L7_2.x
    L11_2 = A1_2[1]
    L10_2 = L10_2 + L11_2
    L11_2 = L7_2.y
    L12_2 = A1_2[2]
    L11_2 = L11_2 + L12_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.anchoredPosition = L9_2
  end
end
L0_1.set_bg_position_offset = L2_1
L2_1 = "BossPattern(Clone)"
L3_1 = {}
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.RogueSubMode
L4_1 = L4_1.ChessRogue
L3_1[L4_1] = "UI/Rogue/DLC/Dice/Widget/BossPattern.prefab"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.RogueSubMode
L4_1 = L4_1.ChessRogueNous
L3_1[L4_1] = "UI/Rogue/DLC/Dice/Widget/BossPattern_Nous.prefab"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2
  L1_2 = L1_2.IsInLastLayer
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ChessRogueModule
  L3_2 = L2_2
  L2_2 = L2_2.GetCurSubMode
  L2_2 = L2_2(L3_2)
  L3_2 = L3_1[L2_2]
  L4_2 = {}
  A0_2._boss_pattern_gos = L4_2
  if L3_2 ~= nil and L3_2 ~= "" then
    L4_2 = pairs
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_boss_pattern_root_table
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L10_2 = A0_2
      L9_2 = A0_2.sync_load_prefab
      L11_2 = L3_2
      L12_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L10_2 = L9_2.transform
      L11_2 = L2_1
      L10_2.name = L11_2
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = A0_2._boss_pattern_gos
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
end
L0_1._load_boss_pattern = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._boss_pattern_gos
  if L2_2 == nil then
    return
  end
  L3_2 = A1_2
  L2_2 = A1_2.get_root_transform
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.position
  L3_2 = pairs
  L4_2 = A0_2._boss_pattern_gos
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.transform
    L8_2.position = L2_2
  end
end
L0_1.update_boss_pattern_position = L4_1
return L0_1
