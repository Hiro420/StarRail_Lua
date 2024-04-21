local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.PunkLordUtils"
L0_1(L1_1)
L0_1 = "UIText_ActivityPunkLord_MazeInfo_DealDamage_Label"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PunkLordAttackInfoPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_player
  L4_2 = A1_2.Uid
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_damage
  L4_2 = A1_2.DamageHp
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_fade_in_ani
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_nickname
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = ""
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.PunkLordUtils
  L2_2 = L2_2.get_user_nickname_and_head_icon_id_promise
  L3_2 = A1_2
  L4_2 = A0_2._async_setup_name_and_player_photo
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._setup_player = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 ~= nil then
    L3_2 = A0_2._binder
    if L3_2 ~= nil then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  if A1_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_nickname
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_nickname
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = ""
    L3_2(L4_2, L5_2)
  end
  if A2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_player_photo
    L4_2 = L3_2
    L3_2 = L3_2.setup_view_by_id
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L1_1._async_setup_name_and_player_photo = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_attack_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L0_1
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._setup_damage = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._play_fade_in_ani = L2_1
return L1_1
