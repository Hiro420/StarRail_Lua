local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumCollectionDetailDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumCollectionDetailDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumAtlasCollectionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.avatar = 1
L1_1.item = 2
L2_1 = "UIText_Activity_Museum_Collection_Non"
L3_1 = "#383434FF"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.MuseumModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.MissionModule
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_NetworkManager
function L7_1(A0_2)
  local L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._callback = nil
  A0_2._callback_listener = nil
  A0_2._callback_param = nil
end
L0_1._on_dispose = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputDeviceClass
  L2_2 = L2_2.Controller
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_in_control_get_enabled
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_in_control_input_switch = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mission_goto
  L4_2 = A0_2._on_btn_track
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mission_tracking
  L4_2 = A0_2._on_btn_track
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_deselect
    L0_3(L1_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L1_1.avatar
  A0_2.collection_type = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_panel
  A0_2.collection_panel = L3_2
  A0_2.data = A1_2
  L3_2 = A1_2.MuseumStuffRow
  A0_2.stuff_row = L3_2
  L3_2 = A0_2.stuff_row
  A0_2.collection_row = L3_2
  L3_2 = A1_2.ItemRow
  A0_2.item_row = L3_2
  L3_2 = A0_2.item_row
  L3_2 = L3_2.ItemFigureIconPath
  A0_2.item_icon_path = L3_2
  A0_2.mission_data = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.setup_common_info
  L3_2(L4_2)
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
  L6_2 = A0_2.item_row
  L6_2 = L6_2.ID
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_avatar_collection_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MuseumCollectionItemStatus
  L2_2 = L2_2.Owned
  L1_2 = L1_2 == L2_2
  A0_2.owned = L1_2
  L1_2 = A0_2.collection_type
  L2_2 = L1_1.avatar
  L1_2 = L1_2 == L2_2
  A0_2.is_avatar = L1_2
  L1_2 = A0_2.mission_data
  L1_2 = A0_2.mission_data
  L1_2 = L1_2 ~= nil and L1_2
  A0_2.is_start = L1_2
  L1_2 = A0_2.mission_data
  L1_2 = L1_2 ~= nil
  A0_2.is_tracking = L1_2
  L1_2 = A0_2.collection_row
  L1_2 = L1_2.UnlockPhase
  L2_2 = L4_1.MuseumData
  L2_2 = L2_2.Level
  if L1_2 <= L2_2 then
    L1_2 = A0_2.is_start
    if L1_2 then
      goto lbl_50
    end
  end
  L1_2 = A0_2.owned
  ::lbl_50::
  A0_2.can_track = L1_2
  L1_2 = A0_2.collection_row
  L1_2 = L1_2.UnlockPhase
  L2_2 = L4_1.MuseumData
  L2_2 = L2_2.Level
  L1_2 = L1_2 <= L2_2
  A0_2.achieve_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_up_area
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_down_area
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_reward
  L1_2(L2_2)
  L1_2 = A0_2.can_track
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_empty_status
    L1_2(L2_2)
  else
    L1_2 = A0_2.owned
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_owned_status
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._setup_track_status
      L1_2(L2_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.set_in_control_get_enabled
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.setup_common_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_avatar
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_avatar
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.can_track
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1.setup_up_area = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_desc_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.can_track
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_get_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.owned
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_tracking
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_tracking
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_goto
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_start
  if L3_2 then
    L3_2 = A0_2.is_tracking
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.collection_panel
  L1_2 = L1_2.node_achieve
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.owned
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.collection_panel
  L1_2 = L1_2.node_track
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.owned
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.owned
  if not L1_2 then
    L1_2 = A0_2.is_start
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_name
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L2_1
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.setup_down_area = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.collection_row
  L1_2 = L1_2.CollectedReward
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTable
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  A0_2._reward_items = L2_2
  L2_2 = A0_2._reward_items
  L2_2 = #L2_2
  if L2_2 < 1 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._reward_items
  L3_2 = L3_2[1]
  L3_2 = L3_2.ItemID
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "Item not exists, config id: "
    L5_2 = tostring
    L6_2 = A0_2._reward_items
    L6_2 = L6_2[1]
    L6_2 = L6_2.ItemID
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_reward_icon
  L6_2 = L2_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_reward_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._reward_items
  L5_2 = L5_2[1]
  L5_2 = L5_2.Count
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_available_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2.data
  L5_2 = L5_2.TakenCollectReward
  L5_2 = not L5_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = A0_2.owned
  L5_2 = A0_2.data
  L5_2 = L5_2.TakenCollectReward
  L5_2 = not L5_2 or L5_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.owned
  if L1_2 then
    L1_2 = A0_2.data
    L1_2 = L1_2.TakenCollectReward
    if not L1_2 then
      L1_2 = L6_1
      L2_2 = L1_2
      L1_2 = L1_2.NHOABNICPJB
      L3_2 = A0_2.data
      L3_2 = L3_2.ID
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if L1_2 then
      return
    else
      L1_2 = A0_2._reward_items
      if L1_2 then
        L1_2 = A0_2._reward_items
        L1_2 = #L1_2
        if 0 < L1_2 then
          L1_2 = {}
          L2_2 = {}
          L3_2 = A0_2._reward_items
          L3_2 = L3_2[1]
          L3_2 = L3_2.ItemID
          L2_2[1] = L3_2
          L1_2.items = L2_2
          L2_2 = G
          L2_2 = L2_2.InventoryUtils
          L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
          L3_2 = L1_2
          L2_2(L3_2)
        end
      end
    end
  end
end
L0_1._on_btn_reward = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L1_1.item
  A0_2.collection_type = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_panel
  A0_2.collection_panel = L3_2
  A0_2.data = A1_2
  L3_2 = A1_2.ItemRow
  A0_2.item_row = L3_2
  L3_2 = A1_2.MuseumItemRow
  A0_2.museum_item_row = L3_2
  L3_2 = A0_2.museum_item_row
  A0_2.collection_row = L3_2
  L3_2 = A0_2.item_row
  L3_2 = L3_2.ItemIconPath
  A0_2.item_icon_path = L3_2
  A0_2.mission_data = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.setup_common_info
  L3_2(L4_2)
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
  L6_2 = A0_2.item_row
  L6_2 = L6_2.ID
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_item_collection_view = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_index
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_index = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2.collection_panel
  L3_2 = L3_2.img_achieve
  L4_2 = A0_2.item_icon_path
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.item_row
  L3_2 = L3_2.ItemName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.is_avatar
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.museum_item_row
    L3_2 = L3_2.MuseumItemDesc
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.image_rarity_back
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetColor
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_get_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityMuseum_AtlasRewardGot"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_get_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityMuseum_AtlasStuffGot"
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.InventoryModule
    L1_2 = L1_2.GetItemRarityConfig
    L2_2 = A0_2.item_row
    L2_2 = L2_2.Rarity
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.LineItemRarityColor
    L3_2 = A0_2._binder
    L3_2 = L3_2.image_rarity_back
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetColor
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_owned_status = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2.collection_panel
  L3_2 = L3_2.img_track
  L4_2 = A0_2.item_icon_path
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.image_rarity_back
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetColor
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.achieve_level
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityMuseum_AtlasItemAreaTip"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.data
    L1_2 = L1_2.MissionID
    L2_2 = L1_2 ~= 0
    if L2_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_ModuleManager
      L3_2 = L3_2.MissionModule
      L4_2 = L3_2
      L3_2 = L3_2.GetMainMissionRow
      L5_2 = A0_2.data
      L5_2 = L5_2.MissionID
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_desc
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = A0_2.data
      L6_2 = L6_2.EvidenceInfoTextID
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = L3_2.Name
      L7_2, L8_2 = L7_2(L8_2)
      L4_2(L5_2, L6_2, L7_2, L8_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = A0_2.data
      L5_2 = L5_2.EvidenceInfoTextID
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._setup_empty_status = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2.collection_panel
  L3_2 = L3_2.img_track
  L4_2 = A0_2.item_icon_path
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.image_rarity_back
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetColor
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.item_row
  L3_2 = L3_2.ItemName
  L1_2(L2_2, L3_2)
end
L0_1._setup_track_status = L7_1
function L7_1(A0_2, A1_2)
  A0_2._button_interactable = A1_2
end
L0_1.set_button_interactable = L7_1
function L7_1(A0_2, A1_2, A2_2, ...)
  local L3_2
  A0_2._callback = A1_2
  A0_2._callback_listener = A2_2
  L3_2 = (...)
  A0_2._callback_param = L3_2
end
L0_1.register_track_callback = L7_1
function L7_1(A0_2, A1_2, A2_2, ...)
  local L3_2
  A0_2._on_select_callback = A1_2
  A0_2._on_select_listener = A2_2
  L3_2 = (...)
  A0_2._on_select_param = L3_2
end
L0_1.register_select_callback = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 ~= nil then
    L2_2 = A0_2._binder
    if L2_2 ~= nil then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_move
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_available_keymap
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2.data
    L4_2 = L4_2.TakenCollectReward
    L4_2 = not L4_2 and L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_get_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.data
  L4_2 = L4_2.TakenCollectReward
  if L4_2 then
    L4_2 = A0_2.owned
    if L4_2 then
      goto lbl_35
    end
  end
  L4_2 = not A1_2
  ::lbl_35::
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_keymap_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2.data
    L4_2 = L4_2.TakenCollectReward
    L4_2 = not L4_2 and L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_get
  L3_2 = A1_2 or L3_2
  if A1_2 then
    L3_2 = A0_2.data
    L3_2 = L3_2.TakenCollectReward
    L3_2 = not L3_2 and L3_2
  end
  L2_2.ActionEnabled = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_goto
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_track
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_keymap_btn_goto
  L2_2.IsShowTipBySelected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_keymap_btn_track
  L2_2.IsShowTipBySelected = A1_2
end
L0_1.set_in_control_get_enabled = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Museum.MuseumCollectionDetailDialog"
  L3_2 = A0_2.data
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    L2_2 = A0_2._callback_listener
    L3_2 = A0_2._callback_param
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_track = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_select_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._on_select_callback
    L2_2 = A0_2._on_select_listener
    L3_2 = A0_2._on_select_param
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_in_control_get_enabled
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_in_control_get_enabled
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_deselect = L7_1
return L0_1
