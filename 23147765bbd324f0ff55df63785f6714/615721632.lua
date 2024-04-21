local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerHeroPathDimensionGroupPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AbilityRadar
  L4_2 = "HeroPathDimension/DimensionPanel/Dimension"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.radar_dimension = L1_2
  L1_2 = {}
  A0_2.dimension_info_path = L1_2
  L1_2 = A0_2.dimension_info_path
  L1_2[1] = "HeroPathProfession/Point1"
  L1_2 = A0_2.dimension_info_path
  L1_2[2] = "HeroPathProfession/Point2"
  L1_2 = A0_2.dimension_info_path
  L1_2[3] = "HeroPathProfession/Point3"
  L1_2 = A0_2.dimension_info_path
  L1_2[4] = "HeroPathProfession/Point4"
  L1_2 = A0_2.dimension_info_path
  L1_2[5] = "HeroPathProfession/Point5"
  L1_2 = A0_2.dimension_info_path
  L1_2[6] = "HeroPathProfession/Point6"
  L1_2 = A0_2.dimension_info_path
  L1_2[7] = "HeroPathProfession/Point7"
  L1_2 = {}
  A0_2.dimension_panel_list = L1_2
  L1_2 = 1
  L2_2 = A0_2.dimension_info_path
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._create_panel
    L7_2 = G
    L7_2 = L7_2.PlayerHeroPathDimensionInfoPanel
    L8_2 = G
    L8_2 = L8_2.PlayerHeroPathDimensionInfoPanelBinder
    L9_2 = A0_2.dimension_info_path
    L9_2 = L9_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.dimension_panel_list
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
