function D=wjn_TMSi_import(filename,chans)

d = TMSi.Poly5.read(filename);

if exist('chans','var')
    for a  = 1:length(d.channels)
        chans{a} = d.channels{a}.name;
    end
end

nfname = strrep(strrep(filename(1:end-6),'.','_'),' ','_');
D=wjn_import_rawdata(nfname,d.samples,chans,d.sample_rate);
D=wjn_remove_channels(D.fullfile,{'SaO2','Pleth','HRate','Status','Saw'});
D=wjn_remove_bad_samples(D.fullfile,D.nsamples-D.fsample*2:D.nsamples);
D=wjn_filter(D.fullfile,2,'high');
D=wjn_filter(D.fullfile,[48 52],'stop');
D=wjn_filter(D.fullfile,98,'low');
% 
% D=wjn_tf_wavelet(D.fullfile,1:100,15);