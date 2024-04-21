local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = "SpriteOutput/ItemFigures/Activity/TreasureDungeon/UI3D_KeyDoor_UnLock.png"
L1_1 = "SpriteOutput/ItemFigures/Activity/TreasureDungeon/UI3D_FinalDoor_UnLock.png"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "TreasureDungeonGridContentItem3DPanel"
L4_1 = G
L4_1 = L4_1.BaseUI3DPanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Icon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.MeshRenderer
  L4_2 = "Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._renderer_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Icon/RoleIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_role = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.MeshRenderer
  L4_2 = "Icon/RoleIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._renderer_role = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.MeshRenderer
  L4_2 = "Mask"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._renderer_mask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._anim = L1_2
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
  L6_2 = "Item_FadeOut"
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fade_out_timer = L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._grid_data = A1_2
  L2_2 = A0_2._grid_data
  L2_2 = L2_2.IsEmpty
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._grid_data
  L1_2 = L1_2.IsEmpty
  L1_2 = A0_2._grid_data
  L1_2 = not L1_2 and L1_2
  L2_2 = A0_2._node_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2._grid_data
  L2_2 = L2_2.GridType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.TreasureDungeonGridType
  L3_2 = L3_2.TrialAvatar
  L2_2 = L2_2 == L3_2
  L3_2 = A0_2._node_role
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_icon_path
  L3_2 = L3_2(L4_2)
  if L2_2 then
    L4_2 = A0_2._renderer_icon
    L4_2 = L4_2.material
    L5_2 = G
    L5_2 = L5_2.AssetLoader
    L5_2 = L5_2.SyncLoadAsset
    L6_2 = "SpriteOutput/ItemFigures/Activity/TreasureDungeon/UI3D_TrialRole.png"
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.Texture2D
    L7_2, L8_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2.mainTexture = L5_2
    L4_2 = A0_2._renderer_role
    L4_2 = L4_2.material
    L5_2 = G
    L5_2 = L5_2.AssetLoader
    L5_2 = L5_2.SyncLoadAsset
    L6_2 = L3_2
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.Texture2D
    L7_2, L8_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2.mainTexture = L5_2
    L4_2 = A0_2._renderer_mask
    L4_2 = L4_2.material
    L5_2 = G
    L5_2 = L5_2.AssetLoader
    L5_2 = L5_2.SyncLoadAsset
    L6_2 = "SpriteOutput/ItemFigures/Activity/TreasureDungeon/UI3D_RandomRole.png"
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.Texture2D
    L7_2, L8_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2.mainTexture = L5_2
  else
    L4_2 = A0_2._renderer_icon
    L4_2 = L4_2.material
    L5_2 = G
    L5_2 = L5_2.AssetLoader
    L5_2 = L5_2.SyncLoadAsset
    L6_2 = L3_2
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.Texture2D
    L7_2, L8_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2.mainTexture = L5_2
    L4_2 = A0_2._renderer_mask
    L4_2 = L4_2.material
    L5_2 = G
    L5_2 = L5_2.AssetLoader
    L5_2 = L5_2.SyncLoadAsset
    L6_2 = L3_2
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.Texture2D
    L7_2, L8_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2.mainTexture = L5_2
  end
end
L2_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._grid_data
  L1_2 = A0_2._grid_data
  L1_2 = L1_2.IsEmpty
  L1_2 = A0_2._grid_data
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L2_1._is_show = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._grid_data
  L1_2 = L1_2.GridType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TreasureDungeonGridType
  L2_2 = L2_2.FinalDoor
  if L1_2 == L2_2 then
    L1_2 = A0_2._grid_data
    L1_2 = L1_2.CanInteract
    if L1_2 then
      L1_2 = L1_1
      if L1_2 then
        goto lbl_19
      end
    end
    L1_2 = A0_2._grid_data
    L1_2 = L1_2.IconPath
    ::lbl_19::
    return L1_2
  else
    L1_2 = A0_2._grid_data
    L1_2 = L1_2.GridType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonGridType
    L2_2 = L2_2.KeyDoor
    if L1_2 == L2_2 then
      L1_2 = A0_2._grid_data
      L1_2 = L1_2.CanInteract
      if L1_2 then
        L1_2 = L0_1
        if L1_2 then
          goto lbl_39
        end
      end
      L1_2 = A0_2._grid_data
      L1_2 = L1_2.IconPath
      ::lbl_39::
      return L1_2
    else
      L1_2 = A0_2._grid_data
      L1_2 = L1_2.IconPath
      return L1_2
    end
  end
end
L2_1._get_icon_path = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._renderer_mask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L5_2 = A0_2
  L4_2 = A0_2._is_show
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = A1_2
  end
  L2_2(L3_2, L4_2)
end
L2_1.set_mask = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._anim
  L3_2 = "Item_FadeIn"
  L1_2(L2_2, L3_2)
end
L2_1.play_fade_in = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._anim
  L4_2 = "Item_FadeOut"
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
L2_1.play_fade_out = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._anim
  L3_2 = "Item_UnlockHint"
  L1_2(L2_2, L3_2)
end
L2_1.play_door_opened = L3_1
function L3_1(A0_2)
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
L2_1._on_fade_out_end = L3_1
return L2_1
