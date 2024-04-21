local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.TreasureDungeon.TreasureDungeonGrid3DPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonUtils"
L0_1(L1_1)
L0_1 = 5
L1_1 = L0_1 * L0_1
L2_1 = {}
L3_1 = {}
L4_1 = 13
L3_1[1] = L4_1
L4_1 = {}
L5_1 = 7
L6_1 = 8
L7_1 = 9
L8_1 = 12
L9_1 = 14
L10_1 = 17
L11_1 = 18
L12_1 = 19
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L4_1[4] = L8_1
L4_1[5] = L9_1
L4_1[6] = L10_1
L4_1[7] = L11_1
L4_1[8] = L12_1
L5_1 = {}
L6_1 = 1
L7_1 = 2
L8_1 = 3
L9_1 = 4
L10_1 = 5
L11_1 = 6
L12_1 = 10
L13_1 = 11
L14_1 = 15
L15_1 = 16
L16_1 = 20
L17_1 = 21
L18_1 = 22
L19_1 = 23
L20_1 = 24
L21_1 = 25
L5_1[1] = L6_1
L5_1[2] = L7_1
L5_1[3] = L8_1
L5_1[4] = L9_1
L5_1[5] = L10_1
L5_1[6] = L11_1
L5_1[7] = L12_1
L5_1[8] = L13_1
L5_1[9] = L14_1
L5_1[10] = L15_1
L5_1[11] = L16_1
L5_1[12] = L17_1
L5_1[13] = L18_1
L5_1[14] = L19_1
L5_1[15] = L20_1
L5_1[16] = L21_1
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "TreasureDungeonUI3DPage"
L5_1 = G
L5_1 = L5_1.UI3DController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/TreasureDungeon/_dependencies/Prefabs/TreasureDungeon3D.prefab"
  L1_2 = {}
  A0_2._panels_grid = L1_2
  A0_2._is_first = true
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._panels_grid = L1_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.TreasureDungeonGrid3DPanel
    L8_2 = "BoxChips/Grid"
    L9_2 = L4_2
    L8_2 = L8_2 .. L9_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.set_active_light_weight
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._panels_grid
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.MeshRenderer
  L4_2 = "BackGround"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mesh_render = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxChips/MaskBlack"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_mask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BoxChips/MaskBlack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._btn_mask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._animation = L1_2
  L1_2 = G
  L1_2 = L1_2.UIButtonEventManager
  L1_2 = L1_2.bind
  L2_2 = A0_2._btn_mask
  L3_2 = A0_2
  L4_2 = A0_2._on_btn_mask
  L5_2 = nil
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._button_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._switch_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._switch_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._switch_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_continue_switch
    L0_3(L1_3)
  end
  L4_2 = 0.3
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._switch_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_navigation
  L1_2(L2_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._button_event
  if L1_2 ~= nil then
    L1_2 = A0_2._button_event
    L2_2 = L1_2
    L1_2 = L1_2.IsEqualsNull
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._button_event
      L2_2 = L1_2
      L1_2 = L1_2.RemoveAllListeners
      L1_2(L2_2)
    end
  end
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = 1
  L2_2 = L0_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = {}
    L6_2 = 1
    L7_2 = L0_1
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = L0_1
      L11_2 = L4_2 - 1
      L10_2 = L10_2 * L11_2
      L10_2 = L10_2 + L9_2
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L5_2
      L13_2 = A0_2._panels_grid
      L13_2 = L13_2[L10_2]
      L14_2 = L13_2
      L13_2 = L13_2.get_first_selected_btn
      L13_2, L14_2 = L13_2(L14_2)
      L11_2(L12_2, L13_2, L14_2)
    end
    L6_2 = G
    L6_2 = L6_2.UIUtils
    L6_2 = L6_2.setup_navigation
    L7_2 = L5_2
    L8_2 = NavigationType
    L8_2 = L8_2.Horizontal
    L9_2 = false
    L10_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L1_2 = 1
  L2_2 = L0_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = {}
    L6_2 = 1
    L7_2 = L0_1
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = L0_1
      L11_2 = L9_2 - 1
      L10_2 = L10_2 * L11_2
      L10_2 = L4_2 + L10_2
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L5_2
      L13_2 = A0_2._panels_grid
      L13_2 = L13_2[L10_2]
      L14_2 = L13_2
      L13_2 = L13_2.get_first_selected_btn
      L13_2, L14_2 = L13_2(L14_2)
      L11_2(L12_2, L13_2, L14_2)
    end
    L6_2 = G
    L6_2 = L6_2.UIUtils
    L6_2 = L6_2.setup_navigation
    L7_2 = L5_2
    L8_2 = NavigationType
    L8_2 = L8_2.Vertical
    L9_2 = false
    L10_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L3_1._init_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_TreasureDungeon_Stage_BombTargetTips"
  L1_2(L2_2, L3_2)
end
L3_1._on_btn_mask = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._navigation_callback = A1_2
  A0_2._navigation_handler = A2_2
end
L3_1.register_navigation_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._fade_in_callback = A1_2
  A0_2._fade_in_handler = A2_2
end
L3_1.register_fade_in_callback = L4_1
function L4_1(A0_2, A1_2)
end
L3_1._on_active_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._mesh_render
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AssetLoader
  L3_2 = L3_2.SyncLoadAsset
  L4_2 = A1_2.Row
  L4_2 = L4_2.ImgPath
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Material
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2.material = L3_2
  L2_2 = ipairs
  L3_2 = A0_2._panels_grid
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.setup_type
    L9_2 = A1_2.Row
    L9_2 = L9_2.GridPrefabType
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_select_callback
    L9_2 = A0_2._on_selected
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_click_callback
    L9_2 = A0_2._on_clicked
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L3_1.set_level = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = ipairs
  L3_2 = A0_2._panels_grid
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A1_2
    L7_2 = A1_2.GetGridByIndex
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = L6_2
    L8_2 = L6_2.try_play_changed
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L3_1._try_play_changed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._panels_grid
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.play_door_opened
  L3_2(L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.is_key_door
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_TreasureDungeon_Hint_Key"
    L3_2(L4_2, L5_2)
  else
    L4_2 = L2_2
    L3_2 = L2_2.is_final_door
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.UIPileToastMessageTextID
      L5_2 = "UIText_TreasureDungeon_Hint_FinalDoor_UnLock"
      L3_2(L4_2, L5_2)
    end
  end
end
L3_1.try_play_door_opend = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._panels_grid
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.is_key_door
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.is_final_door
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        goto lbl_14
      end
    end
    do return L4_2 end
    ::lbl_14::
  end
  L1_2 = 0
  return L1_2
end
L3_1._get_door_index = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._level_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._in_ultra
  if L2_2 == A1_2 then
    return
  end
  A0_2._in_ultra = A1_2
  L2_2 = ipairs
  L3_2 = A0_2._panels_grid
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.refresh_ultra_view
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L3_1.refresh_ultra_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._level_data
  if L1_2 == nil then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2._panels_grid
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._level_data
    L9_2 = A0_2._level_data
    L10_2 = L9_2
    L9_2 = L9_2.GetGridByIndex
    L11_2 = L4_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = A0_2._in_ultra
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L3_1._refresh_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  A0_2._level_data = A1_2
  L3_2 = ipairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._panels_grid
    L8_2 = L8_2[L7_2]
    L9_2 = A0_2._level_data
    L10_2 = L9_2
    L9_2 = L9_2.GetGridByIndex
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    L11_2 = L8_2
    L10_2 = L8_2.setup_view_on_change
    L12_2 = A0_2._level_data
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
  end
end
L3_1.setup_view_on_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._in_switch = A1_2
  if A1_2 then
    A0_2._switching_order = 1
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.CoroutineUtils
    L2_2 = L2_2.InvokeAfterFrames
    L3_2 = 2
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2._is_destroyed
      if L0_3 then
        return
      end
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_continue_switch
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._block_interact
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = ipairs
    L3_2 = A0_2._panels_grid
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = L6_2
      L7_2 = L6_2.play_fade_in
      L7_2(L8_2)
      L8_2 = L6_2
      L7_2 = L6_2.set_active_light_weight
      L9_2 = true
      L7_2(L8_2, L9_2)
    end
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.invoke_callback
    L3_2 = A0_2._fade_in_callback
    L4_2 = A0_2._fade_in_handler
    L2_2(L3_2, L4_2)
  end
end
L3_1.play_fade_in = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._is_destroyed
  if not L1_2 then
    L1_2 = A0_2._in_switch
    if L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._switching_order
  L1_2 = L2_1[L1_2]
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if L2_2 ~= 0 then
      goto lbl_25
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._block_interact
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._fade_in_callback
  L4_2 = A0_2._fade_in_handler
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_25::
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._panels_grid
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.play_fade_in
    L7_2(L8_2)
    L7_2 = A0_2._panels_grid
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.set_active_light_weight
    L9_2 = true
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._switching_order
  L2_2 = L2_2 + 1
  A0_2._switching_order = L2_2
  L2_2 = A0_2._switch_timer
  if L2_2 ~= nil then
    L2_2 = A0_2._switch_timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._switch_timer
    L3_2 = L2_2
    L2_2 = L2_2.start
    L2_2(L3_2)
  end
end
L3_1._try_continue_switch = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._block_interact
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = ipairs
  L2_2 = A0_2._panels_grid
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.play_fade_out
    L6_2(L7_2)
  end
end
L3_1.play_fade_out = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._panels_grid
  L2_2 = L2_2[A1_2]
  return L2_2
end
L3_1.get_grid = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._node_mask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = ipairs
  L3_2 = A0_2._panels_grid
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.set_mask
    L9_2 = A1_2 or L9_2
    if A1_2 then
      L10_2 = L6_2
      L9_2 = L6_2.is_ultra_interactable
      L9_2 = L9_2(L10_2)
      L9_2 = not L9_2
    end
    L7_2(L8_2, L9_2)
  end
end
L3_1.show_mask = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._set_selected_view
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  if A2_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.invoke_callback
    L4_2 = A0_2._navigation_callback
    L5_2 = A0_2._navigation_handler
    L7_2 = A0_2
    L6_2 = A0_2.get_selected_object
    L8_2 = A1_2
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L3_1._on_selected = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A1_2.GridIndex
  A0_2._selected_index = L3_2
  if A2_2 then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.invoke_callback
    L5_2 = A0_2._navigation_callback
    L6_2 = A0_2._navigation_handler
    L8_2 = A0_2
    L7_2 = A0_2.get_selected_object
    L9_2 = L3_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L4_2 = A1_2.IsLocked
    if L4_2 then
      L4_2 = G
      L4_2 = L4_2.TreasureDungeonUtils
      L4_2 = L4_2.get_neighbor_indexes
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = ipairs
      L6_2 = L4_2
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = A0_2._panels_grid
        L10_2 = L10_2[L9_2]
        if L10_2 ~= nil then
          L12_2 = L10_2
          L11_2 = L10_2.try_play_monster_locking
          L11_2(L12_2)
        end
      end
    end
  end
end
L3_1._on_clicked = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A1_2 or L3_2
  if not A2_2 or not A1_2 then
    L3_2 = 0
  end
  A0_2._selected_index = L3_2
  L3_2 = ipairs
  L4_2 = A0_2._panels_grid
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if A2_2 then
      L9_2 = L7_2
      L8_2 = L7_2.set_selected
      L10_2 = A1_2 == L6_2
      L8_2(L9_2, L10_2)
    elseif A1_2 == L6_2 then
      L9_2 = L7_2
      L8_2 = L7_2.set_selected
      L10_2 = false
      L8_2(L9_2, L10_2)
    end
  end
end
L3_1._set_selected_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_selected_view
  L1_2(L2_2)
end
L3_1.on_in_control_input_switch = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._panels_grid
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.block_interact
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L3_1._block_interact = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._panels_grid
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_selected
    L8_2 = G
    L8_2 = L8_2.Utils
    L8_2 = L8_2.is_gamepad_input
    L8_2 = L8_2()
    if L8_2 then
      L8_2 = A0_2._selected_index
      L8_2 = L8_2 == L4_2
    end
    L6_2(L7_2, L8_2)
  end
end
L3_1._refresh_selected_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._panels_grid
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.is_key_door
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.is_final_door
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        goto lbl_16
      end
    end
    L7_2 = L5_2
    L6_2 = L5_2.get_first_selected_object
    do return L6_2(L7_2) end
    ::lbl_16::
  end
end
L3_1.get_door_grid_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._panels_grid
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.is_ultra_interactable
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.get_first_selected_object
      return L6_2(L7_2)
    end
  end
end
L3_1.get_first_ultra_grid_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panels_grid
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.get_first_selected_object
  return L3_2(L4_2)
end
L3_1.get_selected_object = L4_1
return L3_1
