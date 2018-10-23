%% cc
clear; clc;
%%
% defaultString = 'Hello World!  MATLAB is an awesome program!';
% if isempty(defaultString)
% 	return;
% end % Bail out if they clicked Cancel.
% caUserInput = char(defaultString); % Convert from cell to string.
% NET.addAssembly('System.Speech');
% obj = System.Speech.Synthesis.SpeechSynthesizer;
% obj.Volume = 100;
% Speak(obj, caUserInput);
%%
% Open the file.
fileID = fopen('test3.txt', 'rt');
% Read the first line of the file.
textLine = fgetl(fileID);
while ischar(textLine)
    ttsbasic(textLine);
    fprintf('%s\n', textLine);
    textLine = fgetl(fileID);
end
% All done reading all lines, so close the file.
fclose(fileID);


