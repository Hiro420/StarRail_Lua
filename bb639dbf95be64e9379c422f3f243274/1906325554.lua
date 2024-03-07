local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.AssetsPage.ActivityMonopolyAssetsPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.ActivityMonopolyUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyAssetsPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MonopolyModule
L2_1 = "5177"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyAssetsPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  A0_2._asset_data_item = A1_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyBuyAssetFinish
  L4_2 = A0_2._on_upgrade_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGiveUpCurEventSuccess
  L4_2 = A0_2._on_give_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_check_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_buy_btn_clicked
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._asset_data_item
  L3_2 = L3_2.IsOwnedByPlayer
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.resbar_cmpt
  L3_2 = "ActivityMonopolyMainPage"
  L4_2 = A0_2
  L5_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._res_bar_panel = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.bought_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._asset_data_item
  L3_2 = L3_2.IsOwnedByPlayer
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.exit_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._asset_data_item
  L3_2 = L3_2.IsOwnedByPlayer
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_check_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._asset_data_item
  L3_2 = L3_2.IsOwnedByPlayer
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = "UIText_ActivityMonopoly_AssetPage_Buy"
  L2_2 = A0_2._binder
  L2_2 = L2_2.confirm_btn_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyUtils
  L4_2 = L4_2.get_buy_asset_currency_display_data
  L5_2 = A0_2._asset_data_item
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.asset_figure
  L5_2 = A0_2._asset_data_item
  L5_2 = L5_2.FigurePath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.asset_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._asset_data_item
  L4_2 = L4_2.AssetName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.asset_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._asset_data_item
  L4_2 = L4_2.AssetDesc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._asset_data_item
  L2_2 = L2_2.IsOwnedByPlayer
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.profits_desc_txt
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityMonopoly_AssetPage_LevelDesc"
    L5_2 = A0_2._asset_data_item
    L5_2 = L5_2.DisplayData
    L5_2 = L5_2.TaxValue
    L6_2 = A0_2._asset_data_item
    L6_2 = L6_2.DisplayData
    L6_2 = L6_2.BonusValue
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.profits_desc_txt
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityMonopoly_AssetPage_BonusTips"
    L5_2 = A0_2._asset_data_item
    L5_2 = L5_2.DisplayData
    L5_2 = L5_2.BonusValue
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.give_up_btn_desc_txt
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityMonopoly_AssetPage_Confirm"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.max_level_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialTaskUnlock
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._asset_data_item
  L1_2 = L1_2.IsOwnedByPlayer
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.NIJNBICAPPA
    L3_2 = L3_2.ICLKLLCGIME
    L1_2(L2_2, L3_2)
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.SendMonopolyGiveUpCurContentCsReq
    L3_2 = A0_2._asset_data_item
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = "UIText_ActivityMonopoly_AssetPage_Leave_Buy"
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkCancelHint
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.show_full_screen_block_for_packet
      L3_3 = CS
      L3_3 = L3_3.NIJNBICAPPA
      L3_3 = L3_3.ICLKLLCGIME
      L1_3(L2_3, L3_3)
      L1_3 = L1_1
      L2_3 = L1_3
      L1_3 = L1_3.SendMonopolyGiveUpCurContentCsReq
      L3_3 = A0_2._asset_data_item
      L3_3 = L3_3.ID
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_exit_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.LOJKMNEBFCK
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendMonopolyUpgradeAssetCsReq
  L3_2 = A0_2._asset_data_item
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L0_1._on_buy_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = A0_2._asset_data_item
  L1_2 = L1_2.IsOwnedByPlayer
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.ActivityMonopoly.AssetsPage.ActivityMonopolyAssetsHintDialog"
    L3_2 = 1.5
    L4_2 = nil
    L5_2 = G
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = "UIText_ActivityMonopoly_AssetPage_BonusTips"
    L7_2 = A0_2._asset_data_item
    L7_2 = L7_2.DisplayData
    L7_2 = L7_2.BonusValue
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._on_give_up = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.AssetsPage.ActivityMonopolyAssetsHintDialog"
  L3_2 = 1.5
  L4_2 = "UIText_ActivityMonopoly_Event_Tips_UpgradeAsset"
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_upgrade_finish = L3_1
return L0_1
