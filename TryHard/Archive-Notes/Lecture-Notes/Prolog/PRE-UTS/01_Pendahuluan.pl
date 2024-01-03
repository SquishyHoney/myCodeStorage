Pemograman Deklaratif : 
  - Terdiri dari FACT dan RULE dan pengambilan
    kesimpulan mengunakan DEDUKSI/INFERENSI (LOGIC)

Prolog Digunakan untuk :
  1. Komputasi Simbolik (No numbers)
  2. Pememecah masalah yang terkait dengan kondisi suatu object atau relasi sejumlah object
  3. Proses Reasoning yang banyak di terapkan di AI

Tidak Cocok untuk :
  1. Komputasi yang membutukan presisi Numberik tinggi
  2. Komputasi Probabilitas tinggi


-------------------------------------------------
link(a,h).
link(a,l).
link(h,t).
link(t,q).
link(t,z).

Routing Problem
koneksi(A,C):-link(A,C).
koneksi(A,C):-link(A,B),koneksi(B,C).

koneksi(A,C):-link(A,B),link(B,C).

?- koneksi(a,X).
X = h;
X = l;
X = t; %h
X = q; %t
X = z.

?- koneksi(X,z).
X = t; %?- koneksi(X,t).
X = a; %?- koneksi(a,X).
X = h; %t 
---------------------------------------------------

Prinsip Dasar Pemograman Prolog
  1. Susun FACT      |Set(a,b).
  2. Terapkan RULES  |RuleOne(a,b):-Set(a,b).
  3. Lakukan QUERIES |?- link(a,h).
  4. ANSWER
