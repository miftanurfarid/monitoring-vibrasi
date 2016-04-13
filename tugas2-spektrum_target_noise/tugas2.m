% tugas2.m
%
% Performansi spektrogram menampilkan spektrum data getaran pompa terhadap
% kenaikan tingkat tekanan bunyi dari noise (white noise, pink noise, brown
% noise dan blue noise)
%
% 13/04/2016 03:31:10 PM
% mifta nur farid, miftanurfarid@gmail.com
% https://github.com/miftanurfarid/
%
% Teknik Fisika - Institut Teknologi Sepuluh Nopember
%
close all;
clear all;
clc;

load p1-unbalance.lvm          

% kolom 1 = waktu
axi     = p1_unbalance(:,2);   % kolom 2 = axial
hor     = p1_unbalance(:,3);   % kolom 3 = horizontal
vert    = p1_unbalance(:,4);   % kolom 4 = vertical

fs = 25600;     % frekuensi sampling 25600 Hz

