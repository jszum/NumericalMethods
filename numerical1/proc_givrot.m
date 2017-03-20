function [c, s, d ] = proc_givrot(a,b)

if(b==0)
  c = 1.0;
  s = 0.0'
  d = a;
  
elseif(abs(b)>abs(a))

  t = a/b;
  tt = sqrt(1 + t*t);
  s = 1/tt;
  c = t*s;
  d = tt*b;

else 
  t = b/a;
  tt = sqrt(1 + t*t);
  c = 1/tt;
  s = tc;
  d = tt*a;

endif

end