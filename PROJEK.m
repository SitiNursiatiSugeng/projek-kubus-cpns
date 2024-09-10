function varargout = PROJEK(varargin)
% PROJEK M-file for PROJEK.fig
%      PROJEK, by itself, creates a new PROJEK or raises the existing
%      singleton*.
%
%      H = PROJEK returns the handle to a new PROJEK or the handle to
%      the existing singleton*.
%
%      PROJEK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJEK.M with the given input arguments.
%
%      PROJEK('Property','Value',...) creates a new PROJEK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PROJEK_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PROJEK_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PROJEK

% Last Modified by GUIDE v2.5 10-Sep-2024 11:05:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PROJEK_OpeningFcn, ...
                   'gui_OutputFcn',  @PROJEK_OutputFcn, ...
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


% --- Executes just before PROJEK is made visible.
function PROJEK_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PROJEK (see VARARGIN)

% Choose default command line output for PROJEK
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PROJEK wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PROJEK_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function sisi_Callback(hObject, eventdata, handles)
sisi=str2num(get(handles.sisi,'string'));
handles.sisi=sisi;
guidata(hObject,handles)
% hObject    handle to sisi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sisi as text
%        str2double(get(hObject,'String')) returns contents of sisi as a double


% --- Executes during object creation, after setting all properties.
function sisi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sisi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function volume_Callback(hObject, eventdata, handles)
% hObject    handle to volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of volume as text
%        str2double(get(hObject,'String')) returns contents of volume as a double


% --- Executes during object creation, after setting all properties.
function volume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function luas_Callback(hObject, eventdata, handles)
% hObject    handle to luas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of luas as text
%        str2double(get(hObject,'String')) returns contents of luas as a double


% --- Executes during object creation, after setting all properties.
function luas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to luas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
sisi=handles.sisi;
volume=sisi*sisi*sisi;
luas=6*sisi*sisi;
set(handles.volume,'string',volume);
set(handles.luas,'string',luas);
% hObject    handle to hitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in keluar.
function keluar_Callback(hObject, eventdata, handles)
close
% hObject    handle to keluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


