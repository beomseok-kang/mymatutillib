function [ld,lH,H,tauR,ell,U0,DT,DR] = parse_params(filename)
    fileContent = fileread(filename);
    ld = str2double(regexp(fileContent, '(?<=ld=)\d+(\.\d+)?', 'match'));
    lH = str2double(regexp(fileContent, '(?<=lH=)\d+(\.\d+)?', 'match'));
    H = str2double(regexp(fileContent, '(?<=\nH=)\d+(\.\d+)?', 'match'));
    tauR = str2double(regexp(fileContent, '(?<=tauR=)\d+(\.\d+)?', 'match'));

    ell = lH*H; % run length
    U0 = lH*H/tauR; % swim speed
    DT = ell^2/(ld^2*tauR); % translational diffusivity
    DR = 1.0/tauR; % rotational diffusivity
end