function varargout = TableBarGraphs(varargin)
% TABLEBARGRAPHS MATLAB code for TableBarGraphs.fig
%      TABLEBARGRAPHS, by itself, creates a new TABLEBARGRAPHS or raises the existing
%      singleton*.
%
%      H = TABLEBARGRAPHS returns the handle to a new TABLEBARGRAPHS or the handle to
%      the existing singleton*.
%
%      TABLEBARGRAPHS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TABLEBARGRAPHS.M with the given input arguments.
%
%      TABLEBARGRAPHS('Property','Value',...) creates a new TABLEBARGRAPHS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TableBarGraphs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TableBarGraphs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TableBarGraphs

% Last Modified by GUIDE v2.5 21-Apr-2016 17:25:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TableBarGraphs_OpeningFcn, ...
                   'gui_OutputFcn',  @TableBarGraphs_OutputFcn, ...
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


% --- Executes just before TableBarGraphs is made visible.
function TableBarGraphs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TableBarGraphs (see VARARGIN)

% Choose default command line output for TableBarGraphs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TableBarGraphs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TableBarGraphs_OutputFcn(hObject, eventdata, handles) 
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
%openfig('CrimeBarGraphs.fig');
run('CrimeBarGraphs.m');
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
system('python readpopulationxls.py');
clf('reset');
close;
run('PopulationBarGraphs.m');
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
system('python readliteracyxls.py');
clf('reset');
close;
run('LiteracyBarGraphs.m');
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
system('python readpolicexls.py');
clf('reset');
close;
run('PoliceBarGraphs.m');
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
I=imread('/home/negi/Documents/Topological_Crime_Analysis/Matlab_gui/crumpled_map_of_india.jpg');
hi = imagesc(I)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes4
