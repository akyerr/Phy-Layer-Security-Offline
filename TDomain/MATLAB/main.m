clc
clear 
close all

dbstop if error

profile.bandwidth = 960e3;
profile.bin_spacing = 15e3;
profile.num_ant = 2;
profile.bit_codebook = 1;
profile.synch_data_pattern = [2, 1];
profile.channel_test_case = 0;

% if you multiple profiles, start a loop here
pls_params = PLSParameters(profile);
codebook = pls_params.codebook_gen();