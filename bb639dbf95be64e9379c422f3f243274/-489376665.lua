local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.RelicSetSkillInfoPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ShopItemDetailDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Shop/ItemPurchaseDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/DialogBtnPanel/BtnCancel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_cancel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/DialogBtnPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/LeftPanel/BtnDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/DialogTitle/Left/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/DescPanel/ScrollView/Viewport/Content/ItemDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/DescPanel/ScrollView/Viewport/Content/ItemBgDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_bg_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/LeftPanel/BtnDetail/AvatarLightConePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_card = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DescPanel/ScrollView/Viewport/Content/TipsPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_card_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/DescPanel/ScrollView/Viewport/Content/TipsPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_card_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/LeftPanel/BtnDetail/AvatarLightConePanel/Mask/RarityBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_card_rarity = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/LeftPanel/BtnDetail/AvatarLightConePanel/AvatarIconPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_item_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/LeftPanel/BtnDetail/AvatarLightConePanel/AvatarIconPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_item_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/LeftPanel/BtnDetail/AvatarLightConePanel/Mask/RarityBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rarity_bg_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/LeftPanel/BtnDetail/AvatarLightConePanel/AvatarIconPanel/DamageTypePanel/ProfessionIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar_profession = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/LeftPanel/BtnDetail/AvatarLightConePanel/AvatarIconPanel/DamageTypePanel/DamageTypeIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar_damage_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/LeftPanel/BtnDetail/AvatarLightConePanel/LightConeIconPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_item_lightcone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/LeftPanel/BtnDetail/AvatarLightConePanel/LightConeIconPanel/LightConeIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_item_lightcone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DescPanel/ScrollView/Viewport/Content/TipsPanel/TypeIconPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lightcone_profession = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/DescPanel/ScrollView/Viewport/Content/TipsPanel/TypeIconPanel/ProfessionalType"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_lightcone_profession = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DescPanel/ScrollView/Viewport/Content/PhasePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lightcone_phase = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/DescPanel/ScrollView/Viewport/Content/PhasePanel/Phase/Level"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_lightcone_rank = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/DescPanel/ScrollView/Viewport/Content/PhasePanel/Phase/Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_lightcone_rank = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/DescPanel/ScrollView/Viewport/Content/PhasePanel/Tips/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_lightcone_rank_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicSetSkillInfoPanel
  L4_2 = G
  L4_2 = L4_2.RelicSetSkillInfoPanelBinder
  L5_2 = "Contents/DescPanel/ScrollView/Viewport/Content/RelicSetSkillInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.relic_set_panel = L1_2
  L1_2 = A0_2.relic_set_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/LeftPanel/BtnDetail/ItemPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_item_common = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/LeftPanel/BtnDetail/ItemPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_item_common = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/LeftPanel/BtnDetail/ItemPanel/Mask/RarityBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rarity_bg_common = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ExchangePanel/Slider/LeftText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_cur_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ExchangePanel/Slider/RightText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_max_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ExchangePanel/NumDescPanel/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_exchange_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ExchangePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_slider_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/ExchangePanel/ButtonMinus"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_minus = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/ExchangePanel/ButtonPlus"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_plus = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ExchangePanel/ButtonMinus/KeyMapInfoLeft"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.minus_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ExchangePanel/ButtonPlus/KeyMapInfoRight"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.plus_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ExchangePanel/NumDescPanel/NumDescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_buy_available = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/WarningTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.text_tips_node2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/WarningTip/TipPanel/TipText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/LevelTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.text_tips_node = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/LevelTip/TipPanel/TipText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tips_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/LevelTip/TipPanel/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tips_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ExchangePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_exchange_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "ResBarArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_res_bar_area = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/LeftPanel/BtnDetail/ItemPanel/Discount"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_discount = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DialogTitle/Right/ItemRemainTime"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_remain_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "Contents/DialogTitle/Right/ItemRemainTime/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Contents/DescPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/Base/PathsImg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_profession_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Base"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_profession_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._on_normal_bind
  L1_2(L2_2)
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ExchangePanel/AvailableNumPanel/DetailTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_detail_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ExchangePanel/AvailableNumPanel/Root"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_limit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ExchangePanel/AvailableNumPanel/Root/AvailableNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_limit_time_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ExchangePanel/AvailableNumPanel/Root/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_limit_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ExchangePanel/AvailableNumPanel/Root/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_limit_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ExchangePanel/AvailableNumPanel/Root/Slash"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_limit_splash = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/ExchangePanel/ConsumePanel/Cost1/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_price1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ExchangePanel/ConsumePanel/Cost1/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_price1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/ExchangePanel/ConsumePanel/Cost2/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_price2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ExchangePanel/ConsumePanel/Cost2/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_price2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ExchangePanel/ConsumePanel/Cost1"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_first_price = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ExchangePanel/ConsumePanel/Cost2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_second_price = L1_2
end
L0_1._on_normal_bind = L1_1
return L0_1
