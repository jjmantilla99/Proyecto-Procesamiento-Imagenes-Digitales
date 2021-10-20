clear all
clc
Y1 = [];
l = 160; %Cantidad de imagenes del mismo paciente
for i = 1:l
    nom = ['1-' num2str(sprintf('%03d',i)) '.dcm'];
    info = dicominfo(nom);
    Ynew = dicomread(info);
    Ynew = Ynew(33:480,33:480);
    Ynew = reshape(Ynew,[],1);
    Y1 = [Y1, Ynew];
end
    
