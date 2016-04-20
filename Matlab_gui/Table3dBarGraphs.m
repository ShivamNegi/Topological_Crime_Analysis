function varargout = Table3dBarGraphs(varargin)
% TABLE3DBARGRAPHS MATLAB code for Table3dBarGraphs.fig
%      TABLE3DBARGRAPHS, by itself, creates a new TABLE3DBARGRAPHS or raises the existing
%      singleton*.
%
%      H = TABLE3DBARGRAPHS returns the handle to a new TABLE3DBARGRAPHS or the handle to
%      the existing singleton*.
%
%      TABLE3DBARGRAPHS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TABLE3DBARGRAPHS.M with the given input arguments.
%
%      TABLE3DBARGRAPHS('Property','Value',...) creates a new TABLE3DBARGRAPHS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Table3dBarGraphs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Table3dBarGraphs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Table3dBarGraphs

% Last Modified by GUIDE v2.5 20-Apr-2016 10:31:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Table3dBarGraphs_OpeningFcn, ...
                   'gui_OutputFcn',  @Table3dBarGraphs_OutputFcn, ...
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


% --- Executes just before Table3dBarGraphs is made visible.
function Table3dBarGraphs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Table3dBarGraphs (see VARARGIN)

% Choose default command line output for Table3dBarGraphs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Table3dBarGraphs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Table3dBarGraphs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
run('bars3d.m');
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
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
