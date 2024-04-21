local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.HandbookModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FarmModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = G
L3_1 = L3_1.StaminaModule
L3_1 = L3_1.Instance
L4_1 = {}
L4_1.enough = "#121212"
L4_1.lack = "#C84A32"
L5_1 = {}
L5_1.normal = "#FFFFFF"
L5_1.special = "#A98E54"
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "HandbookGuideItemPanel"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2
  A0_2._id = 0
  A0_2._guide_row = nil
  A0_2._farm_row = nil
  A0_2._farm_level = 0
  A0_2._mapping_info_row = nil
end
L6_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_jump
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_track
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_unknown
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quick
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quick_track
  L4_2 = A0_2._on_btn_track
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaChanged
  L4_2 = L6_1._on_stamina_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = L6_1._on_stamina_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeleportDataUpdated
  L4_2 = L6_1._refresh_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_in_control
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
    L0_3 = L0_3._enable_in_control
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._enable_in_control
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cost_layout
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_quick
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_quick_track
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unknown
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_quick_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._on_unload = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._reward_items = nil
  A0_2._mapping_info_row = nil
  A0_2._guide_row = nil
  A0_2._farm_row = nil
end
L6_1._on_dispose = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.EventSystem
    L2_2 = L2_2.current
    L2_2 = L2_2.currentSelectedGameObject
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 == L3_2
    L4_2 = A0_2
    L3_2 = A0_2._enable_in_control
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_root
    L4_2 = L3_2
    L3_2 = L3_2.ClearAnimationState
    L3_2(L4_2)
  end
end
L6_1._on_owner_active_change = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._data = A1_2
  L3_2 = A1_2.ID
  A0_2._id = L3_2
  A0_2._reward_top_item_ids = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.gameObject
  L6_2 = A0_2._id
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._enable_in_control
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "HandbookGuideSubTab"
  L6_2 = A0_2._id
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.go_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L6_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_config
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_stamina_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_open_day_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_preview_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_view
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_layout
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_layout
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_view
  L1_2(L2_2)
end
L6_1._refresh_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameplayGuideDataConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._id
  L1_2 = L1_2(L2_2)
  A0_2._guide_row = L1_2
  A0_2._farm_row = nil
  L1_2 = A0_2._guide_row
  L1_2 = L1_2.RelatedID
  A0_2._farm_id = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetFarmMaxLevel
  L3_2 = A0_2._farm_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._farm_level = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.FarmUtils
  L1_2 = L1_2.IsCocoon
  L2_2 = A0_2._farm_id
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.CocoonExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._farm_id
    L3_2 = A0_2._farm_level
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._farm_row = L1_2
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.FarmUtils
    L1_2 = L1_2.IsElement
    L2_2 = A0_2._farm_id
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.GameCore
      L1_2 = L1_2.FarmElementConfigExcelTable
      L1_2 = L1_2.GetData
      L2_2 = A0_2._farm_id
      L3_2 = A0_2._farm_level
      L1_2 = L1_2(L2_2, L3_2)
      A0_2._farm_row = L1_2
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MappingInfoExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._farm_row
  L2_2 = L2_2.MappingInfoID
  L3_2 = A0_2._farm_level
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._mapping_info_row = L1_2
  L1_2 = A0_2._mapping_info_row
  L1_2 = L1_2.ID
  A0_2._mapping_info_id = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsFarmDaily
  L3_2 = A0_2._farm_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._is_daily = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsFarmWeekly
  L3_2 = A0_2._farm_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._is_weekly = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsFarmOpen
  L3_2 = A0_2._farm_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._is_open = L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsUnlocked
  L1_2 = not L1_2
  A0_2._is_locked = L1_2
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.CanQuickGo
  L1_2 = L1_2(L2_2)
  A0_2._can_quick_go = L1_2
  L1_2 = A0_2._is_locked
  if L1_2 then
    L1_2 = A0_2._can_quick_go
    L1_2 = not L1_2
  end
  A0_2._is_unknown = L1_2
  L1_2 = A0_2._is_locked
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TransferModule
  L2_2 = L1_2
  L1_2 = L1_2.CanTransfer
  L3_2 = A0_2._mapping_info_row
  L3_2 = L3_2.ID
  L4_2 = A0_2._guide_row
  L4_2 = L4_2.MapEntranceID
  L1_2 = not L1_2 and L1_2
  A0_2._can_jump = L1_2
  A0_2._to_unlock_mission_id = 0
  L1_2 = A0_2._is_unknown
  if L1_2 then
    L1_2 = 0
    L2_2 = A0_2._guide_row
    L2_2 = L2_2.UnlockMission
    L2_2 = L2_2.Length
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._guide_row
      L5_2 = L5_2.UnlockMission
      L5_2 = L5_2[L4_2]
      L6_2 = L2_1
      L7_2 = L6_2
      L6_2 = L6_2.IsMainMissionFinished
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        A0_2._to_unlock_mission_id = L5_2
      end
    end
  end
end
L6_1._update_config = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._guide_row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_icon_image
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_title_image
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cost
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._farm_row
  L3_2 = L3_2.StaminaCost
  L1_2(L2_2, L3_2)
end
L6_1._setup_info_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._show_icon_bg
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon_with_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_bg_icon_unknown
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._is_unknown
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_bg_icon_known
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._is_unknown
    L4_2 = not L4_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon_with_bg
    L5_2 = A0_2._guide_row
    L5_2 = L5_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = A0_2._guide_row
    L5_2 = L5_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetColor
    L5_2 = A0_2
    L4_2 = A0_2._get_icon_color
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L6_1._setup_icon_image = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.GuideType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GuideType
  L2_2 = L2_2.FarmElement
  L1_2 = L1_2 == L2_2
  return L1_2
end
L6_1._show_icon_bg = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.GuideType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GuideType
  L2_2 = L2_2.FarmCocoon
  L1_2 = L1_2 == L2_2
  if L1_2 then
    L2_2 = L5_1.special
    if L2_2 then
      goto lbl_27
    end
  end
  L2_2 = L5_1.normal
  ::lbl_27::
  return L2_2
end
L6_1._get_icon_color = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._guide_row
  L2_2 = L2_2.TabIconPath
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_img_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_title
    L4_2 = A0_2._guide_row
    L4_2 = L4_2.TabIconPath
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetColor
    L4_2 = A0_2
    L3_2 = A0_2._get_title_image_color
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_img_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L6_1._setup_title_image = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.GuideType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GuideType
  L2_2 = L2_2.FarmCocoon2
  L1_2 = L1_2 == L2_2
  if L1_2 then
    L2_2 = L5_1.special
    if L2_2 then
      goto lbl_18
    end
  end
  L2_2 = L5_1.normal
  ::lbl_18::
  return L2_2
end
L6_1._get_title_image_color = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_open_rule
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unknown
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_open_rule_unknown
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._to_unlock_mission_id
  L3_2 = A0_2._is_unknown
  if L3_2 then
    L3_2 = A0_2._can_quick_go
    L3_2 = L3_2 ~= 0 and L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_unknown
  if L1_2 then
    return
  end
  L1_2 = A0_2._mapping_info_row
  L1_2 = L1_2.FloorID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazeFloorExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_day
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.FloorName
  L3_2(L4_2, L5_2)
end
L6_1._setup_open_day_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = "UIText_Daily_Cocoon_Weekly_"
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  return L2_2(L3_2)
end
L6_1._get_day_text = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.get_sorted_items_by_item_config_list
  L2_2 = A0_2._mapping_info_row
  L2_2 = L2_2.DisplayItemList
  L1_2 = L1_2(L2_2)
  A0_2._reward_items = L1_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.sort_reward_item
  L2_2 = A0_2._reward_items
  L3_2 = A0_2._reward_top_item_ids
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._config_id_list = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_id_list
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_reward
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_items
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_reward
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L6_1._setup_reward_view = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_items
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view_by_reward_item
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L6_1._on_reward_item_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unknown
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_quick_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._can_quick_go
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_unknown
  if L1_2 then
    L1_2 = L2_1
    L2_2 = L1_2
    L1_2 = L1_2.GetGapChainDoingMissionType
    L3_2 = A0_2._to_unlock_mission_id
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MainMissionTypeConfigExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MiniMapIconExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2.WaypointIconType
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_mission_type
    L7_2 = L3_2.MissionIconPath
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_mission_type_btn
    L7_2 = L2_2.TypeIcon
    L4_2(L5_2, L6_2, L7_2)
  end
end
L6_1._setup_preview_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_not_today
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_open
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_jump
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_locked
  L3_2 = A0_2._can_jump
  if L3_2 then
    L3_2 = A0_2._can_quick_go
    L3_2 = not L3_2 and L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_track
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_locked
  L3_2 = A0_2._can_jump
  L3_2 = A0_2._can_quick_go
  L3_2 = not L3_2 and L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unknown
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_locked
  if L3_2 then
    L3_2 = A0_2._is_unknown
    if L3_2 then
      L3_2 = A0_2._to_unlock_mission_id
      L3_2 = L3_2 ~= 0
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_quick
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._can_quick_go
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_quick_track
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._can_quick_go
  if L3_2 then
    L3_2 = A0_2._data
    L3_2 = L3_2.IsEntranceUnlocked
  end
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_layout
  L1_2(L2_2)
end
L6_1._setup_btn_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.HandbookUtils
  L1_2 = L1_2.RecordGuideItemSeen
  L2_2 = A0_2._guide_row
  L2_2 = L2_2.ID
  L1_2(L2_2)
  L1_2 = A0_2._can_jump
  if L1_2 then
    L1_2 = "GameplayGuideData_TeleportBtn_"
    if L1_2 then
      goto lbl_16
    end
  end
  L1_2 = "GameplayGuideData_AreaProgress_"
  ::lbl_16::
  L2_2 = A0_2._guide_row
  L2_2 = L2_2.ID
  L1_2 = L1_2 .. L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = "HandbookGuideTabItem"
  L5_2 = L1_2
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._can_quick_go
  if L2_2 then
    L2_2 = A0_2._data
    L3_2 = L2_2
    L2_2 = L2_2.CanQuickGo
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = "RetCodeError_1811"
      L2_2(L3_2, L4_2)
      return
    end
    L2_2 = G
    L2_2 = L2_2.FarmUtils
    L2_2 = L2_2.go_quick_farm
    L3_2 = A0_2._farm_id
    L2_2(L3_2)
  else
    L2_2 = A0_2._is_locked
    if L2_2 then
      L2_2 = A0_2._is_unknown
      if L2_2 then
        L2_2 = G
        L2_2 = L2_2.MissionUtils
        L2_2 = L2_2.trace_main_mission
        L3_2 = A0_2._to_unlock_mission_id
        L2_2(L3_2)
      end
    else
      L2_2 = L0_1
      L3_2 = L2_2
      L2_2 = L2_2.GoToGuide
      L4_2 = A0_2._guide_row
      L4_2 = L4_2.MapEntranceID
      L5_2 = A0_2._mapping_info_id
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L6_1._on_btn_go = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.HandbookUtils
  L1_2 = L1_2.RecordGuideItemSeen
  L2_2 = A0_2._guide_row
  L2_2 = L2_2.ID
  L1_2(L2_2)
  L1_2 = A0_2._can_jump
  if L1_2 then
    L1_2 = "GameplayGuideData_TeleportBtn_"
    if L1_2 then
      goto lbl_16
    end
  end
  L1_2 = "GameplayGuideData_AreaProgress_"
  ::lbl_16::
  L2_2 = A0_2._guide_row
  L2_2 = L2_2.ID
  L1_2 = L1_2 .. L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = "HandbookGuideTabItem"
  L5_2 = L1_2
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GoToGuide
  L4_2 = A0_2._guide_row
  L4_2 = L4_2.MapEntranceID
  L5_2 = A0_2._mapping_info_id
  L2_2(L3_2, L4_2, L5_2)
end
L6_1._on_btn_track = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cost_item_2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cost_item_2_splash
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_unknown
  L1_2 = not L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_cost_layout
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_stamina
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._farm_row
  L3_2 = L3_2.StaminaCost
  L2_2 = L2_2 >= L3_2
  if L2_2 then
    L3_2 = L4_1.enough
    if L3_2 then
      goto lbl_33
    end
  end
  L3_2 = L4_1.lack
  ::lbl_33::
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_cost
  L5_2 = G
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColor
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L4_2.color = L5_2
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_cost_layout
  L4_2(L5_2)
end
L6_1._setup_stamina_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._farm_row
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_stamina_view
  L1_2(L2_2)
end
L6_1._on_stamina_changed = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L6_1.get_first_selected_object = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_in_control_tip_enable
  L3_2 = A0_2._binder
  L3_2 = L3_2.controls_tip
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_controller_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._enable_in_control = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L6_1._on_in_control_action_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L6_1._on_left_stick_button_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_controller_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L6_1._on_in_control_input_switch = L7_1
return L6_1
