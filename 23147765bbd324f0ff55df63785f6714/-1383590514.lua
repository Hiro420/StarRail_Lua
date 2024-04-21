local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonAvatarSelectTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2
  A0_2._is_trial = A1_2
  if A1_2 then
    L2_2 = "UIText_TreasureDungeon_Prepare_TrialAvatar"
    if L2_2 then
      goto lbl_8
    end
  end
  L2_2 = "UIText_TreasureDungeon_Prepare_Avatar"
  ::lbl_8::
  A0_2._title = L2_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_trial
  return L1_2
end
L0_1.get_is_trial = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._title
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._title
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L1_1
return L0_1
