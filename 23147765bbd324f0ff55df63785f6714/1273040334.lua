local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.RelicDetailSingleTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicDetailSingleTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.NetworkManager
L1_1 = L1_1.FFOMLPONIFB
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._relic = A3_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_takeoff
  L4_2 = A0_2._on_btn_takeoff
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_story
  L4_2 = A0_2._on_btn_story
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_discard_btn
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._relic
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.set_skill_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._relic
  L3_2 = L3_2.RelicRow
  L3_2 = L3_2.SetID
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_belongs_to
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.status_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._relic
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_bg_story
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._relic
  L3_2 = L3_2.BGDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._relic
  L3_2 = L3_2.RelicInfoRow
  L3_2 = L3_2.RelicName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_position
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.get_textid_by_type
  L4_2 = A0_2._relic
  L4_2 = L4_2.RelicRow
  L4_2 = L4_2.Type
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._relic
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
end
L0_1._setup_basic_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._relic
  L1_2 = L1_2.BelongAvatarID
  L1_2 = L1_2 ~= 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_takeoff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_belong_to
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._relic
  L2_2 = L2_2.BelongAvatarID
  if L2_2 ~= 0 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AvatarExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2._relic
    L3_2 = L3_2.BelongAvatarID
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_avatar
    L6_2 = L2_2.AvatarMiniIconPath
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = G
    L3_2 = L3_2.AvatarUtils
    L3_2 = L3_2.check_is_multi_hero_avatar
    L4_2 = A0_2._relic
    L4_2 = L4_2.BelongAvatarID
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.img_profession
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.AvatarBaseTypeExcelTable
      L3_2 = L3_2.GetData
      L4_2 = L2_2.AvatarBaseType
      L3_2 = L3_2(L4_2)
      L5_2 = A0_2
      L4_2 = A0_2._async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.img_profession
      L7_2 = L3_2.BaseTypeIcon
      L4_2(L5_2, L6_2, L7_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.img_profession
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._setup_belongs_to = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RelicUtils
  L1_2 = L1_2.do_take_off_relic
  L2_2 = A0_2._relic
  L2_2 = L2_2.BelongAvatarID
  L3_2 = A0_2._relic
  L3_2 = L3_2.RelicRow
  L3_2 = L3_2.Type
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_takeoff = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Relic.RelicBGStoryDialog"
  L3_2 = A0_2._relic
  L3_2 = L3_2.RelicInfoRow
  L3_2 = L3_2.BGStoryTitle
  L4_2 = A0_2._relic
  L4_2 = L4_2.RelicInfoRow
  L4_2 = L4_2.BGStoryContent
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_story = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L0_1._on_select = L2_1
return L0_1
