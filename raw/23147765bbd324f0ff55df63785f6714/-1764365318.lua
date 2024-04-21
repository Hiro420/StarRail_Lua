local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Shop.WorldShop.WorldShopRewardDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WorldShopScoreBoardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ShopModule
L1_1 = L1_1.Instance
L2_1 = 2
L3_1 = "WorldShopLevelUp"
L4_1 = "WorldShopProgress"
L5_1 = 20
L6_1 = 1.0E-10
function L7_1(A0_2, A1_2)
  local L2_2
  A0_2._shop_id = A1_2
  L2_2 = {}
  A0_2._reward_row_cache = L2_2
  A0_2._tick_percent = 0
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.CityShopConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._shop_id
  L1_2 = L1_2(L2_2)
  A0_2._city_shop_row = L1_2
  L1_2 = A0_2._city_shop_row
  L1_2 = L1_2.RewardListGroupID
  A0_2._reward_group_id = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_reward_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive
  L4_2 = A0_2._on_receive_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_rewrad_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_show_reward_dialog
  L4_2 = A0_2._on_left_stick_button_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = typeof
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonoPerformanceUITransfer
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = L1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L5_2 = ""
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._mono_ticker = L2_2
  L2_2 = A0_2._mono_ticker
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.ComponentExtensions
    L2_2 = L2_2.SafeAddCmpt
    L3_2 = L1_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.root
    L5_2 = ""
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._mono_ticker = L2_2
  end
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_world
  L4_2 = A0_2._city_shop_row
  L4_2 = L4_2.WorldImgPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.WorldDataConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._city_shop_row
  L2_2 = L2_2.WorldID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "Unkown WorldID: %d"
    L4_2 = A0_2._city_shop_row
    L4_2 = L4_2.WorldID
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_world_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.WorldName
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cur_percent
  if L2_2 == nil then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.get_shop_by_id
    L4_2 = A0_2._shop_id
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2.CityLevel
    L4_2 = A0_2._city_shop_row
    L4_2 = L4_2.MaxLevel
    L3_2 = L3_2 == L4_2
    L4_2 = L2_2.CityExp
    L5_2 = A0_2._reward_row
    L5_2 = L5_2.ItemNeed
    L4_2 = L4_2 / L5_2
    if L3_2 then
      L4_2 = 1.0
    end
    if 1.0 < L4_2 then
      L5_2 = 1.0
      if L5_2 then
        goto lbl_62
      end
    end
    L5_2 = L4_2
    ::lbl_62::
    A0_2._cur_percent = L5_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.progress_smooth_mask
    L6_2 = A0_2._cur_percent
    L5_2.fillAmount = L6_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.refresh
  L2_2(L3_2)
end
L0_1.init_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._reward_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._reward_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_left_stick_button_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.get_shop_by_id
  L3_2 = A0_2._shop_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._shop = L1_2
  L3_2 = A0_2
  L2_2 = A0_2._get_reward_row
  L4_2 = A0_2._shop
  L4_2 = L4_2.CityLevel
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._reward_row = L2_2
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.Log
    L3_2 = "Shop Message Not Found."
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._city_level
  if L2_2 then
    L2_2 = L1_2.CityLevel
    L3_2 = A0_2._city_level
    if L2_2 > L3_2 then
      A0_2._level_up = true
  end
  else
    L2_2 = A0_2._city_exp
    if L2_2 then
      L2_2 = A0_2._city_exp
      L3_2 = L1_2.CityExp
      if L2_2 ~= L3_2 then
        A0_2._progress = true
    end
    else
      L3_2 = A0_2
      L2_2 = A0_2._refresh
      L2_2(L3_2)
      return
    end
  end
  L2_2 = A0_2._cur_percent
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._compute_percent
  L2_2(L3_2)
  L2_2 = A0_2._mono_ticker
  L3_2 = L2_2
  L2_2 = L2_2.SetTickCallback
  L4_2 = A0_2._mono_tick
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.get_shop_by_id
  L3_2 = A0_2._shop_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.CityLevel
  L3_2 = A0_2._city_shop_row
  L3_2 = L3_2.MaxLevel
  L2_2 = L2_2 == L3_2
  L3_2 = L1_2.CityExp
  L4_2 = A0_2._reward_row
  L4_2 = L4_2.ItemNeed
  L3_2 = L3_2 / L4_2
  if L2_2 then
    L3_2 = 1.0
  end
  if 1.0 < L3_2 then
    L4_2 = 1.0
    if L4_2 then
      goto lbl_25
    end
  end
  L4_2 = L3_2
  ::lbl_25::
  A0_2._target_percent = L4_2
  L4_2 = A0_2._target_percent
  L5_2 = A0_2._cur_percent
  L4_2 = L4_2 - L5_2
  L5_2 = L6_1
  if L4_2 <= L5_2 then
    L5_2 = A0_2._target_percent
    L5_2 = L5_2 + 1.0
    A0_2._target_percent = L5_2
    A0_2._target_percent_add = true
    L4_2 = L4_2 + 1.0
  else
    A0_2._target_percent_add = false
  end
  L5_2 = L6_1
  if L4_2 > L5_2 then
    L5_2 = L5_1
    L5_2 = L4_2 / L5_2
    A0_2._tick_percent = L5_2
  else
    A0_2._tick_percent = 0
  end
end
L0_1._compute_percent = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.get_shop_by_id
  L3_2 = A0_2._shop_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._shop = L1_2
  L2_2 = L1_2.CityLevel
  A0_2._city_level = L2_2
  L2_2 = L1_2.CityExp
  A0_2._city_exp = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.CityLevel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._city_level
  if L2_2 == 1 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_cur_count
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = L1_2.CityExp
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._get_reward_row
    L4_2 = A0_2._city_level
    L4_2 = L4_2 - 1
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_cur_count
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L1_2.CityExp
    L6_2 = L2_2.TotalItem
    L5_2 = L5_2 + L6_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.get_min_display_reward_level
  L4_2 = A0_2._shop_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._min_display_reward_level = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_reward_row
  L4_2 = A0_2._min_display_reward_level
  L4_2 = L4_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_reward_rank
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_CityShop_Hint"
    L6_2 = L2_2.TotalItem
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L9_2 = A0_2
    L8_2 = A0_2._get_currency_textid
    L8_2, L9_2 = L8_2(L9_2)
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_all_available_reward_level
  L3_2 = L3_2(L4_2)
  L4_2 = #L3_2
  L4_2 = L4_2 == 0
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_receive
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_all_receive
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_reward_panel
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_receive
  L6_2 = A0_2._min_display_reward_level
  L7_2 = A0_2._shop
  L7_2 = L7_2.CityLevel
  L6_2 = L6_2 <= L7_2
  L5_2.interactable = L6_2
  L6_2 = A0_2
  L5_2 = A0_2._init_reward_list
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_reward_ids
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.reward_list_view
  L6_2 = L5_2
  L5_2 = L5_2.SetListItemCount
  L7_2 = A0_2._reward_list
  L7_2 = #L7_2
  if 4 < L7_2 then
    L7_2 = 4
    if L7_2 then
      goto lbl_111
    end
  end
  L7_2 = A0_2._reward_list
  L7_2 = #L7_2
  ::lbl_111::
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.reward_list_view
  L6_2 = L5_2
  L5_2 = L5_2.RefreshAllShownItem
  L5_2(L6_2)
end
L0_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._shop
  L1_2 = L1_2.CityTakenLevelReward
  L2_2 = A0_2._shop
  L2_2 = L2_2.CityLevel
  L3_2 = {}
  L4_2 = 0
  while L4_2 < 2 do
    L4_2 = L4_2 + 1
    L1_2 = L1_2 // 2
  end
  while L2_2 >= L4_2 do
    L5_2 = L1_2 % 2
    if L5_2 == 0 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = L3_2
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
    L4_2 = L4_2 + 1
    L1_2 = L1_2 // 2
  end
  return L3_2
end
L0_1._get_all_available_reward_level = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._min_display_reward_level
    if L0_3 == nil then
      return
    else
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.NetworkManager
      L0_3 = L0_3.FFOMLPONIFB
      L1_3 = L0_3
      L0_3 = L0_3.FBODOAEDLHB
      L2_3 = A0_2._shop_id
      L3_3 = A0_2._min_display_reward_level
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_receive_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_reward_row
  L3_2 = A0_2._min_display_reward_level
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  A0_2._reward_list = L2_2
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.CreateRewardItemTableSorted
    L3_2 = L1_2.RewardID
    L2_2 = L2_2(L3_2)
    A0_2._reward_list = L2_2
  end
end
L0_1._init_reward_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._reward_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._reward_ids
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_reward_ids = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
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
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ItemID
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count
  L7_2 = A0_2._reward_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.Count
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_reward_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = G
  L2_2 = L2_2.WorldShopRewardDialog
  L3_2 = A0_2._shop_id
  L4_2 = A0_2._city_shop_row
  L4_2 = L4_2.MaxLevel
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_rewrad_btn = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 0
  L3_2 = L2_1
  L4_2 = A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2._get_reward_row
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L7_2 = L7_2.ItemNeed
    L2_2 = L2_2 + L7_2
  end
  return L2_2
end
L0_1._get_level_total_need = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._reward_row_cache
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L2_2 = A0_2._reward_row_cache
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.CityShopRewardListExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._reward_group_id
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2[A1_2] = L3_2
  end
  L2_2 = A0_2._reward_row_cache
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1._get_reward_row = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.TopPage
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.ChildDialogs
  if L2_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UIManager
    L3_2 = L2_2
    L2_2 = L2_2.TopPage
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.ChildDialogs
    L2_2 = L2_2.Count
    if L2_2 ~= 0 then
      L2_2 = A0_2._ticking
      if not L2_2 then
        goto lbl_116
      end
    end
  end
  A0_2._ticking = true
  L2_2 = A0_2._level_up
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_level_up
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
    A0_2._level_up = false
  else
    L2_2 = A0_2._progress
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._refresh
      L2_2(L3_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator_level_up
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = L4_1
      L2_2(L3_2, L4_2)
      A0_2._progress = false
    end
  end
  L2_2 = A0_2._cur_percent
  L3_2 = A0_2._tick_percent
  L2_2 = L2_2 + L3_2
  A0_2._cur_percent = L2_2
  L2_2 = math
  L2_2 = L2_2.abs
  L3_2 = A0_2._target_percent
  L4_2 = A0_2._cur_percent
  L3_2 = L3_2 - L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._tick_percent
  L4_2 = L6_1
  L3_2 = L3_2 + L4_2
  if L2_2 <= L3_2 then
    L2_2 = A0_2._target_percent_add
    if L2_2 then
      L2_2 = A0_2._target_percent
      L2_2 = L2_2 - 1
      if L2_2 then
        goto lbl_72
      end
    end
    L2_2 = A0_2._target_percent
    ::lbl_72::
    A0_2._target_percent = L2_2
    L2_2 = A0_2._target_percent
    A0_2._cur_percent = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.progress_smooth_mask
    L3_2 = A0_2._target_percent
    L2_2.fillAmount = L3_2
    L2_2 = A0_2._mono_ticker
    L3_2 = L2_2
    L2_2 = L2_2.ClearTickCallback
    L2_2(L3_2)
    A0_2._ticking = false
    return
  end
  L2_2 = nil
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = A0_2._target_percent
  L4_2 = L4_2 - 1
  L3_2 = L3_2(L4_2)
  L4_2 = L6_1
  if L3_2 < L4_2 then
    L3_2 = A0_2._target_percent_add
    if not L3_2 then
      L3_2 = A0_2._cur_percent
      if 1 < L3_2 then
        L3_2 = A0_2._cur_percent
        L3_2 = L3_2 - 1
        if L3_2 then
          goto lbl_104
          L2_2 = L3_2 or L2_2
        end
      end
      L2_2 = A0_2._cur_percent
      ::lbl_104::
  end
  else
    L3_2 = A0_2._cur_percent
    if 1 <= L3_2 then
      L3_2 = A0_2._cur_percent
      L3_2 = L3_2 - 1
      if L3_2 then
        goto lbl_113
        L2_2 = L3_2 or L2_2
      end
    end
    L2_2 = A0_2._cur_percent
  end
  ::lbl_113::
  L3_2 = A0_2._binder
  L3_2 = L3_2.progress_smooth_mask
  L3_2.fillAmount = L2_2
  ::lbl_116::
end
L0_1._mono_tick = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ResourceOverallExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._shop
  L2_2 = L2_2.ShopBar
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.CurrencyIDList
    L2_2 = L2_2[0]
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.InventoryModule
    L3_2 = L3_2.GetItemRow
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.ItemName
    return L3_2
  end
end
L0_1._get_currency_textid = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mono_ticker
  L2_2 = L1_2
  L1_2 = L1_2.ClearTickCallback
  L1_2(L2_2)
end
L0_1._on_unload = L7_1
return L0_1
