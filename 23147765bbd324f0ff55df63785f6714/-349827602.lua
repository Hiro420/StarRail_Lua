local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonBossIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherChallengeMonsterPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 == nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_loader
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.show_forbidden
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_boss_panel
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.setup_view_by_monster_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view_by_monster_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_forbidden = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_add
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_fobidden
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._panel_boss
  if L2_2 ~= nil then
    L2_2 = A0_2._panel_boss
    L3_2 = L2_2
    L2_2 = L2_2.set_interactable
    L4_2 = not A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.show_forbidden = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._panel_boss
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.prefab_loader
    L3_2 = L3_2.Prefab
    L4_2 = A0_2._binder
    L4_2 = L4_2.prefab_loader
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.AetherCommonBossIconPanel
    L5_2 = G
    L5_2 = L5_2.AetherCommonBossIconPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._panel_boss = L2_2
    L2_2 = A0_2._panel_boss
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._panel_boss
    L3_2 = L2_2
    L2_2 = L2_2.set_interactable
    L4_2 = A0_2._is_forbidden
    L4_2 = not L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._callback
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2.register_click_callback
      L4_2 = A0_2._callback
      L5_2 = A0_2._callback_self
      L6_2 = A0_2._index
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
  L1_2 = A0_2._panel_boss
  return L1_2
end
L0_1._get_boss_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2 == nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_loader
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_boss_panel
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2.Row
  if L4_2 ~= nil then
    L6_2 = L3_2
    L5_2 = L3_2.setup_icon
    L7_2 = L4_2.SideAvatarHeadIconPath
    L5_2(L6_2, L7_2)
    L6_2 = L3_2
    L5_2 = L3_2.setup_aether_spirit_type
    L7_2 = L4_2.SpiritType
    L5_2(L6_2, L7_2)
    L6_2 = L3_2
    L5_2 = L3_2.show_elite_icon
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L6_2 = L3_2
  L5_2 = L3_2.setup_level
  L7_2 = A1_2.Promotion
  L5_2(L6_2, L7_2)
end
L0_1.setup_view_by_avatar = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._panel_boss
  if L4_2 ~= nil then
    L4_2 = A0_2._panel_boss
    L5_2 = L4_2
    L4_2 = L4_2.bind_click
    L6_2 = A2_2
    L7_2 = A1_2
    L8_2 = A3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
    A0_2._callback = nil
    A0_2._callback_self = nil
    A0_2._index = nil
  else
    A0_2._callback = A1_2
    A0_2._callback_self = A2_2
    A0_2._index = A3_2
  end
end
L0_1.register_click_callback = L1_1
return L0_1
