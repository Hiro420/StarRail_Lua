local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerHeroPathTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Avatar/HeroPath/AvatarHeroPathPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PlayerHeroPathDimensionGroupPanel
  L4_2 = G
  L4_2 = L4_2.PlayerHeroPathDimensionGroupPanelBinder
  L5_2 = "AvatarHeroPathContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.player_hero_path_dimension_group_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PlayerHeroPathDetailPanel
  L4_2 = G
  L4_2 = L4_2.PlayerHeroPathDetailPanelBinder
  L5_2 = "AvatarHeroPathDetailPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.player_hero_path_detail_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "PageInfoPanel/PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_avatar_type_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "HeroPathCloseBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarHeroPathContainer/HeroPathBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_open = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "HeroPathCloseBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarHeroPathContainer/HeroPathBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_open = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Normal/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_tab_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Normal/MenuTitle/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tab_name_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Selected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_tab_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Selected/MenuTitle/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tab_name_selected = L1_2
end
L0_1._on_tab_btn_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
