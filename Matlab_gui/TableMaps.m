function varargout = TableMaps(varargin)
% TABLEMAPS MATLAB code for TableMaps.fig
%      TABLEMAPS, by itself, creates a new TABLEMAPS or raises the existing
%      singleton*.
%
%      H = TABLEMAPS returns the handle to a new TABLEMAPS or the handle to
%      the existing singleton*.
%
%      TABLEMAPS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TABLEMAPS.M with the given input arguments.
%
%      TABLEMAPS('Property','Value',...) creates a new TABLEMAPS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TableMaps_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TableMaps_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TableMaps

% Last Modified by GUIDE v2.5 22-Apr-2016 00:22:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TableMaps_OpeningFcn, ...
                   'gui_OutputFcn',  @TableMaps_OutputFcn, ...
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


% --- Executes just before TableMaps is made visible.
function TableMaps_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TableMaps (see VARARGIN)

% Choose default command line output for TableMaps
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TableMaps wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TableMaps_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
clf('reset');
close;
run('CrimeCountMaps.m');
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
clf('reset');
close;
run('LiteracyPercentageMaps.m');
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
clf('reset');
close;
run('PoliceStrengthMaps.m');
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
clf('reset');
close;
openfig('Mainmenu.fig');
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
I=imread('/home/negi/Documents/Topological_Crime_Analysis/Matlab_gui/crumpled_map_of_india.jpg');
hi = imagesc(I);
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
