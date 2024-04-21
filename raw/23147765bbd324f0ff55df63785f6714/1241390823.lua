local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L0_1.Attribute = 1
L0_1.Skill = 2
L0_1.Special = 3
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "SkillTreePointRecommendItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L1_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._point_data = A1_2
  A0_2._avatar_data = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_icon
  L6_2 = A0_2._point_data
  L6_2 = L6_2.IconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L6_2 = A0_2
  L5_2 = A0_2._get_point_type
  L7_2 = A0_2._point_data
  L8_2 = A0_2._avatar_data
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L6_2 = A0_2
  L5_2 = A0_2._get_hint
  L7_2 = A0_2._point_data
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.set_selected = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2.PointType
  L4_2 = L0_1.Attribute
  if L3_2 == L4_2 then
    L3_2 = A1_2.PointName
    return L3_2
  else
    L3_2 = A1_2.PointType
    L4_2 = L0_1.Skill
    if L3_2 == L4_2 then
      L3_2 = A1_2.LevelUpSkillID
      L3_2 = L3_2[0]
      if not L3_2 then
        L3_2 = 0
      end
      L4_2 = A2_2.SkillTreeData
      L5_2 = L4_2
      L4_2 = L4_2.GetSkillPointLevel
      L6_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.AvatarSkillExcelTable
      L5_2 = L5_2.GetData
      L6_2 = L3_2
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L5_2.SkillName
      return L6_2
    else
      L3_2 = A1_2.PointType
      L4_2 = L0_1.Special
      if L3_2 == L4_2 then
        L3_2 = A1_2.PointName
        return L3_2
      end
    end
  end
end
L1_1._get_point_name = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2.PointType
  L4_2 = L0_1.Attribute
  if L3_2 == L4_2 then
    L3_2 = "UIText_SkillTreePanel_TypeName_Status"
    return L3_2
  else
    L3_2 = A1_2.PointType
    L4_2 = L0_1.Skill
    if L3_2 == L4_2 then
      L3_2 = A1_2.LevelUpSkillID
      L3_2 = L3_2[0]
      if not L3_2 then
        L3_2 = 0
      end
      L4_2 = A2_2.SkillTreeData
      L5_2 = L4_2
      L4_2 = L4_2.GetSkillPointLevel
      L6_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.AvatarSkillExcelTable
      L5_2 = L5_2.GetData
      L6_2 = L3_2
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L5_2.SkillTypeDesc
      return L6_2
    else
      L3_2 = A1_2.PointType
      L4_2 = L0_1.Special
      if L3_2 == L4_2 then
        L3_2 = "UIText_SkillTreePanel_TypeName_ExtraAbility"
        return L3_2
      end
    end
  end
end
L1_1._get_point_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.RecommendPriority
  if L2_2 == 1 then
    L2_2 = "UIText_AvatarSkillTree_Recommend_Priority_1"
    return L2_2
  else
    L2_2 = A1_2.RecommendPriority
    if L2_2 == 2 then
      L2_2 = "UIText_AvatarSkillTree_Recommend_Priority_2"
      return L2_2
    end
  end
  L2_2 = "UIText_AvatarSkillTree_Recommend_Priority_3"
  return L2_2
end
L1_1._get_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._point_data
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_root = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L1_1.get_first_selected_object = L2_1
return L1_1
