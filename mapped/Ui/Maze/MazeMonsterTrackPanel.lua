local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Maze.MazeMonsterTrackPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeMonsterTrackPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BigMapModule
L2_1 = 6
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._mission_hint_node = A3_2
  A0_2._last_show_time = 0
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_view
  L1_2(L2_2)
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_navi_hint
  L4_2 = A0_2._on_btn_navi_hint_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIUpdateMonsterTraceHint
  L4_2 = L0_1._on_ui_update_monster_trace_hint
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonoLuaCallbackTick
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.SetLuaCallback
  L4_2 = A0_2._custom_tick
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_event
  L3_2 = L2_2
  L2_2 = L2_2.AddAnimationEvent
  L4_2 = "MissionList_Fadeout"
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._hide_view
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._last_show_time
  if 0 < L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Time
    L1_2 = L1_2.time
    L2_2 = A0_2._last_show_time
    L1_2 = L1_2 - L2_2
    L2_2 = L2_1
    if L1_2 > L2_2 then
      A0_2._last_show_time = 0
      L2_2 = A0_2
      L1_2 = A0_2._play_fadeout_anim
      L1_2(L2_2)
    end
  end
end
L0_1._custom_tick = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mission_hint_node
  if L1_2 then
    L1_2 = A0_2._mission_hint_node
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  A0_2._last_show_time = 0
end
L0_1._hide_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GotoMonsterTrackID
  L1_2(L2_2)
end
L0_1._on_btn_navi_hint_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_fadein_anim
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  A0_2._last_show_time = L2_2
  L2_2 = A0_2._mission_hint_node
  if L2_2 then
    L2_2 = A0_2._mission_hint_node
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A1_2
  if L2_2 and 0 < L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_NPCMonsterTrack_FinishHint_CurrentMapClear"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_navi_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AreaMapConfigExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BigMapUtils
    L4_2 = L4_2.GetWorldIDByEntranceID
    L5_2 = L3_2.ID
    L4_2 = L4_2(L5_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.WorldDataConfigExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L5_2.WorldName
    L6_2 = L6_2(L7_2)
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L3_2.Name
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.txt_desc
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetTextID
    L10_2 = "UIText_NPCMonsterTrack_FinishHint_LocationHint"
    L11_2 = L6_2
    L12_2 = L7_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_NPCMonsterTrack_FinishHint_AllMapClear"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_navi_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_ui_update_monster_trace_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.fade_anim
  L1_2 = L1_2.EntranceAnimationClip
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L1_2.name
  L2_2(L3_2, L4_2)
end
L0_1._play_fadein_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.fade_anim
  L1_2 = L1_2.ExitAnimationClip
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L1_2.name
  L2_2(L3_2, L4_2)
end
L0_1._play_fadeout_anim = L3_1
return L0_1
