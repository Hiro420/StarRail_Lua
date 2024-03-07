local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyQuestIconPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._take_callback = A1_2
  A0_2._take_handler = A2_2
end
L1_1.register_take_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._available_callback = A1_2
  A0_2._available_handler = A2_2
end
L1_1.register_available_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._quest_id = A1_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.RewardID
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateRewardItemTableSorted
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = {}
  end
  A0_2._reward_items = L4_2
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateConfigIDList
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = {}
  end
  A0_2._config_id_list = L4_2
  L4_2 = L2_2.Status
  L5_2 = CS
  L5_2 = L5_2.BLHLCHNAJKK
  L5_2 = L5_2.CDJHHIHBNMN
  L4_2 = L4_2 == L5_2
  A0_2._is_available = L4_2
  L4_2 = L2_2.Status
  L5_2 = CS
  L5_2 = L5_2.BLHLCHNAJKK
  L5_2 = L5_2.FMLBEGJJHMJ
  L4_2 = L4_2 == L5_2
  A0_2._is_taken = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_view
  L4_2(L5_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._quest_id = nil
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateRewardItemTableSorted
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = {}
  end
  A0_2._reward_items = L4_2
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateConfigIDList
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = {}
  end
  A0_2._config_id_list = L4_2
  A0_2._is_available = A2_2
  A0_2._is_taken = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_view
  L4_2(L5_2)
end
L1_1.setup_view_by_reward = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.bind_reddot
    L4_2 = "ActivityMonopolyProgressReward"
    L5_2 = A1_2
    L6_2 = A0_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_reddot
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.bind_reddot
    L4_2 = "ActivityMonopolyMBTIReward"
    L5_2 = nil
    L6_2 = A0_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_reddot
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L1_1.set_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_taken
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_taken
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_available
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_available
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._reward_items
  L1_2 = L1_2[1]
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_count
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_count
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = L1_2.Count
    L2_2(L3_2, L4_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.ItemID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_icon
  L6_2 = L2_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_rarity_frame
  if L3_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.InventoryModule
    L3_2 = L3_2.GetItemRarityConfig
    L4_2 = L2_2.Rarity
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_rarity_frame
    L7_2 = L3_2.FrameItemRarityPath
    L4_2(L5_2, L6_2, L7_2)
  end
end
L1_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_available
  if L1_2 then
    L1_2 = A0_2._available_callback
    if L1_2 ~= nil then
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.invoke_callback
      L2_2 = A0_2._available_callback
      L3_2 = A0_2._available_handler
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._quest_id
      if L1_2 ~= nil then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.GlobalVars
        L1_2 = L1_2.s_NetworkManager
        L2_2 = L1_2
        L1_2 = L1_2.AMFNHGKACLB
        L3_2 = A0_2._quest_id
        L1_2(L2_2, L3_2)
      else
        L1_2 = G
        L1_2 = L1_2.Utils
        L1_2 = L1_2.invoke_callback
        L2_2 = A0_2._take_callback
        L3_2 = A0_2._take_handler
        L1_2(L2_2, L3_2)
      end
    end
  else
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
L1_1._on_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.IsSelectedByController
  return L1_2
end
L1_1.is_selected_by_controller = L2_1
return L1_1
