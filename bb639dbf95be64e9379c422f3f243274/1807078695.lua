local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarSkillTree.SkillTreePointItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarSkillTree.SkillTreePointItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SkillTreeDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
L2_1 = 18
L3_1 = {}
L3_1[1] = "UI/Avatar/Widget/SkillTreeIconSmall_Attribute.prefab"
L3_1[2] = "UI/Avatar/Widget/SkillTreeIconSmall_Normal.prefab"
L3_1[3] = "UI/Avatar/Widget/SkillTreeIconSmall_Special.prefab"
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._avatar_data = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._get_tree_point_datas
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._tree_point_datas = L4_2
  L4_2 = A0_2._binder
  L5_2 = L4_2
  L4_2 = L4_2.init
  L6_2 = A0_2._avatar_data
  L6_2 = L6_2.Row
  L6_2 = L6_2.SkilltreePrefabPath
  L7_2 = A0_2._tree_point_datas
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._skill_tree_item_list = L1_2
  L1_2 = {}
  A0_2._skill_tree_btn_list = L1_2
  A0_2._item_load_finish_count = 0
  L2_2 = A0_2
  L1_2 = A0_2._create_item_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarSkillTreeUnlockFinish
  L4_2 = L0_1._on_avatar_unlock_skill_tree_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 1
  L2_2 = A0_2._tree_point_datas
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._tree_point_datas
    L5_2 = L5_2[L4_2]
    L7_2 = A0_2
    L6_2 = A0_2.sync_load_prefab
    L8_2 = L5_2.PointType
    L8_2 = L3_1[L8_2]
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_skill_tree_point_list
    L10_2 = L5_2.PointID
    L9_2 = L9_2[L10_2]
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.SkillTreePointItem
    L10_2 = G
    L10_2 = L10_2.SkillTreePointItemBinder
    L11_2 = L5_2
    L12_2 = A0_2._avatar_data
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L9_2 = L7_2
    L8_2 = L7_2.bind
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.register_click_callback
    L10_2 = A0_2._point_click_callback
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._skill_tree_item_list
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_async_callback
    L10_2 = A0_2
    L11_2 = A0_2.on_asyncload_finished
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1._create_item_panels = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 == nil then
    L2_2 = {}
    return L2_2
  end
  L2_2 = {}
  L3_2 = A1_2.SkillTreeData
  L4_2 = L3_2
  L3_2 = L3_2.GetAvatarSkillTreeRowListByID
  L5_2 = A1_2.RealID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = L2_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = tonumber
    L3_3 = string
    L3_3 = L3_3.sub
    L4_3 = A0_3.Anchor
    L5_3 = -2
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3, L5_3)
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    L3_3 = tonumber
    L4_3 = string
    L4_3 = L4_3.sub
    L5_3 = A1_3.Anchor
    L6_3 = -2
    L4_3, L5_3, L6_3 = L4_3(L5_3, L6_3)
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L4_3 = L2_3 < L3_3
    return L4_3
  end
  L4_2(L5_2, L6_2)
  return L2_2
end
L0_1._get_tree_point_datas = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._avatar_data = A1_2
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ID
  A0_2._avatar_id = L3_2
  A0_2._selected_point = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._skill_tree_item_list
  if L2_2 then
    L2_2 = A0_2._tree_point_datas
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = 1
      L3_2 = A0_2._tree_point_datas
      L3_2 = #L3_2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = A0_2._tree_point_datas
        L6_2 = L6_2[L5_2]
        L7_2 = A0_2._skill_tree_item_list
        L7_2 = L7_2[L5_2]
        L9_2 = L7_2
        L8_2 = L7_2.setup_view
        L10_2 = L6_2
        L11_2 = A0_2._selected_point
        L12_2 = A1_2
        L8_2(L9_2, L10_2, L11_2, L12_2)
        L8_2 = A0_2._binder
        L8_2 = L8_2.nodes_tree_line
        L9_2 = L6_2.PointID
        L8_2 = L8_2[L9_2]
        if L8_2 ~= nil then
          L10_2 = L7_2
          L9_2 = L7_2.show_reach_line
          L9_2 = L9_2(L10_2)
          if L9_2 then
            L9_2 = 1.0
            if L9_2 then
              goto lbl_36
            end
          end
          L9_2 = 0.3
          ::lbl_36::
          L8_2.alpha = L9_2
        end
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAvatar
  L4_2 = A0_2._avatar_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._avatar_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._on_avatar_unlock_skill_tree_finish = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._point_click_callback = A1_2
  A0_2._point_click_handler = A2_2
end
L0_1.register_point_click_callback = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._skill_tree_btn_list
  if L1_2 then
    L1_2 = A0_2._skill_tree_btn_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._skill_tree_btn_list
      L1_2 = L1_2[3]
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._item_load_finish_count
  L1_2 = L1_2 + 1
  A0_2._item_load_finish_count = L1_2
  L1_2 = A0_2._item_load_finish_count
  L2_2 = L2_1
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._generate_navigation
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_line
    L1_2(L2_2)
  end
end
L0_1.on_asyncload_finished = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._skill_tree_item_list
  if L1_2 then
    L1_2 = A0_2._tree_point_datas
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = 1
      L2_2 = A0_2._tree_point_datas
      L2_2 = #L2_2
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = A0_2._tree_point_datas
        L5_2 = L5_2[L4_2]
        L6_2 = A0_2._skill_tree_item_list
        L6_2 = L6_2[L4_2]
        L7_2 = A0_2._binder
        L7_2 = L7_2.nodes_tree_line
        L8_2 = L5_2.PointID
        L7_2 = L7_2[L8_2]
        if L7_2 ~= nil then
          L9_2 = L6_2
          L8_2 = L6_2.show_reach_line
          L8_2 = L8_2(L9_2)
          if L8_2 then
            L8_2 = 1.0
            if L8_2 then
              goto lbl_31
            end
          end
          L8_2 = 0.3
          ::lbl_31::
          L7_2.alpha = L8_2
        end
      end
    end
  end
end
L0_1._refresh_line = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._skill_tree_btn_list = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._skill_tree_item_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._skill_tree_btn_list
    L8_2 = L5_2._binder
    L8_2 = L8_2.btn_root
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.AvatarBaseType
  L2_2 = ipairs
  L3_2 = A0_2._skill_tree_btn_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.SKillNavigationConfigExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L1_2
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L8_2 = A0_2._skill_tree_btn_list
      L8_2 = L8_2[L5_2]
      L9_2 = L8_2.navigation
      L10_2 = CS
      L10_2 = L10_2.UnityEngine
      L10_2 = L10_2.UI
      L10_2 = L10_2.Navigation
      L10_2 = L10_2.Mode
      L10_2 = L10_2.Explicit
      L9_2.mode = L10_2
      L10_2 = L7_2.Up
      if L10_2 then
        L10_2 = A0_2._skill_tree_btn_list
        L11_2 = L7_2.Up
        L10_2 = L10_2[L11_2]
        L9_2.selectOnUp = L10_2
      end
      L10_2 = L7_2.Down
      if L10_2 then
        L10_2 = A0_2._skill_tree_btn_list
        L11_2 = L7_2.Down
        L10_2 = L10_2[L11_2]
        L9_2.selectOnDown = L10_2
      end
      L10_2 = L7_2.Left
      if L10_2 then
        L10_2 = A0_2._skill_tree_btn_list
        L11_2 = L7_2.Left
        L10_2 = L10_2[L11_2]
        L9_2.selectOnLeft = L10_2
      end
      L10_2 = L7_2.Right
      if L10_2 then
        L10_2 = A0_2._skill_tree_btn_list
        L11_2 = L7_2.Right
        L10_2 = L10_2[L11_2]
        L9_2.selectOnRight = L10_2
      end
      L8_2.navigation = L9_2
    end
  end
end
L0_1._generate_navigation = L4_1
return L0_1
