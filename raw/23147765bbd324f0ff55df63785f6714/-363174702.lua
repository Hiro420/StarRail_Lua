local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = "Battlepass"
L1_1 = "Battlepass/Bottom"
L2_1 = CS
L2_1 = L2_1.UnityEngine
L2_1 = L2_1.Vector3
L3_1 = -0.37
L4_1 = 0.07
L5_1 = 0.82
L2_1 = L2_1(L3_1, L4_1, L5_1)
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.Vector3
L4_1 = 0
L5_1 = -1.37
L6_1 = 0
L3_1 = L3_1(L4_1, L5_1, L6_1)
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = -0.37
L6_1 = 0.07
L7_1 = -0.54
L4_1 = L4_1(L5_1, L6_1, L7_1)
L5_1 = CS
L5_1 = L5_1.UnityEngine
L5_1 = L5_1.Vector3
L6_1 = 0
L7_1 = -0.37
L8_1 = 0
L5_1 = L5_1(L6_1, L7_1, L8_1)
L6_1 = CS
L6_1 = L6_1.UnityEngine
L6_1 = L6_1.Vector3
L7_1 = -0.37
L8_1 = 0.07
L9_1 = -0.54
L6_1 = L6_1(L7_1, L8_1, L9_1)
L7_1 = CS
L7_1 = L7_1.UnityEngine
L7_1 = L7_1.Vector3
L8_1 = -2.55
L9_1 = -1.07
L10_1 = 0
L7_1 = L7_1(L8_1, L9_1, L10_1)
L8_1 = 0.16
L9_1 = G
L9_1 = L9_1.Class
L10_1 = "LightconeSelectUI3DPage"
L11_1 = G
L11_1 = L11_1.UI3DController
L9_1 = L9_1(L10_1, L11_1)
function L10_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/LightCone/Prefabs/LightConeSelect.prefab"
  L1_2 = {}
  A0_2._lightcone_datas = L1_2
  A0_2._mono_lightcone_select = nil
  L1_2 = {}
  A0_2._mono_lightcones = L1_2
  L1_2 = {}
  A0_2._mono_anim_lightcones = L1_2
  A0_2._touch_enabled = true
end
L9_1.ctor = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SwipeStart
  L4_2 = A0_2._on_swipe_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.Swipe
  L4_2 = A0_2._on_swipe
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SwipeEnd
  L4_2 = A0_2._on_swipe_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SimpleTap
  L4_2 = A0_2._on_simple_tap
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._root
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.GetComponentInChildren
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LightConeSelect
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  A0_2._mono_lightcone_select = L1_2
  L1_2 = {}
  A0_2._mono_lightcones = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._mono_lightcone_select
  L2_2 = L2_2.lightCones
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._mono_lightcones
    L10_2 = L6_2
    L9_2 = L6_2.GetComponent
    L11_2 = typeof
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.Client
    L12_2 = L12_2.LightCone3D
    L11_2, L12_2, L13_2 = L11_2(L12_2)
    L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A0_2._mono_lightcone_select
  L3_2 = L3_2.AnimeLightCones
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._mono_anim_lightcones
    L11_2 = L7_2
    L10_2 = L7_2.GetComponent
    L12_2 = typeof
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.Client
    L13_2 = L13_2.LightCone3D
    L12_2, L13_2 = L12_2(L13_2)
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L3_2 = A0_2._mono_lightcone_select
  L3_2 = L3_2.AdaptAnchor
  A0_2._anchor = L3_2
  L3_2 = A0_2._root
  L3_2 = L3_2.transform
  L4_2 = L3_2
  L3_2 = L3_2.GetComponentInChildren
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Animation
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  A0_2.animation = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._adapt_pos
  L3_2(L4_2)
  L3_2 = A0_2._lightcone_datas
  L3_2 = #L3_2
  if 0 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_lightcone_view
    L3_2(L4_2)
  end
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.ButtonMutex
  L3_2 = L3_2(L4_2)
  A0_2._button_mutex = L3_2
  L3_2 = A0_2._button_mutex
  L4_2 = L3_2
  L3_2 = L3_2.ReleaseMutex
  L3_2(L4_2)
end
L9_1._on_load = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Screen
  L1_2 = L1_2.width
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Screen
  L2_2 = L2_2.height
  L3_2 = L1_2 / L2_2
  L4_2 = nil
  L5_2 = nil
  if L3_2 < 1.6 then
    L4_2 = L2_1
    L5_2 = L3_1
  elseif 2.1 < L3_2 then
    L4_2 = L6_1
    L5_2 = L7_1
  else
    L4_2 = L4_1
    L5_2 = L5_1
  end
  L6_2 = A0_2._root
  L7_2 = L6_2
  L6_2 = L6_2.SafeFind
  L8_2 = L0_1
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2._root
  L8_2 = L7_2
  L7_2 = L7_2.SafeFind
  L9_2 = L1_1
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.localPosition = L4_2
  L7_2.localPosition = L5_2
end
L9_1._adapt_pos = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Screen
  L1_2 = L1_2.width
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Screen
  L2_2 = L2_2.height
  L3_2 = L1_2 / L2_2
  if L3_2 < 1.6 then
    L4_2 = A0_2._anchor
    L4_2 = L4_2.position
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.Vector3
    L6_2 = 0
    L7_2 = 0.32
    L8_2 = 0
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L4_2 + L5_2
    return L4_2
  else
    L4_2 = A0_2._anchor
    L4_2 = L4_2.position
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.Vector3
    L6_2 = 0
    L7_2 = 0.08
    L8_2 = 0
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L4_2 + L5_2
    return L4_2
  end
end
L9_1.get_bottom_position = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_easy_touch_handlers
  L1_2(L2_2)
end
L9_1._on_dispose = L10_1
function L10_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L9_1.register_click_callback = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._lightcone_datas = L2_2
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ItemFactory
    L6_2 = L6_2.CreateEquipmentItemData
    L7_2 = A1_2[L5_2]
    L6_2 = L6_2(L7_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._lightcone_datas
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_lightcone_view
  L2_2(L3_2)
end
L9_1.set_lightcones = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._mono_lightcones
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._lightcone_datas
    L6_2 = L6_2[L4_2]
    L8_2 = L5_2
    L7_2 = L5_2.SetLightCone
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._mono_anim_lightcones
    L7_2 = #L7_2
    if L4_2 <= L7_2 then
      L7_2 = A0_2._mono_anim_lightcones
      L7_2 = L7_2[L4_2]
      if L7_2 ~= nil then
        L7_2 = A0_2._mono_anim_lightcones
        L7_2 = L7_2[L4_2]
        L8_2 = L7_2
        L7_2 = L7_2.SetLightCone
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L9_1._setup_lightcone_view = L10_1
function L10_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._mono_lightcone_select
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._touch_enabled
  if not L2_2 then
    return
  end
  L2_2 = A0_2._mono_lightcone_select
  L2_2.InManualControl = true
end
L9_1._on_swipe_start = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._mono_lightcone_select
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._touch_enabled
  if not L2_2 then
    return
  end
  L2_2 = A0_2._mono_lightcone_select
  L3_2 = A0_2._mono_lightcone_select
  L3_2 = L3_2.RotateDegree
  L4_2 = A1_2.deltaPosition
  L4_2 = L4_2.x
  L5_2 = L8_1
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 - L4_2
  L2_2.RotateDegree = L3_2
end
L9_1._on_swipe = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mono_lightcone_select
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._touch_enabled
  if not L2_2 then
    return
  end
  L2_2 = A0_2._mono_lightcone_select
  L2_2.InManualControl = false
  L2_2 = A0_2._mono_lightcone_select
  L3_2 = L2_2
  L2_2 = L2_2.Snap
  L4_2 = A1_2.swipeVector
  L4_2 = L4_2.x
  L4_2 = L4_2 < 0
  L2_2(L3_2, L4_2)
end
L9_1._on_swipe_end = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._touch_enabled
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.click_lightcone
  L2_2(L3_2)
end
L9_1._on_simple_tap = L10_1
function L10_1(A0_2, A1_2)
  A0_2._touch_enabled = A1_2
end
L9_1.enable_touth = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mono_lightcone_select
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AudioManager
  L3_2 = L3_2.AudioConfig
  L3_2 = L3_2.EventBattlePassClickLightCone
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ButtonMutex
  L1_2 = L1_2.click_mutex
  L2_2 = A0_2._button_mutex
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._click_callback
    L2_3 = A0_2._click_handler
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3.get_current_lightcone
    L3_3, L4_3 = L3_3(L4_3)
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L1_2(L2_2, L3_2)
end
L9_1.click_lightcone = L10_1
function L10_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._mono_lightcone_select
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._mono_lightcone_select
  L2_2.InManualControl = A1_2
end
L9_1.pause_idle_timer = L10_1
function L10_1(A0_2)
  local L1_2
  L1_2 = A0_2._mono_lightcone_select
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._mono_lightcone_select
  L1_2.InManualControl = false
end
L9_1.reset_idle_timer = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mono_lightcone_select
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._lightcone_datas
  L2_2 = A0_2._mono_lightcone_select
  L2_2 = L2_2.HighlightedIndex
  L2_2 = L2_2 + 1
  L1_2 = L1_2[L2_2]
  return L1_2
end
L9_1.get_current_lightcone = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mono_lightcone_select
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.reset_idle_timer
  L1_2(L2_2)
  L1_2 = A0_2._mono_lightcone_select
  L2_2 = L1_2
  L1_2 = L1_2.SnapToNext
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L9_1.move_next_lightcone = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mono_lightcone_select
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.reset_idle_timer
  L1_2(L2_2)
  L1_2 = A0_2._mono_lightcone_select
  L2_2 = L1_2
  L1_2 = L1_2.SnapToNext
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L9_1.move_last_lightcone = L10_1
return L9_1
