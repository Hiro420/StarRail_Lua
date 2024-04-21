local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueSelectDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueSelectDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueSelectDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueSelectDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarScrollListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarScrollListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.RogueJoinAvatarSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.RogueInitAvatarSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.RogueAvatarSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueAvatarSelectPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Rogue/3DSelectUI/RogueSelectAvatarPageV3.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/MemberList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_member_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueAvatarScrollListPanel
  L4_2 = G
  L4_2 = L4_2.RogueAvatarScrollListPanelBinder
  L5_2 = "Root/Contents/RightPanel/RogueCharacterScrolList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_team_avatar_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/Contents/RightPanel/RogueCharacterScrolList/TeamListScrollView/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect_team_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Root/Contents/DialogBtnPanel/BtnAvatarDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_avatar_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Root/Contents/DialogBtnPanel/BtnTeam"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/DialogBtnPanel/BtnTeam/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_btn_confirm = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueSelectDetailPanel
  L4_2 = G
  L4_2 = L4_2.RogueSelectDetailPanelBinder
  L5_2 = "Root/Contents/RightPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_detail = L1_2
end
L0_1.create_rogue_detail_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueSelectDetailPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueSelectDetailPanelBinder
  L5_2 = "Root/Contents/RightPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_chess_detail = L1_2
end
L0_1.create_chess_rogue_detail_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._panel_init_select_avatar
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._create_panel
    L3_2 = G
    L3_2 = L3_2.RogueInitAvatarSelectPanel
    L4_2 = G
    L4_2 = L4_2.RogueAvatarSelectPanelBinder
    L5_2 = "Root/Contents/MemberList/MemberList"
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2._panel_init_select_avatar = L1_2
  end
  L1_2 = A0_2._panel_init_select_avatar
  return L1_2
end
L0_1.get_init_select_avatar_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._panel_join_select_avatar
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._create_panel
    L3_2 = G
    L3_2 = L3_2.RogueJoinAvatarSelectPanel
    L4_2 = G
    L4_2 = L4_2.RogueAvatarSelectPanelBinder
    L5_2 = "Root/Contents/MemberList/MemberList"
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2._panel_join_select_avatar = L1_2
  end
  L1_2 = A0_2._panel_join_select_avatar
  return L1_2
end
L0_1.get_join_select_avatar_panel = L1_1
return L0_1
