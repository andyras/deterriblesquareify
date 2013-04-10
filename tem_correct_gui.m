function varargout = tem_correct_gui(varargin)
% TEM_CORRECT_GUI M-file for tem_correct_gui.fig
%      TEM_CORRECT_GUI, by itself, creates a new TEM_CORRECT_GUI or raises the existing
%      singleton*.
%
%      H = TEM_CORRECT_GUI returns the handle to a new TEM_CORRECT_GUI or the handle to
%      the existing singleton*.
%
%      TEM_CORRECT_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEM_CORRECT_GUI.M with the given input arguments.
%
%      TEM_CORRECT_GUI('Property','Value',...) creates a new TEM_CORRECT_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tem_correct_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tem_correct_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tem_correct_gui

% Last Modified by GUIDE v2.5 10-Dec-2011 01:01:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tem_correct_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @tem_correct_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before tem_correct_gui is made visible.
function tem_correct_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tem_correct_gui (see VARARGIN)

% Choose default command line output for tem_correct_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tem_correct_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tem_correct_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in load_inputFile.
function load_inputFile_Callback(hObject, eventdata, handles)
% hObject    handle to load_inputFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input_loaded = imread(get(handles.inputFileName,'String'));
image(input_loaded);
set(handles.outputFileName,'String',[handles.pathname 'corrected_' handles.filename_short]);
guidata(hObject,handles);


% --- Executes on button press in save_outputFile.
function save_outputFile_Callback(hObject, eventdata, handles)
% hObject    handle to save_outputFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imwrite(handles.outputImage,get(handles.outputFileName,'String'),'JPG');
guidata(hObject,handles);



function inputFileName_Callback(hObject, eventdata, handles)
% hObject    handle to inputFileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputFileName as text
%        str2double(get(hObject,'String')) returns contents of inputFileName as a double

%store the contents of the file name box as string
input = get(hObject,'String');

%checks to see if input is empty.  if so, default
if (isempty(input))
    set(hObject,'String','Input File Name.jpg');
end
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function inputFileName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputFileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q1_correct_Callback(hObject, eventdata, handles)
% hObject    handle to q1_correct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q1_correct as text
%        str2double(get(hObject,'String')) returns contents of q1_correct as a double
input = str2num(get(hObject,'String'));

if (isempty(input))
    set(hObject,'String','0');
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function q1_correct_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q1_correct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q2_correct_Callback(hObject, eventdata, handles)
% hObject    handle to q2_correct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q2_correct as text
%        str2double(get(hObject,'String')) returns contents of q2_correct as a double
input = str2num(get(hObject,'String'));

if (isempty(input))
    set(hObject,'String','0');
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function q2_correct_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q2_correct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q3_correct_Callback(hObject, eventdata, handles)
% hObject    handle to q3_correct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q3_correct as text
%        str2double(get(hObject,'String')) returns contents of q3_correct as a double
input = str2num(get(hObject,'String'));

if (isempty(input))
    set(hObject,'String','0');
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function q3_correct_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q3_correct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q4_correct_Callback(hObject, eventdata, handles)
% hObject    handle to q4_correct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q4_correct as text
%        str2double(get(hObject,'String')) returns contents of q4_correct as a double
input = str2num(get(hObject,'String'));

if (isempty(input))
    set(hObject,'String','0');
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function q4_correct_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q4_correct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outputFileName_Callback(hObject, eventdata, handles)
% hObject    handle to outputFileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outputFileName as text
%        str2double(get(hObject,'String')) returns contents of outputFileName as a double

%store the contents of the file name box as string
output = get(hObject,'String');

%checks to see if input is empty.  if so, default
if (isempty(output))
    set(hObject,'String','output.jpg');
end
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function outputFileName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outputFileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in apply_corrections.
function apply_corrections_Callback(hObject, eventdata, handles)
% hObject    handle to apply_corrections (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
q1 = get(handles.q1_correct,'String');
q2 = get(handles.q2_correct,'String');
q3 = get(handles.q3_correct,'String');
q4 = get(handles.q4_correct,'String');
inputFile = get(handles.inputFileName,'String');
inputImage = imread(inputFile);
outputImage = inputImage;
is = size(inputImage,1);
% handles images fine as long as they are square
outputImage(is/2+1:is,1:is/2,:) = inputImage(is/2+1:is,1:is/2,:) + str2num(q3);
outputImage(1:is/2,1:is/2,:) = inputImage(1:is/2,1:is/2,:) + str2num(q2);
outputImage(1:is/2,is/2+1:is,:) = inputImage(1:is/2,is/2+1:is,:) + str2num(q1);
outputImage(is/2+1:is,is/2+1:is,:) = inputImage(is/2+1:is,is/2+1:is,:) + str2num(q4);
image(outputImage);
handles.outputImage=outputImage;
guidata(hObject,handles);


% --- Executes on button press in browse.
function browse_Callback(hObject, eventdata, handles)
% hObject    handle to browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.jpg;*.JPG;*.jpeg;*.JPEG','JPEG format (*.jpg;*.JPG;*.jpeg;*.JPEG)';
    '*.tif;*.tiff;*.TIF;*.TIFF','TIFF format (*.tif;*.tiff;*.TIF;*.TIFF)';'*.*','All files (*.*)'},'Pick an image file...');
set(handles.inputFileName,'String',[pathname filename]);
handles.pathname = pathname;
handles.filename_short = filename;
set(handles.outputFileName,'String',[handles.pathname 'corrected_' handles.filename_short]);
guidata(hObject,handles);


% --- Executes on slider movement.
function q1_slider_Callback(hObject, eventdata, handles)
% hObject    handle to q1_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderValue = get(handles.q1_slider,'Value');
set(handles.q1_correct,'String',num2str(sliderValue));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function q1_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q1_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function q2_slider_Callback(hObject, eventdata, handles)
% hObject    handle to q2_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderValue = get(handles.q2_slider,'Value');
set(handles.q2_correct,'String',num2str(sliderValue));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function q2_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q2_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function q3_slider_Callback(hObject, eventdata, handles)
% hObject    handle to q3_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderValue = get(handles.q3_slider,'Value');
set(handles.q3_correct,'String',num2str(sliderValue));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function q3_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q3_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function q4_slider_Callback(hObject, eventdata, handles)
% hObject    handle to q4_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderValue = get(handles.q4_slider,'Value');
set(handles.q4_correct,'String',num2str(sliderValue));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function q4_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q4_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
