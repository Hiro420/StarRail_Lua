local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RoguePickedAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RoguePickedAvatarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.Shop.Miracle.Components.RogueMiracleShopItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueCostBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueCostBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.Shop.Miracle.Components.RogueMiralceShopAvatarPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMiracleShopPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/DLC/Dice/DiceSelectRelicPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.exit_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/DialogBtnPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.confirm_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/DialogBtnPanel/BtnConfirm/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.confirm_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Root/TopBarArea/AreaPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.res_bar_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopBarArea/AreaPanel/ResBarArea/KeyMapZoom/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.res_bar_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnCommonInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.show_cur_miracle_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/TextTitle/TextTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.cur_miracle_title = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.RogueMiracleShopItemPanel
  L5_2 = G
  L5_2 = L5_2.RogueMiracleShopItemPanelBinder
  L6_2 = "Root/Contents/RelicContent/DiceRelicInfo1"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.RogueMiracleShopItemPanel
  L5_2 = G
  L5_2 = L5_2.RogueMiracleShopItemPanelBinder
  L6_2 = "Root/Contents/RelicContent/DiceRelicInfo2"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.RogueMiracleShopItemPanel
  L5_2 = G
  L5_2 = L5_2.RogueMiracleShopItemPanelBinder
  L6_2 = "Root/Contents/RelicContent/DiceRelicInfo3"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[3] = L2_2
  A0_2.miracle_panels = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueCostBtnPanel
  L4_2 = G
  L4_2 = L4_2.RogueCostBtnPanelBinder
  L5_2 = "Root/Contents/DialogBtnPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RoguePickedAvatarPanel
  L4_2 = G
  L4_2 = L4_2.RoguePickedAvatarPanelBinder
  L5_2 = "Root/Contents/DialogBtnPanel/RogueCharacterScrolList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_picked_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/AltasMarkInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_handbook_hint = L1_2
end
L0_1._on_bind = L1_1
return L0_1
