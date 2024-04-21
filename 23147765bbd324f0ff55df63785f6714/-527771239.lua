local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SkillTreePointItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
L3_1 = {}
L3_1.Locked = 1
L3_1.Activatable = 2
L3_1.Activated = 3
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._point_data = A3_2
  A0_2._avatar_data = A4_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  A0_2._btn_click_callback = A1_2
end
L0_1.register_click_callback = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._binder
  L5_2 = L4_2
  L4_2 = L4_2.is_bound
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.is_bind_finish
  if L4_2 == false then
    return
  end
  A0_2._point_data = A1_2
  A0_2._selected_point = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.gameObject
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L4_2 = L4_2.parent
  L4_2 = L4_2.name
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.SkillTreeData
  L3_2 = L2_2
  L2_2 = L2_2.GetSkillTreePointLevel
  L4_2 = A0_2._point_data
  L4_2 = L4_2.PointID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._cur_point_level = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_selected
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_selected
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 and A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation_root
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = "SkillTreeIcon_ActivateEff_Small"
    L3_2(L4_2, L5_2)
  end
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_point_state
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_locked
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L3_1.Locked
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_activatable
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L3_1.Activatable
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_activated
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L3_1.Activated
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skill_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L3_1.Activated
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = L3_1.Locked
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_locked_skill_icon
    L5_2 = A0_2._point_data
    L5_2 = L5_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = L3_1.Activatable
    if L1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._async_load_sprite_to
      L4_2 = A0_2._binder
      L4_2 = L4_2.img_activatable_skill_icon
      L5_2 = A0_2._point_data
      L5_2 = L5_2.IconPath
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = L3_1.Activated
      if L1_2 == L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._async_load_sprite_to
        L4_2 = A0_2._binder
        L4_2 = L4_2.img_activated_skill_icon
        L5_2 = A0_2._point_data
        L5_2 = L5_2.IconPath
        L2_2(L3_2, L4_2, L5_2)
        L3_2 = A0_2
        L2_2 = A0_2._setup_icon_level
        L2_2(L3_2)
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._can_be_promoted_check_avatar
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._can_be_promoted_check_cost
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_to_be_activated
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2 or L6_2
  if L2_2 then
    L6_2 = not L3_2
  end
  L4_2(L5_2, L6_2)
end
L0_1._setup_icon = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarSkillTreeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._point_data
  L2_2 = L2_2.PointID
  L3_2 = A0_2._cur_point_level
  L3_2 = L3_2 + 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = true
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.is_skill_pre_point_enough
  L3_2 = A0_2._avatar_data
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L0_1.show_reach_line = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._point_data
  L1_2 = L1_2.PointType
  L1_2 = L1_2 ~= 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = nil
  L3_2 = A0_2._point_data
  L3_2 = L3_2.PointType
  if L3_2 == 2 then
    L3_2 = A0_2._point_data
    L3_2 = L3_2.LevelUpSkillID
    L3_2 = L3_2[0]
    if not L3_2 then
      L3_2 = 0
    end
    L4_2 = A0_2._avatar_data
    L4_2 = L4_2.SkillTreeData
    L5_2 = L4_2
    L4_2 = L4_2.GetSkillPointLevel
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L2_2 = L4_2
  else
    L2_2 = A0_2._cur_point_level
  end
  L3_2 = A0_2._cur_point_level
  L3_2 = L2_2 - L3_2
  L4_2 = A0_2._point_data
  L4_2 = L4_2.MaxLevel
  L4_2 = L3_2 + L4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_level
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_Stamima_Current"
  L8_2 = L2_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_level
  if 0 < L3_2 then
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = "#2EFFF8"
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_66
    end
  end
  L6_2 = G
  L6_2 = L6_2.UIColorUtils
  L6_2 = L6_2.GetColor
  L7_2 = "#FFFFFF"
  L6_2 = L6_2(L7_2)
  ::lbl_66::
  L5_2.color = L6_2
  L6_2 = A0_2
  L5_2 = A0_2._can_be_promoted
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_level_up
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end
L0_1._setup_icon_level = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_point_level
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._can_be_promoted
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = L3_1.Activatable
      return L1_2
    else
      L1_2 = L3_1.Locked
      return L1_2
    end
  else
    L1_2 = L3_1.Activated
    return L1_2
  end
end
L0_1._get_point_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.is_skill_upgradable
  L2_2 = A0_2._avatar_data
  L3_2 = A0_2._point_data
  L3_2 = L3_2.PointID
  L4_2 = A0_2._cur_point_level
  L1_2 = not L1_2 and L1_2
  return L1_2
end
L0_1._can_be_promoted = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.is_skill_upgradable_check_avatar_with_point
  L2_2 = A0_2._avatar_data
  L3_2 = A0_2._point_data
  L3_2 = L3_2.PointID
  L4_2 = A0_2._cur_point_level
  L1_2 = not L1_2 and L1_2
  return L1_2
end
L0_1._can_be_promoted_check_avatar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.is_skill_upgradable_check_cost_with_point
  L2_2 = A0_2._point_data
  L2_2 = L2_2.PointID
  L3_2 = A0_2._cur_point_level
  L1_2 = not L1_2 and L1_2
  return L1_2
end
L0_1._can_be_promoted_check_cost = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._selected_point
  if L1_2 then
    L1_2 = A0_2._selected_point
    L1_2 = L1_2.PointID
    L2_2 = A0_2._point_data
    L2_2 = L2_2.PointID
  end
  L1_2 = L1_2 == L2_2 or L1_2
  return L1_2
end
L0_1._is_selected = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._btn_click_callback
  if L1_2 then
    L1_2 = A0_2._owner
    L1_2 = L1_2.is_played_fade_in
    if L1_2 ~= false then
      L1_2 = A0_2._owner
      L1_2 = L1_2.is_played_fade_in
      if L1_2 ~= true then
        goto lbl_19
      end
      L2_2 = A0_2
      L1_2 = A0_2._is_selected
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_19
      end
    end
    L1_2 = A0_2._btn_click_callback
    L2_2 = A0_2._point_data
    L1_2(L2_2)
  end
  ::lbl_19::
end
L0_1._on_btn_root_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._display_only
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.get_blackboard
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.query
    L4_2 = "IsDisplayOnly"
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = false
    end
    A0_2._display_only = L2_2
  end
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsDisplayOnly
  if not L1_2 then
    L1_2 = A0_2._display_only
  end
  return L1_2
end
L0_1._is_display_only = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._btn_click_callback = nil
end
L0_1._on_dispose = L4_1
return L0_1
