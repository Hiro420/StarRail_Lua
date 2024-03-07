local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TickBox"
L0_1 = L0_1(L1_1)
L0_1.MAX_TIME = 1000000
function L1_1(A0_2)
  local L1_2
  A0_2._NowTime = 0
  L1_2 = {}
  A0_2._Tickers = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._Tickers
  L2_2 = #L2_2
  if L2_2 == 0 then
    return
  end
  L2_2 = A0_2._NowTime
  L2_2 = L2_2 + A1_2
  A0_2._NowTime = L2_2
  L2_2 = A0_2._NowTime
  L3_2 = L0_1.MAX_TIME
  if L2_2 >= L3_2 then
    L2_2 = A0_2._NowTime
    L3_2 = L0_1.MAX_TIME
    L2_2 = L2_2 - L3_2
    A0_2._NowTime = L2_2
    L2_2 = A0_2._Tickers
    L2_2 = #L2_2
    L3_2 = 1
    L4_2 = -1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._Tickers
      L6_2 = L6_2[L5_2]
      L7_2 = A0_2._Tickers
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.TargetTime
      L8_2 = L0_1.MAX_TIME
      L7_2 = L7_2 - L8_2
      L6_2.TargetTime = L7_2
    end
  end
  L2_2 = A0_2._Tickers
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._NowTime
    L7_2 = A0_2._Tickers
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.TargetTime
    if L6_2 >= L7_2 then
      L6_2 = A0_2._Tickers
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2.EndAction
      L8_2 = L7_2
      L8_2()
      L8_2 = L6_2.NeedRemove
      if L8_2 then
        L8_2 = table
        L8_2 = L8_2.remove
        L9_2 = A0_2._Tickers
        L10_2 = L5_2
        L8_2(L9_2, L10_2)
      else
        L8_2 = A0_2._NowTime
        L9_2 = L6_2.InvTime
        L8_2 = L8_2 + L9_2
        L6_2.TargetTime = L8_2
      end
    end
  end
end
L0_1.tick = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = {}
  L4_2.InvTime = A1_2
  L5_2 = A0_2._NowTime
  L5_2 = L5_2 + A1_2
  L4_2.TargetTime = L5_2
  L4_2.EndAction = A2_2
  L5_2 = not A3_2
  L4_2.NeedRemove = L5_2
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._Tickers
  L7_2 = A0_2._Tickers
  L7_2 = #L7_2
  L7_2 = L7_2 + 1
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.add_tick = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._Tickers
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._Tickers
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.EndAction
    if L6_2 == A1_2 then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = A0_2._Tickers
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.remove_tick = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L6_2 = A0_2
  L5_2 = A0_2.RemoveTickByName
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L5_2 = {}
  L5_2.Name = A1_2
  L5_2.InvTime = A2_2
  L6_2 = A0_2._NowTime
  L6_2 = L6_2 + A2_2
  L5_2.TargetTime = L6_2
  L5_2.EndAction = A3_2
  L6_2 = not A4_2
  L5_2.NeedRemove = L6_2
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = A0_2._Tickers
  L8_2 = A0_2._Tickers
  L8_2 = #L8_2
  L8_2 = L8_2 + 1
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
end
L0_1.AddTickByName = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._Tickers
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._Tickers
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.Name
    if L6_2 == A1_2 then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = A0_2._Tickers
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.RemoveTickByName = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._Tickers = L1_2
end
L0_1.Clear = L1_1
return L0_1
