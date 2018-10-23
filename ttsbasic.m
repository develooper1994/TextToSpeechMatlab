function ttsbasic(String)
%UNTÝTLED9 Summary of this function goes here
%   Detailed explanation goes here
defaultString = 'Hello World!  MATLAB is an awesome program!';
if nargin<1
    String=defaultString;
end

if isempty(String)
	return;
end % Bail out if they clicked Cancel.
caUserInput = char(String); % Convert from cell to string.
NET.addAssembly('System.Speech');
obj = System.Speech.Synthesis.SpeechSynthesizer;
obj.Volume = 100;
Speak(obj, caUserInput);
end

