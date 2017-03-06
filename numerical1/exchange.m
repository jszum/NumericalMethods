function [M] = exchange (M, row1, row2)
  temp = M(row1,:);
  M(row1,:) = M(row2,:);
  M(row2,:) = temp;
end