local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerMenuSelectPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/DrinkMaker/DrinkMakerMenuSelectPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Contents/QuestPanel/QuestHintPanel/IconGuestMonster/IconPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/QuestPanel/QuestHintPanel/Tips/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_quest_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/Contents/EntryList/CoverDrinkMenu"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_menu = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/EntryList/CoverDrinkMenu/Root/DisableTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_menu_disable_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/EntryList/CoverFreeDrink/Root/DisableTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_free_disable_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/Contents/EntryList/CoverFreeDrink"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_free = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
end
L0_1._on_bind = L1_1
return L0_1
