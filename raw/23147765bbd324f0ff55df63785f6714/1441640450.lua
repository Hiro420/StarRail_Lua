local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AdventureTalkBtnsPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "SpriteOutput/TalkIcon/ChatIcon.png"
  return L0_2
end
L0_1.get_default_icon_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.key_map_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = ""
  L6_2 = "Ui.Talk.TalkOptionItemPanel"
  L7_2 = "Ui.Talk.TalkOptionItemPanelBinder"
  L8_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.panel_option_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.load_prefab_meta = L1_2
end
L0_1._on_bind = L1_1
return L0_1
