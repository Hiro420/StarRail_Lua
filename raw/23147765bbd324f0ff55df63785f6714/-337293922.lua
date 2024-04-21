local L0_1, L1_1, L2_1, L3_1
L0_1 = "Pig_Born"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TreasureDungeonGridContentMonsterTrotter3DPanel"
L3_1 = G
L3_1 = L3_1.BaseUI3DPanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Mask"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_mask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Icon/EliteMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_elite = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._anim = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.MeshRenderer
  L4_2 = "Mask"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._renderer_mask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Effectcontainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_effect = L1_2
  A0_2._in_fade_in = false
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._stop_fade_in_timer
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_in_end
    L0_3(L1_3)
  end
  L4_2 = A0_2._anim
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = L0_1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fade_in_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._switch_out_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._switch_out_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._switch_out_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_switch_out_end
    L0_3(L1_3)
  end
  L4_2 = A0_2._anim
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = "Pig_Dead"
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._switch_out_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._fade_out_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._fade_out_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._fade_out_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_out_end
    L0_3(L1_3)
  end
  L4_2 = A0_2._anim
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = "Pig_Run"
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fade_out_timer = L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A1_2 then
    L2_2 = A0_2._node_effect
    L2_2 = L2_2.childCount
    L3_2 = 0
    L4_2 = L2_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._node_effect
      L8_2 = L7_2
      L7_2 = L7_2.GetChild
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  end
end
L1_1._on_owner_active_change = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._grid_data = A1_2
  A0_2._level_data = A2_2
  L3_2 = A0_2._grid_data
  L3_2 = L3_2.IsEmpty
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_elite_view
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._grid_data
  L1_2 = L1_2.IsEmpty
  if L1_2 then
    L1_2 = A0_2._node_elite
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._grid_data
  L1_2 = L1_2.GridType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TreasureDungeonGridType
  L2_2 = L2_2.Enemy
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._node_elite
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._renderer_mask
  L2_2 = L2_2.material
  L3_2 = G
  L3_2 = L3_2.AssetLoader
  L3_2 = L3_2.SyncLoadAsset
  L4_2 = A0_2._grid_data
  L4_2 = L4_2.IconPath
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Texture2D
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.mainTexture = L3_2
end
L1_1._refresh_elite_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._node_mask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.set_mask = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._anim
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
  A0_2._in_fade_in = true
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
end
L1_1.play_fade_in = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._in_fade_in = false
  L1_2 = A0_2._fade_in_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._fade_in_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._fade_in_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
  end
end
L1_1._stop_fade_in_timer = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._anim
  L4_2 = "Pig_Run"
  L2_2(L3_2, L4_2)
  A0_2._fade_out_callback = A1_2
  L2_2 = A0_2._fade_out_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
  L2_2 = A0_2._fade_out_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
end
L1_1.play_fade_out = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._anim
  L4_2 = "Pig_Dead"
  L2_2(L3_2, L4_2)
  A0_2._switch_out_callback = A1_2
  L2_2 = A0_2._switch_out_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
  L2_2 = A0_2._switch_out_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
end
L1_1.play_switch_out = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._in_fade_in
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._stop_fade_in_timer
    L1_2(L2_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToEnd
    L2_2 = A0_2._anim
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._anim
  L3_2 = "Monster_Stronger"
  L1_2(L2_2, L3_2)
end
L1_1.play_enhance = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._in_fade_in
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._stop_fade_in_timer
    L1_2(L2_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToEnd
    L2_2 = A0_2._anim
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._anim
  L3_2 = "Monster_Weaker"
  L1_2(L2_2, L3_2)
end
L1_1.play_weaken = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.is_destroyed
  if L1_2 then
    return
  end
  A0_2._in_fade_in = false
  L1_2 = G
  L1_2 = L1_2.TreasureDungeonUtils
  L1_2 = L1_2.is_grid_enhanced
  L2_2 = A0_2._grid_data
  L3_2 = A0_2._level_data
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.play_enhance
    L2_2(L3_2)
  end
end
L1_1._on_fade_in_end = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.is_destroyed
  if L1_2 then
    A0_2._switch_out_callback = nil
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._switch_out_callback
  L1_2(L2_2)
  A0_2._switch_out_callback = nil
end
L1_1._on_switch_out_end = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.is_destroyed
  if L1_2 then
    A0_2._fade_out_callback = nil
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._fade_out_callback
  L1_2(L2_2)
  A0_2._fade_out_callback = nil
end
L1_1._on_fade_out_end = L2_1
return L1_1
