local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooHandbookListBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.SpaceZooSpicalEventState
L3_1 = 10010
L4_1 = "SpaceZooListBtn_UnlockHint"
function L5_1(A0_2)
  local L1_2
  A0_2._btn_root_callback = nil
  A0_2._btn_root_callback_handler = nil
  A0_2._event_data = nil
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._event_data = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L3_2 = L2_2
  L2_2 = L2_2.SetNodeDynamicKey
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L4_2 = L4_2.gameObject
  L5_2 = A0_2._event_data
  L5_2 = L5_2.SpecialCatRow
  L5_2 = L5_2.SpecialCatID
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_mask
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_img_mask
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_img_cat
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_text_name
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_reddot
  L2_2(L3_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_target
  L4_2 = A0_2._on_btn_target
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_btn_collect
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip_collect
  L2_2.IsShowTip = A1_2
end
L0_1._setup_in_control_button_enable = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._event_data
  L1_2 = L1_2.State
  L2_2 = L2_1.Lock
  if L1_2 == L2_2 then
    L1_2 = A0_2._event_data
    L1_2 = L1_2.SpecialCatID
    L2_2 = L3_1
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._is_tips_mission_finish
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._is_all_tips_cats_get
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = G
          L1_2 = L1_2.NotifyManager
          L1_2 = L1_2.notify
          L2_2 = G
          L2_2 = L2_2.CS
          L2_2 = L2_2.NotifyType
          L2_2 = L2_2.UIPileToastMessageTextID
          L3_2 = "UIText_ActivitySpaceZoo_MuseumSSRPage_ToastKafka"
          L1_2(L2_2, L3_2)
      end
    end
    else
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = A0_2._event_data
      L3_2 = L3_2.SpecialEventRow
      L3_2 = L3_2.HintTip
      L1_2(L2_2, L3_2)
    end
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._btn_root_callback
  L3_2 = A0_2._btn_root_callback_handler
  L4_2 = A0_2._event_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._btn_target_callback
  L3_2 = A0_2._btn_target_callback_handler
  L4_2 = A0_2._event_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_target = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_cat
  L4_2 = A0_2._event_data
  L4_2 = L4_2.SpecialCatRow
  L4_2 = L4_2.LargeImagePath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_img_cat = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_color_bar_top_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetColor
  L3_2 = A0_2._event_data
  L3_2 = L3_2.SpecialCatRow
  L3_2 = L3_2.ColorBar
  L3_2 = L3_2[0]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_color_bar_top_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetColor
  L3_2 = A0_2._event_data
  L3_2 = L3_2.SpecialCatRow
  L3_2 = L3_2.ColorBar
  L3_2 = L3_2[1]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_color_bar_bottom_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetColor
  L3_2 = A0_2._event_data
  L3_2 = L3_2.SpecialCatRow
  L3_2 = L3_2.ColorBar
  L3_2 = L3_2[2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_color_bar_bottom_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetColor
  L3_2 = A0_2._event_data
  L3_2 = L3_2.SpecialCatRow
  L3_2 = L3_2.ColorBar
  L3_2 = L3_2[3]
  L1_2(L2_2, L3_2)
end
L0_1._setup_color = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionData
  L3_2 = A0_2._event_data
  L3_2 = L3_2.SpecialCatRow
  L3_2 = L3_2.TipsMissionID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 ~= nil and L2_2
  return L2_2
end
L0_1._is_tips_mission_finish = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._event_data
  L1_2 = L1_2.SpecialCatRow
  L1_2 = L1_2.TipsCustomizedCat
  L2_2 = true
  L3_2 = 0
  L4_2 = L1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    if L2_2 then
      L7_2 = L1_1.SpaceZooData
      L7_2 = L7_2.TemplateCats
      L8_2 = L7_2
      L7_2 = L7_2.ContainsKey
      L9_2 = L1_2[L6_2]
      L7_2 = L7_2(L8_2, L9_2)
      L2_2 = L7_2
    end
  end
  return L2_2
end
L0_1._is_all_tips_cats_get = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_lock_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivitySpaceZoo_MuseumSSRPage_LockedName"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._event_data
  L1_2 = L1_2.State
  L2_2 = L2_1.Get
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._event_data
    L3_2 = L3_2.SpecialCatRow
    L3_2 = L3_2.Name
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivitySpaceZoo_MuseumSSRPage_LockedName"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_point
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._event_data
  L3_2 = L3_2.SpecialCatRow
  L3_2 = L3_2.ResearchPointSSR
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_point
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._event_data
  L3_2 = L3_2.SpecialCatRow
  L3_2 = L3_2.ResearchPointSSR
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_clue
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivitySpaceZoo_UnlockBanner"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.SpaceZooHandbookTextExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._event_data
  L2_2 = L2_2.SpecialCatID
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.IsParam
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tip_lock
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.UITextID
    L5_2 = L1_2.Param1
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tip_lock
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.UITextID
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._event_data
  L2_2 = L2_2.SpecialCatID
  L3_2 = L3_1
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_tips_mission_finish
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._is_all_tips_cats_get
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_tip_lock
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_ActivitySpaceZoo_LockHint_Kafka"
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._setup_text_name = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._event_data
  L3_2 = L3_2.State
  L4_2 = L2_1.Lock
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._event_data
  L3_2 = L3_2.State
  L4_2 = L2_1.Lock
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._event_data
  L3_2 = L3_2.State
  L4_2 = L2_1.Get
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_target
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._event_data
  L3_2 = L3_2.State
  L4_2 = L2_1.Lock
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_clue
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._event_data
  L3_2 = L3_2.State
  L4_2 = L2_1.Unlock
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_mask = L5_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.SpaceZooMaskType
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._event_data
  L1_2 = L1_2.SpecialEventRow
  L1_2 = L1_2.SpecialCatIsMask
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_not_obtained_mask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L5_1.Translucent
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_special_mask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L5_1.Hide
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_img_mask = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "SpaceZooNewSpecialCat"
  L4_2 = A0_2._event_data
  L4_2 = L4_2.SpecialCatID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1._stop_anim = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._btn_root_callback = A1_2
  A0_2._btn_root_callback_handler = A2_2
end
L0_1.register_btn_root_callback = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._btn_target_callback = A1_2
  A0_2._btn_target_callback_handler = A2_2
end
L0_1.register_btn_target_callback = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_target
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1.play_get_anim = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._stop_anim
  L1_2(L2_2)
end
L0_1.refresh = L6_1
return L0_1
