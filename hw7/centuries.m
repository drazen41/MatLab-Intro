function cv=centuries(godina)
  if godina <= 0 || godina > 3000 || length(godina)>1 || floor(godina)~=godina
    cv = '';
    return
  end
  cent={'I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII', 'XIII','XIV','XV','XVI','XVII','XVIII','XIX', ...
    'XX','XXI','XXII','XXIII','XXIV', 'XXV','XXVI','XXVII','XXVIII','XXIX','XXX' };
  a = ceil(godina/100);
  cv = cent{a};
    