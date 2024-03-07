local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.Billboard.BillboardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.TextNPCNamePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.TextNPCTitlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.IconNPCTypePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.BillboardWayPointPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.BubbleTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.NPCWarningPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.TextFloatingPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.InwardBubbleTalkPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BillboardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 50
L2_1 = 1
L3_1 = "NameBoard"
L4_1 = "RuntimeID_"
L5_1 = "BillBoard_TextContainerFadeIn"
L6_1 = "BillBoard_TextContainerFadeOut"
L7_1 = "UI/BillBoard/Widget/ClockBoyBubbleTalkPanel.prefab"
L8_1 = 0
L9_1 = 1
L10_1 = {}
L10_1.Text = 1
L10_1.Warning = 2
L10_1.Icon = 4
L10_1.Bubble = 8
L10_1.InwardBubbleTalk = 16
L10_1.FloatingText = 32
L10_1.Title = 64
L10_1.HeartDial = 128
L10_1.WayPoint = 256
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.BillboardPanelBinder
  L1_2 = L1_2(L2_2)
  A0_2._binder = L1_2
  A0_2._game_object_name = ""
  A0_2._runtime_id = 0
  A0_2._npc_id = nil
  A0_2._is_text_active = false
  A0_2._is_root_active = true
  A0_2._mutex_status = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BillboardWayPointMutexConfig
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BillboardWayPointMutexStatus
  L2_2 = L2_2.BillboardShow
  L1_2 = L1_2(L2_2)
  A0_2._mutex_data = L1_2
  A0_2._name_panel = nil
  A0_2._title_panel = nil
  A0_2._type_icon_panel = nil
  A0_2._way_point_panel = nil
  A0_2._bubble_panel = nil
  A0_2._heartdial_bubble_panel = nil
  A0_2._npc_warning_panel = nil
  A0_2._is_billboard_enable = true
  A0_2._is_waypoint_show = false
  A0_2._pre_is_waypoint_show = false
  A0_2._is_npc_icon_show = false
  A0_2._need_rebuild_by_icon_container = false
end
L0_1.ctor = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._billboard_trans
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.root
      if L1_2 ~= nil then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L2_2 = A0_2
  L1_2 = A0_2._get_camera_distance
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._reset_text_anim
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._reset_icon_anim
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._reset_active_status
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActiveByScale
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._reset = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_MainCamera
  L1_2 = L1_2.transform
  A0_2._camera_trans = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  A0_2._billboard_trans = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_sub_panels
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UITextLanguageChange
  L4_2 = A0_2._setup_view
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshMissionWayPoint
  L4_2 = A0_2._setup_waypoint
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_event_text_container
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L6_1
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.ani_text_container
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetLightWeightActive
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.SetLateTickCallback
  L3_2 = A0_2._on_mono_tick
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_load = L11_1
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._is_billboard_enable = A2_2
  L3_2 = A1_2.Entity
  A0_2._entity = L3_2
  L3_2 = A0_2._entity
  L3_2 = L3_2.RuntimeID
  A0_2._runtime_id = L3_2
  L3_2 = A1_2.NPCID
  A0_2._npc_id = L3_2
  L3_2 = A1_2.TextIDName
  A0_2._text_id_name = L3_2
  L3_2 = A0_2._entity
  L4_2 = L3_2
  L3_2 = L3_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.NPCComponent
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._npc_cmp = L3_2
  L3_2 = A1_2.TextTitle
  A0_2._text_title = L3_2
  L3_2 = A1_2.TypeIconPath
  A0_2._type_icon_path = L3_2
  L3_2 = A1_2.BoardShowBit
  L3_2 = #L3_2
  A0_2._board_show_bit = L3_2
  L3_2 = A1_2.MinHeight
  A0_2._min_height = L3_2
  L3_2 = A1_2.MaxHeight
  A0_2._max_height = L3_2
  L3_2 = A1_2.XOffset
  A0_2._x_offset = L3_2
  L3_2 = A1_2.YOffset
  A0_2._y_offset = L3_2
  L3_2 = A1_2.ZOffset
  A0_2._z_offset = L3_2
  L3_2 = A1_2.ShowTop
  A0_2._show_top = L3_2
  L3_2 = A1_2.TypeToShowDistance
  A0_2._type_to_show_far = L3_2
  L3_2 = A1_2.FloatingText
  A0_2._text_id_floating = L3_2
  L3_2 = A1_2.InwardType
  A0_2._inward_bubble_type = L3_2
  L3_2 = A0_2._entity
  L3_2 = L3_2.EntityType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EntityType
  L4_2 = L4_2.AtmoNpc
  if L3_2 == L4_2 then
    L3_2 = A0_2._entity
    L3_2 = L3_2.UnityGO
    L3_2 = L3_2.transform
    L4_2 = L3_2
    L3_2 = L3_2.Find
    L5_2 = L3_1
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._attach_trans = L3_2
  else
    L3_2 = A0_2._entity
    L4_2 = L3_2
    L3_2 = L3_2.GetComponent
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.CharacterModelComponent
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L5_2 = L3_2
    L4_2 = L3_2.GetAttachPoint
    L6_2 = L3_1
    L4_2 = L4_2(L5_2, L6_2)
    A0_2._attach_trans = L4_2
  end
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.Assert
  L4_2 = A0_2._attach_trans
  L4_2 = L4_2 ~= nil
  L5_2 = "NPC ID "
  L6_2 = A0_2._npc_id
  L7_2 = " No AttachPoint: "
  L8_2 = L3_1
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.StrUtils
  L3_2 = L3_2.Concat
  L4_2 = L4_1
  L5_2 = A0_2._runtime_id
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._game_object_name = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._on_tick
  L5_2 = 0
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._notify_billboard_open
  L3_2(L4_2)
end
L0_1.setup_view = L11_1
function L11_1(A0_2)
  local L1_2
  L1_2 = A0_2._entity
  L1_2 = L1_2.UnityGO
  return L1_2
end
L0_1.get_entity_unity_go = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._name_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._name_panel
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._name_panel = nil
  end
  L1_2 = A0_2._title_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._title_panel
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._title_panel = nil
  end
  L1_2 = A0_2._type_icon_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._type_icon_panel
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._type_icon_panel = nil
  end
  L1_2 = A0_2._way_point_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._way_point_panel
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._way_point_panel = nil
  end
  L1_2 = A0_2._bubble_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._bubble_panel
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._bubble_panel = nil
  end
  L1_2 = A0_2._heartdial_bubble_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._heartdial_bubble_panel
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._heartdial_bubble_panel = nil
  end
  L1_2 = A0_2._inward_bubble_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._inward_bubble_panel
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._inward_bubble_panel = nil
  end
  L1_2 = A0_2._npc_warning_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._npc_warning_panel
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._npc_warning_panel = nil
  end
  L1_2 = A0_2._floating_text_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._floating_text_panel
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._floating_text_panel = nil
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UITextLanguageChange
  L4_2 = A0_2._refresh
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._mutex_data = nil
end
L0_1._on_dispose = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._notify_billboard_close
  L1_2(L2_2)
  A0_2._entity = nil
  A0_2._npc_cmp = nil
  A0_2._runtime_id = 0
  A0_2._npc_id = nil
  A0_2._text_id_name = nil
  A0_2._text_title = nil
  A0_2._type_icon_path = nil
  A0_2.waypointConfigTable = nil
  A0_2._warning_active = nil
  A0_2._is_text_active = nil
  A0_2._icon_active = nil
  A0_2._bubble_active = nil
  A0_2._is_waypoint_show = false
  A0_2._pre_is_waypoint_show = false
  L1_2 = A0_2._billboard_trans
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.ani_text_container
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._type_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.Close
  L1_2(L2_2)
  L1_2 = A0_2._way_point_panel
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = A0_2._bubble_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._heartdial_bubble_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._inward_bubble_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._npc_warning_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._title_panel
  L2_2 = L1_2
  L1_2 = L1_2.Close
  L1_2(L2_2)
  L1_2 = A0_2._name_panel
  L2_2 = L1_2
  L1_2 = L1_2.Close
  L1_2(L2_2)
  L1_2 = A0_2._floating_text_panel
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActiveByScale
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_billboard
  L2_2 = L1_2
  L1_2 = L1_2.SetTickActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.Close = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._billboard_trans
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActiveByScale
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._runtime_id
  if L1_2 == 0 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_game_object_name
  L3_2 = A0_2._game_object_name
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_billboard_mono
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_waypoint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_type_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._tick_icon_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_warning
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bubble
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_inward_bubble
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_floating_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset
  L1_2(L2_2)
end
L0_1._refresh = L11_1
function L11_1(A0_2)
  local L1_2
  L1_2 = A0_2._runtime_id
  return L1_2
end
L0_1.get_runtime_id = L11_1
function L11_1(A0_2)
  local L1_2
  L1_2 = A0_2._npc_id
  return L1_2
end
L0_1.get_npc_id = L11_1
function L11_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BubbleTalkType
  L2_2 = L2_2.Normal
  if A1_2 == L2_2 then
    L2_2 = A0_2._bubble_panel
    return L2_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.BubbleTalkType
    L2_2 = L2_2.Inward
    if A1_2 == L2_2 then
      L2_2 = A0_2._inward_bubble_panel
      return L2_2
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.BubbleTalkType
      L2_2 = L2_2.HeartDial
      if A1_2 == L2_2 then
        L2_2 = A0_2._heartdial_bubble_panel
        return L2_2
      else
        L2_2 = nil
        return L2_2
      end
    end
  end
end
L0_1.get_bubble = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._billboard_trans
  if L2_2 ~= nil then
    L2_2 = A0_2._runtime_id
    if L2_2 ~= 0 then
      L2_2 = G
      L2_2 = L2_2.UtilEngineWrap
      L2_2 = L2_2.IsCsObjectNull
      L3_2 = A0_2._attach_trans
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        goto lbl_15
      end
    end
  end
  do return end
  ::lbl_15::
  L3_2 = A0_2
  L2_2 = A0_2._get_camera_distance
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_billboard_root_active
  L3_2(L4_2)
  L3_2 = A0_2._bubble_panel
  L4_2 = L3_2
  L3_2 = L3_2._on_tick
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._heartdial_bubble_panel
  L4_2 = L3_2
  L3_2 = L3_2._on_tick
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._inward_bubble_panel
  L4_2 = L3_2
  L3_2 = L3_2._on_tick
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._npc_cmp
  if L3_2 then
    L3_2 = A0_2._npc_cmp
    L3_2 = L3_2.AlertValue
    if 0 <= L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._is_show_by_type
      L5_2 = L10_1.Warning
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = A0_2._npc_warning_panel
        L4_2 = L3_2
        L3_2 = L3_2._on_tick
        L5_2 = A1_2
        L6_2 = A0_2._npc_cmp
        L6_2 = L6_2.AlertValue
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_active_binder_root
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_tick = L11_1
function L11_1(A0_2, A1_2)
end
L0_1.late_tick = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._billboard_trans
  if L1_2 ~= nil then
    L1_2 = A0_2._runtime_id
    if L1_2 ~= 0 then
      L1_2 = G
      L1_2 = L1_2.UtilEngineWrap
      L1_2 = L1_2.IsCsObjectNull
      L2_2 = A0_2._attach_trans
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        goto lbl_15
      end
    end
  end
  do return end
  ::lbl_15::
  L1_2 = A0_2.waypointConfigTable
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_type_active
    L4_2 = A0_2
    L3_2 = A0_2._get_camera_distance
    L3_2 = L3_2(L4_2)
    L4_2 = L10_1.WayPoint
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.WayPointUtils
      L1_2 = L1_2.get_player_GO
      L1_2 = L1_2()
      L2_2 = false
      if L1_2 ~= nil then
        L3_2 = 1
        L4_2 = A0_2.waypointConfigTable
        L4_2 = #L4_2
        L5_2 = 1
        for L6_2 = L3_2, L4_2, L5_2 do
          L7_2 = A0_2.waypointConfigTable
          L7_2 = L7_2[L6_2]
          L8_2 = G
          L8_2 = L8_2.WayPointUtils
          L8_2 = L8_2.get_distance
          L9_2 = L7_2
          L10_2 = L1_2
          L8_2 = L8_2(L9_2, L10_2)
          L9_2 = G
          L9_2 = L9_2.WayPointUtils
          L9_2 = L9_2.tick_waypoint_active
          L10_2 = L7_2
          L11_2 = L8_2
          L9_2 = L9_2(L10_2, L11_2)
          if L9_2 then
            L10_2 = A0_2._way_point_panel
            L11_2 = L10_2
            L10_2 = L10_2.get_cur_waypoint_config
            L10_2 = L10_2(L11_2)
            if L10_2 ~= L7_2 then
              L10_2 = A0_2._way_point_panel
              L11_2 = L10_2
              L10_2 = L10_2.setup_waypoint_config
              L12_2 = L7_2
              L10_2(L11_2, L12_2)
            end
            L2_2 = L9_2
            break
          end
        end
      end
      L3_2 = A0_2._way_point_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_is_active
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
  end
  else
    L1_2 = A0_2._way_point_panel
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
  end
  L1_2 = A0_2._way_point_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_light_active
  L1_2 = L1_2(L2_2)
  A0_2._is_waypoint_show = L1_2
  L1_2 = A0_2._is_waypoint_show
  L2_2 = A0_2._pre_is_waypoint_show
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_type_icon
    L1_2(L2_2)
    L1_2 = A0_2._is_waypoint_show
    A0_2._pre_is_waypoint_show = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._tick_icon_state
    L1_2(L2_2)
    A0_2._need_rebuild_by_icon_container = true
  end
  L1_2 = A0_2._need_rebuild_by_icon_container
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.UI
    L1_2 = L1_2.LayoutRebuilder
    L1_2 = L1_2.ForceRebuildLayoutImmediate
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas
    L1_2(L2_2)
    A0_2._need_rebuild_by_icon_container = false
  end
end
L0_1._on_mono_tick = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_npc_name_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_npc_title_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_npc_type_icon_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_way_point_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_bubble_talk_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_heartdial_bubble_talk_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_npc_warring_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_floating_text_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_inward_bubble_panel
  L1_2(L2_2)
end
L0_1._add_sub_panels = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.TextNPCNamePanel
  L1_2 = L1_2(L2_2)
  A0_2._name_panel = L1_2
  L1_2 = A0_2._name_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind_with_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_container
  L4_2 = A0_2
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._name_panel
    L1_3 = L0_3
    L0_3 = L0_3.adjust_hierarchy
    L2_3 = L8_1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._add_npc_name_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.TextNPCTitlePanel
  L1_2 = L1_2(L2_2)
  A0_2._title_panel = L1_2
  L1_2 = A0_2._title_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind_with_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_container
  L4_2 = A0_2
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._title_panel
    L1_3 = L0_3
    L0_3 = L0_3.adjust_hierarchy
    L2_3 = L9_1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._add_npc_title_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.IconNPCTypePanel
  L1_2 = L1_2(L2_2)
  A0_2._type_icon_panel = L1_2
  L1_2 = A0_2._type_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon_container
  L1_2(L2_2, L3_2)
end
L0_1._add_npc_type_icon_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.BillboardWayPointPanel
  L1_2 = L1_2(L2_2)
  A0_2._way_point_panel = L1_2
  L1_2 = A0_2._way_point_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon_container
  L1_2(L2_2, L3_2)
end
L0_1._add_way_point_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.BubbleTalkPanel
  L1_2 = L1_2(L2_2)
  A0_2._bubble_panel = L1_2
  L1_2 = A0_2._bubble_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.bubble_container
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._bubble_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_active_change_callback
  L3_2 = A0_2._on_bubble_talk_active_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_bubble_talk_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.BubbleTalkPanel
  L1_2 = L1_2(L2_2)
  A0_2._heartdial_bubble_panel = L1_2
  L1_2 = A0_2._heartdial_bubble_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_prefab_path
  L3_2 = L7_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._heartdial_bubble_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.bubble_container
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._heartdial_bubble_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_active_change_callback
  L3_2 = A0_2._on_bubble_talk_active_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_heartdial_bubble_talk_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.NPCWarningPanel
  L1_2 = L1_2(L2_2)
  A0_2._npc_warning_panel = L1_2
  L1_2 = A0_2._npc_warning_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_warning_container
  L1_2(L2_2, L3_2)
end
L0_1._add_npc_warring_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.TextFloatingPanel
  L1_2 = L1_2(L2_2)
  A0_2._floating_text_panel = L1_2
  L1_2 = A0_2._floating_text_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.floating_text_container
  L1_2(L2_2, L3_2)
end
L0_1._add_floating_text_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.InwardBubbleTalkPanel
  L1_2 = L1_2(L2_2)
  A0_2._inward_bubble_panel = L1_2
  L1_2 = A0_2._inward_bubble_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.inward_text_container
  L1_2(L2_2, L3_2)
end
L0_1._add_inward_bubble_panel = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  A0_2._game_object_name = A1_2
  L2_2 = A0_2._billboard_trans
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._billboard_trans
  L3_2 = A0_2._game_object_name
  L2_2.name = L3_2
end
L0_1._setup_game_object_name = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._billboard_trans
  if L1_2 ~= nil then
    L1_2 = A0_2._entity
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_billboard
  L2_2 = L1_2
  L1_2 = L1_2.SetHeight
  L3_2 = A0_2._min_height
  L4_2 = A0_2._max_height
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_billboard
  L2_2 = L1_2
  L1_2 = L1_2.SetPositionXOffset
  L3_2 = A0_2._x_offset
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_billboard
  L2_2 = L1_2
  L1_2 = L1_2.SetPositionYOffset
  L3_2 = A0_2._y_offset
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_billboard
  L2_2 = L1_2
  L1_2 = L1_2.SetPositionZOffset
  L3_2 = A0_2._z_offset
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_billboard
  L2_2 = L1_2
  L1_2 = L1_2.SetTarget
  L3_2 = A0_2._attach_trans
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_billboard
  L2_2 = L1_2
  L1_2 = L1_2.SetShowTop
  L3_2 = A0_2._show_top
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_billboard
  L2_2 = L1_2
  L1_2 = L1_2.SetShowMode
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_billboard
  L2_2 = L1_2
  L1_2 = L1_2.SetTickActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_billboard
  L2_2 = L1_2
  L1_2 = L1_2.SetIsLookAtCamera
  L4_2 = A0_2
  L3_2 = A0_2._is_show_by_type
  L5_2 = L10_1.FloatingText
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_billboard_mono = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._billboard_trans
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._text_id_name
  if L1_2 ~= nil then
    L1_2 = A0_2._text_id_name
    L2_2 = L1_2
    L1_2 = L1_2.IsEmpty
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._is_show_by_type
      L3_2 = L10_1.Text
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = A0_2._name_panel
        L2_2 = L1_2
        L1_2 = L1_2.SetupName
        L3_2 = A0_2._text_id_name
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._name_panel
        L2_2 = L1_2
        L1_2 = L1_2.set_light_weight_active
        L3_2 = true
        L1_2(L2_2, L3_2)
        L2_2 = A0_2
        L1_2 = A0_2._is_show_by_type
        L3_2 = L10_1.HeartDial
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L1_2 = A0_2._name_panel
          L2_2 = L1_2
          L1_2 = L1_2.setup_heart_dial
          L3_2 = A0_2._entity
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2._name_panel
          L2_2 = L1_2
          L1_2 = L1_2.setup_heart_dial
          L3_2 = nil
          L1_2(L2_2, L3_2)
        end
    end
  end
  else
    L1_2 = A0_2._name_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_light_weight_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_name = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._billboard_trans
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._text_title
  if L1_2 ~= nil then
    L1_2 = A0_2._text_title
    L2_2 = L1_2
    L1_2 = L1_2.IsEmpty
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._is_show_by_type
      L3_2 = L10_1.Title
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = A0_2._title_panel
        L2_2 = L1_2
        L1_2 = L1_2.SetupTitle
        L3_2 = A0_2._text_title
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._title_panel
        L2_2 = L1_2
        L1_2 = L1_2.set_light_weight_active
        L3_2 = true
        L1_2(L2_2, L3_2)
    end
  end
  else
    L1_2 = A0_2._title_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_light_weight_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_title = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._billboard_trans
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._is_npc_icon_show
  L2_2 = A0_2._type_icon_path
  if L2_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.StrExt
    L2_2 = L2_2.IsNullOrEmpty
    L3_2 = A0_2._type_icon_path
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._is_show_by_type
      L4_2 = L10_1.Icon
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L2_2 = A0_2._is_waypoint_show
        if not L2_2 then
          L2_2 = A0_2._type_icon_panel
          L3_2 = L2_2
          L2_2 = L2_2.SetupIcon
          L4_2 = A0_2._type_icon_path
          L2_2(L3_2, L4_2)
          L2_2 = A0_2._type_icon_panel
          L3_2 = L2_2
          L2_2 = L2_2.set_light_weight_active
          L4_2 = true
          L2_2(L3_2, L4_2)
          A0_2._is_npc_icon_show = true
      end
    end
  end
  else
    L2_2 = A0_2._type_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.Close
    L2_2(L3_2)
    L2_2 = A0_2._type_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_light_weight_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    A0_2._is_npc_icon_show = false
  end
  L2_2 = A0_2._is_npc_icon_show
  L2_2 = L1_2 ~= L2_2
  A0_2._need_rebuild_by_icon_container = L2_2
end
L0_1._setup_type_icon = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._billboard_trans
  if L1_2 ~= nil then
    L1_2 = A0_2._entity
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = G
  L1_2 = L1_2.WayPointModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.get_waypoint_config
  L3_2 = A0_2._entity
  L3_2 = L3_2.RuntimeID
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.waypointConfigTable = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._on_mono_tick
  L1_2(L2_2)
end
L0_1._setup_waypoint = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.icon_container
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._is_npc_icon_show
  if not L3_2 then
    L3_2 = A0_2._is_waypoint_show
  end
  L1_2(L2_2, L3_2)
end
L0_1._tick_icon_state = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._billboard_trans
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._npc_cmp
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_show_by_type
    L3_2 = L10_1.Warning
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = A0_2._npc_warning_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = A0_2._npc_cmp
      L3_2 = L3_2.AlertValueGuardMinLimit
      L4_2 = A0_2._npc_cmp
      L4_2 = L4_2.AlertValueGuardMaxLimit
      L5_2 = A0_2._entity
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = A0_2._npc_warning_panel
      L2_2 = L1_2
      L1_2 = L1_2.set_light_weight_active
      L3_2 = true
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._npc_warning_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_light_weight_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_warning = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._billboard_trans
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_show_by_type
  L3_2 = L10_1.Bubble
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = A0_2._bubble_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_light_weight_active
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._heartdial_bubble_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_light_weight_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._bubble_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_light_weight_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._heartdial_bubble_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_light_weight_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_bubble = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._billboard_trans
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._inward_bubble_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.InwardBubbleTalkType
  L2_2 = L2_2.Invalid
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_show_by_type
    L3_2 = L10_1.InwardBubbleTalk
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = A0_2._inward_bubble_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_inward_bubble
      L3_2 = A0_2._inward_bubble_type
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._inward_bubble_panel
      L2_2 = L1_2
      L1_2 = L1_2.set_light_weight_active
      L3_2 = true
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._inward_bubble_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_light_weight_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_inward_bubble = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._billboard_trans
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._text_id_floating
  if L1_2 ~= nil then
    L1_2 = A0_2._text_id_floating
    L2_2 = L1_2
    L1_2 = L1_2.IsEmpty
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._is_show_by_type
      L3_2 = L10_1.FloatingText
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = A0_2._floating_text_panel
        L2_2 = L1_2
        L1_2 = L1_2.setup_content
        L3_2 = A0_2._text_id_floating
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._floating_text_panel
        L2_2 = L1_2
        L1_2 = L1_2.set_light_weight_active
        L3_2 = true
        L1_2(L2_2, L3_2)
    end
  end
  else
    L1_2 = A0_2._floating_text_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_light_weight_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_floating_text = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._npc_warning_panel
  if L1_2 then
    L1_2 = A0_2._npc_cmp
    if L1_2 then
      L1_2 = A0_2._npc_warning_panel
      L2_2 = L1_2
      L1_2 = L1_2.on_monster_attack
      L1_2(L2_2)
    end
  end
end
L0_1.on_monster_attack = L11_1
function L11_1(A0_2, A1_2)
  A0_2._is_billboard_enable = A1_2
end
L0_1.enable_canvas = L11_1
function L11_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._board_show_bit
  if L2_2 then
    L2_2 = A0_2._board_show_bit
    L2_2 = L2_2 & A1_2
    L2_2 = L2_2 == A1_2
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._is_show_by_type = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_billboard
  L2_2 = L1_2
  L1_2 = L1_2.GetCameraDistance
  return L1_2(L2_2)
end
L0_1._get_camera_distance = L11_1
function L11_1(A0_2, A1_2)
  local L2_2
  L2_2 = L1_1
  L2_2 = A1_2 > L2_2
  return L2_2
end
L0_1._is_camera_too_far_or_too_near = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_billboard_enable
  if L1_2 then
    L1_2 = A0_2._mutex_status
  end
  L2_2 = A0_2._is_root_active
  if L1_2 ~= L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    A0_2._is_root_active = L1_2
    if L1_2 then
      L3_2 = A0_2
      L2_2 = A0_2._reset
      L2_2(L3_2)
      L2_2 = CS
      L2_2 = L2_2.UnityEngine
      L2_2 = L2_2.UI
      L2_2 = L2_2.LayoutRebuilder
      L2_2 = L2_2.ForceRebuildLayoutImmediate
      L3_2 = A0_2._binder
      L3_2 = L3_2.canvas
      L2_2(L3_2)
    end
  end
end
L0_1._set_billboard_root_active = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = false
  L4_2 = A0_2
  L3_2 = A0_2._get_type_active
  L5_2 = A1_2
  L6_2 = L10_1.Text
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._get_type_active
    L5_2 = A1_2
    L6_2 = L10_1.Title
    L3_2 = L3_2(L4_2, L5_2, L6_2)
  end
  L4_2 = A0_2._is_text_active
  if L3_2 ~= L4_2 then
    L2_2 = true
    A0_2._is_text_active = L3_2
    L4_2 = A0_2._is_text_active
    if L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.ani_text_container
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetLightWeightActive
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.UIAnimationUtils
      L4_2 = L4_2.PlayFromBegin
      L5_2 = A0_2._binder
      L5_2 = L5_2.ani_text_container
      L6_2 = L5_1
      L4_2(L5_2, L6_2)
    else
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.UIAnimationUtils
      L4_2 = L4_2.PlayFromBegin
      L5_2 = A0_2._binder
      L5_2 = L5_2.ani_text_container
      L6_2 = L6_1
      L4_2(L5_2, L6_2)
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._get_type_active
  L6_2 = A1_2
  L7_2 = L10_1.Warning
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2._warning_active
  if L5_2 ~= L4_2 then
    L2_2 = true
    A0_2._warning_active = L4_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_warning_container
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetLightWeightActive
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._get_type_active
  L7_2 = A1_2
  L8_2 = L10_1.Icon
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2._type_icon_panel
  if L6_2 ~= nil then
    L6_2 = A0_2._type_icon_panel
    L7_2 = L6_2
    L6_2 = L6_2.PlayFadeIn
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._icon_active
    if L6_2 ~= L5_2 then
      A0_2._icon_active = L5_2
      L2_2 = true
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2._get_type_active
  L8_2 = A1_2
  L9_2 = L10_1.Bubble
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2._bubble_active
  if L7_2 ~= L6_2 then
    L2_2 = true
    A0_2._bubble_active = L6_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.bubble_container
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetLightWeightActive
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  if L2_2 then
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.UI
    L7_2 = L7_2.LayoutRebuilder
    L7_2 = L7_2.ForceRebuildLayoutImmediate
    L8_2 = A0_2._binder
    L8_2 = L8_2.canvas
    L7_2(L8_2)
  end
end
L0_1._set_active_binder_root = L11_1
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L10_1.WayPoint
  if A2_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._is_show_by_type
    L5_2 = A2_2
    return L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._type_to_show_far
  L4_2 = L3_2
  L3_2 = L3_2.TryGetValue
  L5_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = L2_1
  L6_2 = A0_2
  L5_2 = A0_2._is_show_by_type
  L7_2 = A2_2
  L5_2 = A1_2 <= L4_2 and L5_2
  return L5_2
end
L0_1._get_type_active = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_type_active
  L4_2 = A1_2
  L5_2 = L10_1.Text
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._is_text_active = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.ani_text_container
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetLightWeightActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromEnd
    L4_2 = A0_2._binder
    L4_2 = L4_2.ani_text_container
    L5_2 = L5_1
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromEnd
    L4_2 = A0_2._binder
    L4_2 = L4_2.ani_text_container
    L5_2 = L6_1
    L3_2(L4_2, L5_2)
  end
end
L0_1._reset_text_anim = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_type_active
  L4_2 = A1_2
  L5_2 = L10_1.Icon
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._type_icon_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._type_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.reset_anim
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._reset_icon_anim = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._billboard_trans
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector3
  L2_2 = L2_2.zero
  L1_2.localScale = L2_2
end
L0_1._reset_active_status = L11_1
function L11_1(A0_2, A1_2)
  A0_2._mutex_status = A1_2
end
L0_1.set_mutex_status = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mutex_data
  L2_2 = A0_2._entity
  L1_2.Entity = L2_2
  L1_2 = A0_2._mutex_data
  L1_2.IsActive = true
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIChangeBillboardWayPointMutex
  L3_2 = A0_2._mutex_data
  L1_2(L2_2, L3_2)
end
L0_1._notify_billboard_open = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mutex_data
  L2_2 = A0_2._entity
  L1_2.Entity = L2_2
  L1_2 = A0_2._mutex_data
  L1_2.IsActive = false
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIChangeBillboardWayPointMutex
  L3_2 = A0_2._mutex_data
  L1_2(L2_2, L3_2)
end
L0_1._notify_billboard_close = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas
  L1_2(L2_2)
end
L0_1._on_bubble_talk_active_change = L11_1
return L0_1
